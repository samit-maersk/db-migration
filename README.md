# db-migration

### flyway

```shell
#show the status
flyway info -validateMigrationNaming=true

#repair
flyway repair

#run migration
flyway migrate

#delete all
flyway clean
```

### liquibase

```shell
#validate the config with sql grammer
liquibase validate

#show changelog history
liquibase history

#update
liquibase update

#drop all
liquibase drop-all
```