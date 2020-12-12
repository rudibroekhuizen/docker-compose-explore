#!/bin/bash
set -euo pipefail

echo -e "\n--\n+> Load Kibana dashboard"
curl -X POST "localhost:5601/api/saved_objects/_import" -H 'kbn-xsrf: true' --form file=@kibana/explore.ndjson
