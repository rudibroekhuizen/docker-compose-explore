#/bin/bash
set -e

wget -P /tmp https://api.gbif.org/v1/occurrence/download/request/0107080-200613084148143.zip
unzip /tmp/0107080-200613084148143.zip -d /tmp
