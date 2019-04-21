#!/bin/bash -e

# pg env variable:
export PGHOST=${DB_HOST}
export PGPORT=${DB_PORT}
export PGDATABASE=${DB_NAME}
export PGUSER=${DB_USERNAME}
export PGPASSWORD=${DB_PASSWORD}

sql-migrate up -env=${ENV}

backend-demo
