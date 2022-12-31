#!/bin/bash
#
set -euxo pipefail

# Install AUR packages
## Install timeshift
yay -S timeshift-bin

sudo systemctl enable cronie
sudo systemctl start cronie