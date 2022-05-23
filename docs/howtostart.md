### 1) Setup MongoDB

- [Instalation](https://docs.mongodb.com/manual/installation/)

### 2) Configure it for the the router config

- [Configuration](https://www.mongodb.com/docs/manual/tutorial/configure-scram-client-authentication/)

```bash
> mongosh
> use admin
> db.createUser({ user: "admin", pwd: <strong password>, roles: [{ role: "userAdminAnyDatabase", db: "admin" }, { role: "readWriteAnyDatabase", db: "admin" }]})
> db.adminCommand({ shutdown: 1 })
> exit
> systemctl start mongod.service
```

> problem with mongo access to necessary files: https://stackoverflow.com/questions/60309575/mongodb-service-failed-with-result-exit-code

### 3) Update `config.toml`

```toml
[Server.MongoDB]
DBURL = ... # usually it is a local way: "localhost:27017"
# data below from the command above: db.createUser(...)
DBName = "admin"
UserName = # username from db.createUser
Password = # pass also from there
```

### 4) Start

`./swaprouter --datadir ./ --config config.toml --configchain <Chain ID> --configaddress <Address of the Config contract> --privatekey <pivate key> --runserver`
