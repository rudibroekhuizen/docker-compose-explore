# Explore a GBIF dataset


## How to use
Clone this repo:
```
git clone https://github.com/rudibroekhuizen/docker-compose-explore.git
```

Start the containers:
```
docker-compose up -d
```

Browse to http://localhost:3000/dashboards in your browser to use the Grafana dashboard.


When all containers are up:
```
./sync_to_elasticsearch.sh
```


Import Kibana dashboard:
```
./load_kibana_dashboard.sh
```

Browse to http://localhost:5601 in your browser to use the Kibana dashboard.
