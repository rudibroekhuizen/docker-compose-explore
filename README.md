# Explore a GBIF dataset


## How to use
Clone this repo:
```
git clone https://github.com/rudibroekhuizen/docker-compose-explore.git
```



#### Use Grafana dashboard
```
docker-compose up -d postgres grafana
```
Browse to http://localhost:3000/dashboards in your browser.




#### Use Grafana and Kibana 

Set ADVERTISED_HOST_NAME var to your local IP in .env.

Start containers:
```
docker-compose up -d 
```

When all containers are up:
```
./start.sh
```

Browse to http://localhost:5601 in your browser.
