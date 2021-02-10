#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    GRANT ALL PRIVILEGES ON DATABASE ea TO eauser;
EOSQL

#psql ---username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -a -f /home/production/Tea/import_project/create_tea_schema.sql
