#/bin/bash
echo "Running backup_data_from_replica"
docker exec -it postgres_primary_01 pg_basebackup --pgdata=/tmp/replicator_data_03 -R --slot=replica_slot_3 --host=127.0.0.1 --port=5432 -U replicator
