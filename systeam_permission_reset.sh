#!/bin/bash

chown root:root /var /var/* && chown root:staff /var/local && chown root:mail /var/mail && find /var -type d -exec chmod 755 {} ';' && find /var -type f -exec chmod 644 {} ';'

chown systeam:systeam /var/cw/systeam -R && chown ansible:ansible /var/cw/ansible -R && chown platformops:platformops /var/cw/platformops -R

chmod 750 /var/cw/systeam/.openssh && chmod 640 /var/cw/systeam/.openssh/authorized_keys

