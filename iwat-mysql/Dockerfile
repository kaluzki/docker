FROM kaluzki/mysql
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

RUN service mysql start && sleep 10s && \
    echo "CREATE USER 'ixuser'@'%' IDENTIFIED BY 'ixuser';\n\
          GRANT ALL ON *.* TO 'ixuser'@'%' WITH GRANT OPTION;\n\
          GRANT ALL PRIVILEGES ON  \`ixuser\_%\` . * TO  'ixuser'@'%';\n\
          FLUSH PRIVILEGES;" | mysql -uroot -proot && \
    service mysql stop

VOLUME ["/var/lib/mysql"]