FROM mdillon/postgis:9.4
MAINTAINER Hans Kristian Flaatten <hans.kristian.flaatten@turistforeningen.no>

ENV PGROUTING_MAJOR 2.1
ENV PGROUTING_VERSION 2.1.0-ppa1~vivid1
COPY ./pgrouting.list /etc/apt/sources.list.d/pgrouting.list

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 26568B05B65ADE33 && \
    apt-get update && \
    apt-get install  -y --no-install-recommends \
      postgresql-$PG_MAJOR-pgrouting=$PGROUTING_VERSION

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-pgrouting.sh /docker-entrypoint-initdb.d/routing.sh
