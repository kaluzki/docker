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
 * docker-compose 1.4.2
 * registry: 2.1.1
  * ```sh curl http://localhost:5000/v2/_catalog```
 * tonistiigi/dnsdock 1.10.0
  * ```sh curl http://dnsdock.docker/services```

```sh
# build box
guest@system:$ VBoxManage list runningvms
guest@system:$ vagrant package --base github_default_id

# prepare and login
guest@system:$ vagrant plugin install vagrant-vbguest
guest@system:$ vagrant up
guest@system:$ vagrant ssh

# go to the sync folder
vagrant@box:$ cd /vagrant

# pull from the local registry and tag as remote repository
vagrant@box:$ docker pull localhost:5000/<receipt>
vagrant@box:$ docker tag localhost:5000/<receipt> kaluzki/<receipt>

# build
vagrant@box:$ docker build -t kaluzki/<receipt> <receipt>

# tag and push into the local registry
vagrant@box:$ docker tag kaluzki/<receipt> localhost:5000/<receipt>
vagrant@box:$ docker push localhost:5000/<receipt>
```

### CLI docker helpers

```sh
# start bash on the current container 
$ docker exec -ti $(docker ps -q) bash -l
# stop current container
$ docker stop $(docker ps -q)
```