FROM mdillon/postgis:9.6
MAINTAINER Hans Kristian Flaatten <hans@starefossen.com>

ENV PGROUTING_MAJOR 2.3

RUN apt-get update && \
    apt-get install -y  \
    postgresql-9.6-pgrouting  && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-pgrouting.sh /docker-entrypoint-initdb.d/routing.sh
