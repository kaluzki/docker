# kaluzki/iwat-volume

```sh
# build
$ docker build -t kaluzki/iwat-volume iwat-volume

# create
$ docker create -v /interexa --name interexa kaluzki/iwat-volume /bin/true

# remove
$ docker rm interexa
```