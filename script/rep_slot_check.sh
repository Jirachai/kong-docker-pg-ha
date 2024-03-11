#!/bin/sh
docker exec -it postgres_primary psql postgres://user:password@localhost:5432/postgres -xc 'select * from pg_replication_slots;'
