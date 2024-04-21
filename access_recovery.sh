#!/bin/bash

chown root:root /mnt/var /mnt/var/* && chown root:staff /mnt/var/local && chown root:mail /mnt/var/mail -R
find /mnt/var -type d -exec chmod 755 {} ';' && find /mnt/var -type f -exec chmod 644 {} ';'

#chmod 755 /mnt/var/cw/systeam/.openssh && chmod 644 /mnt/var/cw/systeam/.openssh/authorized_keys
