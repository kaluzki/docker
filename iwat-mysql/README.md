# kaluzki/iwat-mysql

```sh
# build
$ docker build -t kaluzki/iwat-mysql iwat-mysql

# remove data volume 'mysql' 
$ docker rm mysql

# create data volume 'mysql' 
$ docker create --name mysql kaluzki/iwat-mysql /bin/true

# run
$ docker run -p 3306:3306 kaluzki/iwat-mysql mysqld
```