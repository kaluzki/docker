FROM phusion/baseimage
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN cd /tmp && \
   curl -L -O https://github.com/wnameless/docker-oracle-xe-11g/raw/master/assets/oracle-xe_11.2.0-1.0_amd64.debaa  && \
   curl -L -O https://github.com/wnameless/docker-oracle-xe-11g/raw/master/assets/oracle-xe_11.2.0-1.0_amd64.debab  && \
   curl -L -O https://github.com/wnameless/docker-oracle-xe-11g/raw/master/assets/oracle-xe_11.2.0-1.0_amd64.debac  && \
   cat oracle-xe_11.2.0-1.0_amd64.deba* > oracle-xe_11.2.0-1.0_amd64.deb && \
   apt-get update && \
   apt-get install -y bc libaio1 && \
   ln -s /usr/bin/awk /bin/awk && \
   mkdir /var/lock/subsys && \

   echo "#!/bin/bash" > /sbin/chkconfig && \
   echo "file=/etc/init.d/oracle-xe" >> /sbin/chkconfig && \
   echo "if [[ ! \`tail -n1 $file | grep INIT\` ]]; then" >> /sbin/chkconfig && \
   echo "echo >> \$file" >> /sbin/chkconfig && \
   echo "echo '### BEGIN INIT INFO'" >> /sbin/chkconfig && \
   echo "echo '# Provides: OracleXE'" >> /sbin/chkconfig && \
   echo "echo '# Required-Start: \$remote_fs \$syslog' >> \$file" >> /sbin/chkconfig && \
   echo "echo '# Required-Stop: \$remote_fs \$syslog' >> \$file" >> /sbin/chkconfig && \
   echo "echo '# Default-Start: 2 3 4 5' >> \$file" >> /sbin/chkconfig && \
   echo "echo '# Default-Stop: 0 1 6' >> \$file" >> /sbin/chkconfig && \
   echo "echo '# Short-Description: Oracle 11g Express Edition' >> \$file" >> /sbin/chkconfig && \
   echo "echo '### END INIT INFO' >> \$file" >> /sbin/chkconfig && \
   echo "fi" >> /sbin/chkconfig && \
   echo "update-rc.d oracle-xe defaults 80 01" >> /sbin/chkconfig && \

   chmod 755 /sbin/chkconfig && \
   dpkg --install /tmp/oracle-xe_11.2.0-1.0_amd64.deb && \

   sed -e '/memory_target/ s/^#*/#/' -i /u01/app/oracle/product/11.2.0/xe/config/scripts/init.ora && \
   echo "pga_aggregate_target=192m" >> /u01/app/oracle/product/11.2.0/xe/config/scripts/init.ora && \
   echo "sga_target=573m" >> /u01/app/oracle/product/11.2.0/xe/config/scripts/init.ora && \

   sed -e '/memory_target/ s/^#*/#/' -i /u01/app/oracle/product/11.2.0/xe/config/scripts/initXETemp.ora && \
   echo "pga_aggregate_target=192m" >> /u01/app/oracle/product/11.2.0/xe/config/scripts/initXETemp.ora && \
   echo "sga_target=573m" >> /u01/app/oracle/product/11.2.0/xe/config/scripts/initXETemp.ora && \

   printf \\n\\nmanager\\nmanager\\nn\\n | /etc/init.d/oracle-xe configure && \

   apt-get remove -y bc && \
   apt-get autoremove -y && \
   apt-get clean && \
   rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo 'export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe' >> /etc/bash.bashrc && \
    echo 'export PATH=$ORACLE_HOME/bin:$PATH' >> /etc/bash.bashrc && \
    echo 'export ORACLE_SID=XE' >> /etc/bash.bashrc && \
    echo "#!/bin/bash" > /etc/my_init.d/01_config_oracle.sh && \
    echo 'sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora' >> /etc/my_init.d/01_config_oracle.sh && \
    chmod +x /etc/my_init.d/01_config_oracle.sh

EXPOSE 1521
EXPOSE 8080