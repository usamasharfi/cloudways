#!/bin/bash

#####Fix Ownerships######

#fix ownership of /var/cw folders
chown systeam:systeam /var/cw/systeam -R && chown ansible:ansible /var/cw/ansible -R && chown platformops:platformops /var/cw/platformops -R

#fix ownership of /var/lib folders
chown mysql:mysql /var/lib/mysql -R && chown root:root /var/lib/mysql/debian-10.5.flag && chown ntp:ntp /var/lib/ntp -R && chown postfix:postfix /var/lib/postfix -R && chown redis:redis /var/lib/redis -R && chown shellinabox:shellinabox /var/lib/shellinabox -R && chown vnstat:vnstat /var/lib/vnstat -R

#fix ownership of /var/log folders
chown root:adm /var/log/* 


#####Fix Permissions######
chmod 600 /var/mail/* /var/cw/ansible/.ssh/authorized_keys 
chmod 640 /var/cw/platformops/.openssh/authorized_keys /var/cw/systeam/.openssh/authorized_keys
chmod 700 /var/tmp/sys* /var/cw/ansible/.ssh /var/cw/ansible/.ansible/tmp /var/cw/scripts/bash/* /var/cw/scripts/python/* /var/cw/stats/sensu /var/lib/private
chmod 750 /var/cw/platformops/.openssh /var/cw/systeam/.openssh /var/lib/shorewall 
chmod 775 /var/local /var/mail
chmod 777 /var/tmp
