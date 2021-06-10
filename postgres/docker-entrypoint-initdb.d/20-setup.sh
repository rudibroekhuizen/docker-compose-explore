#/bin/bash
set -e

wget -P /tmp https://api.gbif.org/v1/occurrence/download/request/0107080-200613084148143.zip
unzip /tmp/0107080-200613084148143.zip -d /tmp

# Remove headerline from occurence.txt
tail -n +2 /tmp/occurrence.txt > /tmp/gbif_raw.tsv
