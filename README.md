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
<hr/>

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
### liquibase rollback

To opt an rollback scenario, follow the below steps:

> Make sure you have `rollback` tag which is pointing to the right rollback sql script

Example
```yaml
databaseChangeLog:
- changeSet:
    id: create_table_accounts
    author: dbmigrator
    sqlFile: 
      path: ./schema/01_table_accounts_UP.sql
      relativeToChangelogFile: true
    rollback:
      sqlFile: 
        path: ./schema/01_table_accounts_DOWN.sql
```

and Follow the command in sequence

> Make sure, For each change tag the migration 
```sh
liquibase validate
liquibase update
liquibase tag --tag=01
```
For the 2nd change follow the same sequence of command:

```sh
2488  liquibase validate
 2489  liquibase update
 2490  liquibase tag --tag=02
```
Now If you want to rollback the 2nd run, use this command

```sh
liquibase rollback --tag=01
```
This command will make sure to rollback what ever after `tag=01`