# Docker recipes

### CLI docker helpers

```sh
# start bash on the current container 
$ docker exec -ti $(docker ps -q) bash -l
# stop current container
$ docker stop $(docker ps -q)
```