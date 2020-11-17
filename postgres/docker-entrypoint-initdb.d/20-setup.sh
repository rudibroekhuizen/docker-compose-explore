#/bin/bash
set -e

wget -P /tmp https://api.gbif.org/v1/occurrence/download/request/0107080-200613084148143.zip
unzip /tmp/0107080-200613084148143.zip -d /tmp

awk 'NR==1{$0=tolower($0)} 1' /tmp/occurrence.txt > /tmp/occurrence.tsv

tail -n +2 /tmp/occurrence.tsv > /tmp/gbif_raw.tsv
