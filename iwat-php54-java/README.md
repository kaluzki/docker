# kaluzki/iwat-php54-java

```sh
# build
$ docker build -t kaluzki/iwat-php54-java iwat-php54-java

# run
$ docker run --volumes-from interexa -v $(pwd)/app:/app kaluzki/iwat-php54-java
$ docker run -p 80:80 -p 10081:10081 --volumes-from interexa -v $(pwd)/app:/app kaluzki/iwat-php54-java /usr/sbin/apache2ctl -D FOREGROUND
$ setuser www-data php xml/iwat/tools/preparedeployment.php
```