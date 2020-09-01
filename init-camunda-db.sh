#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER camunda_owner;
    CREATE DATABASE camunda;
    GRANT ALL PRIVILEGES ON DATABASE camunda TO camunda_owner;
EOSQL