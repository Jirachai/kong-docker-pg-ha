#/bin/bash
echo "Copy backup date from pg to current directory"
docker cp postgres_primary_01:/tmp/replicator_data_03 .
