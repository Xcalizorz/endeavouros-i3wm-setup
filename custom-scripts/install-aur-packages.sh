#!/bin/bash
#
set -euxo pipefail

# Install AUR packages
## Install timeshift
yay -S timeshift-bin

systemctl enable cronie
systemctl start cronie