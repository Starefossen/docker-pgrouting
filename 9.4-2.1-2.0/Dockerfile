FROM mdillon/postgis:9.4
MAINTAINER Hans Kristian Flaatten <hans.kristian.flaatten@turistforeningen.no>

ENV PGROUTING_MAJOR 2.0
ENV PGROUTING_VERSION 2.0.0-3

RUN apt-get update && \
    apt-get install  -y --no-install-recommends \
      postgresql-$PG_MAJOR-pgrouting=$PGROUTING_VERSION

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-pgrouting.sh /docker-entrypoint-initdb.d/routing.sh
