#/bin/bash
set -e

wget -P /tmp https://api.gbif.org/v1/occurrence/download/request/0266669-200613084148143.zip
unzip /tmp/0266669-200613084148143.zip -d /tmp

# Remove headerline from occurence.txt
tail -n +2 /tmp/occurrence.txt > /tmp/gbif_raw.tsv

# Remove rows with incorrect values
sed -i -e 215166d /tmp/gbif_raw.tsv
sed -i -e 955221d /tmp/gbif_raw.tsv
sed -i -e 1449592d /tmp/gbif_raw.tsv
sed -i -e 1578092d /tmp/gbif_raw.tsv
sed -i -e 2041117d /tmp/gbif_raw.tsv
sed -i -e 2090923d /tmp/gbif_raw.tsv
sed -i -e 2274063d /tmp/gbif_raw.tsv
sed -i -e 2948274d /tmp/gbif_raw.tsv
sed -i -e 2964065d /tmp/gbif_raw.tsv
sed -i -e 3216290d /tmp/gbif_raw.tsv
sed -i -e 3406478d /tmp/gbif_raw.tsv
sed -i -e 3852303d /tmp/gbif_raw.tsv
sed -i -e 4216860d /tmp/gbif_raw.tsv
sed -i -e 4223270d /tmp/gbif_raw.tsv
sed -i -e 4361782d /tmp/gbif_raw.tsv
sed -i -e 4459671d /tmp/gbif_raw.tsv
sed -i -e 4476781d /tmp/gbif_raw.tsv
sed -i -e 4517094d /tmp/gbif_raw.tsv
sed -i -e 4778815d /tmp/gbif_raw.tsv

# Remove headerline from multimedia.txt
tail -n +2 /tmp/multimedia.txt > /tmp/multimedia_raw.tsv
