# Sync PostgreSQL with Elasticsearch via Debezium

### Based on:
- https://github.com/YegorZaremba/sync-postgresql-with-elasticsearch-example
- https://github.com/yildirimabdullah/debezium-connect-demo
- https://debezium.io/blog/2018/01/17/streaming-to-elasticsearch/
- https://debezium.io/blog/2020/02/25/lessons-learned-running-debezium-with-postgresql-on-rds/

### Schema

```mermaid
graph LR;
    A(PostgreSQL) --> B(Kafka Connect) --> C(Elasticsearch);
```

We are using Docker Compose to deploy the following components:

* PostgreSQL
* Kafka
  * ZooKeeper
  * Kafka Broker
  * Kafka Connect with [Debezium](http://debezium.io/) and [Elasticsearch](https://github.com/confluentinc/kafka-connect-elasticsearch) Connectors
* Elasticsearch

### Usage
Copy .env.template to .env:
```
cp .env.template .env
```
Set ADVERTISED_HOST_NAME var to your local IP in .env.

Start containers:
```
docker-compose up -d
```

When containers are all up:
```
./start.sh
```

### Testing

##### Check database's content

```shell
# Check contents of the PostgreSQL database:
docker-compose exec postgres bash -c 'psql -U $POSTGRES_USER $POSTGRES_DB -c "SELECT * FROM users"'

# Check contents of the Elasticsearch database:
curl http://localhost:9200/debezium.public.users/_search?pretty
```

##### Create user

```
docker-compose exec postgres bash -c 'psql -U $POSTGRES_USER $POSTGRES_DB'
```
```sql
test_db=# INSERT INTO users (email) VALUES ('apple@gmail.com');
```

##### Check contents of the Elasticsearch database:
```
curl http://localhost:9200/debezium.public.users/_search?q=id:6
```

```json
{
  ...
  "hits": {
    "total": 1,
    "max_score": 1.0,
    "hits": [
      {
        "_index": "users",
        "_type": "_doc",
        "_id": "6",
        "_score": 1.0,
        "_source": {
          "id": 6,
          "email": "apple@gmail.com"
        }
      }
    ]
  }
}
```

##### Update user

```sql
test_db=# UPDATE users SET email = 'tesla@gmail.com' WHERE id = 6;
```

##### Check contents of the Elasticsearch database:
```
curl http://localhost:9200/debezium.public.users/_search?q=id:6
```

```json
{
  ...
  "hits": {
    "total": 1,
    "max_score": 1.0,
    "hits": [
      {
        "_index": "users",
        "_type": "_doc",
        "_id": "6",
        "_score": 1.0,
        "_source": {
          "id": 6,
          "email": "tesla@gmail.com"
        }
      }
    ]
  }
}
```

##### Delete user

```sql
test_db=# DELETE FROM users WHERE id = 6;
```

##### Check contents of the Elasticsearch database:
```
curl http://localhost:9200/debezium.public.users/_search?q=id:6
```

```json
{
  ...
  "hits": {
    "total": 1,
    "max_score": 1.0,
    "hits": []
  }
}
```

# Monitoring

### Kafka

##### Show topics
```
docker-compose exec kafka bash -c '/kafka/bin/kafka-topics.sh --list --bootstrap-server $ADVERTISED_HOST_NAME:9092'
```

##### Describe topic
```
docker-compose exec kafka bash -c '/kafka/bin/kafka-topics.sh --bootstrap-server $ADVERTISED_HOST_NAME:9092 --describe --topic debezium.public.users'
```

##### Show messages
```
docker-compose exec kafka bash -c '/kafka/bin/kafka-console-consumer.sh --bootstrap-server $ADVERTISED_HOST_NAME:9092 --from-beginning --topic debezium.public.users'
```

##### Show consumers
```
docker-compose exec kafka bash -c '/kafka/bin/kafka-consumer-groups.sh  --list --bootstrap-server $ADVERTISED_HOST_NAME:9092'
```

### Kafka Connect
##### Show connectors
```
curl -H "Accept:application/json" localhost:8083/connectors | jq
curl -H "Accept:application/json" localhost:8083/connectors/es-sink-users | jq
curl -H "Accept:application/json" localhost:8083/connectors/test_db-connector | jq
```

##### Show connector status
```
curl -H "Accept:application/json" localhost:8083/connectors/es-sink-users/status | jq
curl -H "Accept:application/json" localhost:8083/connectors/test_db-connector/status | jq
```

### Zookeeper
##### Show status
```
docker-compose exec zookeeper bash -c '/zookeeper/bin/zkServer.sh status'
```


### PostgreSQL

##### Show replication slots
```
docker-compose exec postgres bash -c 'psql -U $POSTGRES_USER $POSTGRES_DB -c "SELECT * FROM pg_replication_slots"'
```

##### Show replication status
```
docker-compose exec postgres bash -c 'psql -U $POSTGRES_USER $POSTGRES_DB -c "SELECT * FROM pg_stat_replication"'
```