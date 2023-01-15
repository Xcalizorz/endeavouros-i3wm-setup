#!/bin/bash
#
set -euxo pipefail

# Install AUR packages
yay -S --removemake --cleanafter --norebuild --noredownload \
    timeshift-bin \
    code-features-insiders
    
## Setup timeshift
sudo systemctl enable cronie
sudo systemctl start cronie

# create empty cronfiles, otherwise 'crontab -l' will fail in timeshift
sudo touch /var/spool/cron/$USER
sudo touch /var/spool/cron/root

sudo mkdir /etc/crontab
