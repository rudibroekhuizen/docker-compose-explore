echo -e "\n--\n+> Setup Kibana Dashboard"
curl -X POST "localhost:5601/api/saved_objects/_import" -H "kbn-xsrf: true" --form file=@/scripts/export.json
