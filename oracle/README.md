# kaluzki/oracle

* oracle-xe-11g

```sh
# build
$ docker build -t kaluzki/oracle oracle

# remove data volume 'oracle' 
$ docker rm oracle

# create data volume 'oracle' 
$ docker create --name oracle kaluzki/oracle /bin/true

```