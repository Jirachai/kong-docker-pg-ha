#!/bin/sh
docker exec -it postgres_replica psql postgres://user:password@localhost:5432/postgres
