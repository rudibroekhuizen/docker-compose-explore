# Explore a GBIF dataset


### Usage
Clone this repo:
```
git clone https://github.com/rudibroekhuizen/docker-compose-explore.git
```

Copy .env.template to .env:
```
cp .env.template .env
```

##### Use Grafana dashboard
```
docker-compose up -d postgres grafana
```

##### Use Grafana and Kibana 

Set ADVERTISED_HOST_NAME var to your local IP in .env.

Start containers:
```
docker-compose up -d 
```

When all containers are up:
```
./start.sh
```
