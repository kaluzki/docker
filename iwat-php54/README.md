# kaluzki/iwat-php54

```sh
# build
$ docker build -t kaluzki/iwat-php54 iwat-php54

# run
$ docker run -p 80:80 -p 10081:10081 --volumes-from interexa -v $(pwd)/app:/app kaluzki/iwat-php54 /usr/sbin/apache2ctl -D FOREGROUND
```