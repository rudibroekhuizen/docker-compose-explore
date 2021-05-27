FROM postgis/postgis:13-master

RUN curl https://install.citusdata.com/community/deb.sh | bash

RUN apt-get update && \
apt-get install -y sudo wget unzip postgresql-13-hll postgresql-13-topn
