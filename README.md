# go-migrate-sample
[mattes/migrate](https://github.com/mattes/migrate) practice

## install

```
$ curl -L https://github.com/mattes/migrate/releases/download/v3.0.1/migrate.linux-amd64.tar.gz | tr xvz
$ sudo mv migrate.linux-amd64 /usr/local/bin/migrate
```

## Usage
- https://github.com/mattes/migrate/tree/master/cli

run mysql(docker)
```
./mysql.sh
```

migrate

```
$ migrate -database 'mysql://root:my-secret-pw@tcp(127.0.0.1:3306)' -path ./sql up
```

version

```
$ migrate -database 'mysql://root:my-secret-pw@tcp(127.0.0.1:3306)' -path ./sql version
```

show data

```
$ docker exec some-mysql mysql -uroot -pmy-secret-pw -e 'select * from dbname.PERSON;'
```

show migrate data

```
$ docker exec some-mysql mysql -uroot -pmy-secret-pw -e 'select * from dbname.schema_migrations;'
```

clean mysql(docker)

```
$ docker rm -f some-mysql
```
