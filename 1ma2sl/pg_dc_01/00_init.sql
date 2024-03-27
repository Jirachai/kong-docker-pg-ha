create user replicator with replication encrypted password 'replicator_password';
select pg_create_physical_replication_slot('replication_slot');
select pg_create_physical_replication_slot('replica_slot_2');
select pg_create_physical_replication_slot('replica_slot_3');
