# kaluzki/mysql

* MySQL

```sh
# build
$ docker build -t kaluzki/mysql mysql

# remove data volume 'mysql' 
$ docker rm mysql

# create data volume 'mysql' 
$ docker create --name mysql kaluzki/mysql /bin/true

# run
$ docker run -p 3306:3306 --volumes-from mysql kaluzki/mysql mysqld
```