FROM postgis/postgis:13-master

# Packages
RUN apt-get update && \
apt-get install -y sudo wget unzip postgresql-13-hll ca-certificates

# TopN
RUN curl https://install.citusdata.com/community/deb.sh | bash
RUN apt update
RUN apt-get -y install postgresql-13-topn
