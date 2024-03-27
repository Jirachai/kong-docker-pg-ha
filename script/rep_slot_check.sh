#!/bin/sh
docker exec -it kong-database_primary psql postgres://kong:kong@localhost:5432/postgres -xc 'select * from pg_replication_slots;'
