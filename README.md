# Automated docker builds

 

## Base recipes

 * php54
 * mysql
 * oracle

## Recipes for iwat applications

 * iwat-php54
 * iwat-mysql
 * iwat-volume
 * iwat-app

## Run development environment with Vagrant

 * docker 1.8.2
 * registry: 2.1.1
 * tonistiigi/dnsdock 1.10.0

```sh
# prepare
$ vagrant plugin install vagrant-vbguest
$ vagrant up
```

### CLI docker helpers

```sh
# start bash on the current container 
$ docker exec -ti $(docker ps -q) bash -l
# stop current container
$ docker stop $(docker ps -q)
```