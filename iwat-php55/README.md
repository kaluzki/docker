# kaluzki/iwat-php55

```sh
# build
$ docker build -t kaluzki/iwat-php55 iwat-php55

# run
$ docker run -p 80:80 -p 10081:10081 --volumes-from interexa -v $(pwd)/iwat-app:/app kaluzki/iwat-php55 /usr/sbin/apache2ctl -D FOREGROUND
```