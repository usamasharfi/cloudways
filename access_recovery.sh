#!/bin/bash

chown root:root /mnt/var /mnt/var/* && chown root:staff /mnt/var/local && chown root:mail /mnt/var/mail && find /mnt/var -type d -exec chmod 755 {} ';' && find /mnt/var -type f -exec chmod 644 {} ';'
chmod 750 /mnt/var/cw/systeam/.openssh && chmod 640 /mnt/var/cw/systeam/.openssh/authorized_keys
