#!/bin/sh
POSTGRES="gosu postgres postgres"

$POSTGRES --single postgres -E <<EOSQL
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
CREATE EXTENSION pgrouting;
EOSQL

