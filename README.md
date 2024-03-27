# kong-docker-pg-ha
for deploy kong-docker with postgres DB HA 

# Kong-database 
  use postgres HA (primary/replica)
  deployment 
  for deploy 1 primary 3 slave need to follow step below

     1. Up primary and add user for replica 
        access sh to container 
        - create user replicator with replication encrypted password 'replicator_password';
        - select pg_create_physical_replication_slot('replication_slot');
          add more replication slot (replication_slot_01, replication_slot_02, replication_slot_03)
        - check replication slot status "docker exec -it kong-database_primary psql postgres://kong:kong@localhost:5432/postgres -xc 'select * from pg_replication_slots;'"

     2. Backup date from primary via use script /script/pg_backup.sh 
     3. copy backup data from pg backup to datapath of replica 
     4. Edit postgres.auto.con chang ip address of master detail 
     5. At replica create directory for pg data and chang permission that directory to 0070
     6. Up replica container and check rep status
