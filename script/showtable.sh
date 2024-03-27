#!/bin/sh
docker exec -it postgres_replica psql postgres://kong:kong@localhost:5432/postgres -xc '\dt'
