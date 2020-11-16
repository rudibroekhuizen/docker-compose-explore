# create indices with mappings
curl -i -X PUT -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:9200/users -d @mappings/users.json

# setup connections
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @connectors/psql_connector.json
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @connectors/es_connector.json
