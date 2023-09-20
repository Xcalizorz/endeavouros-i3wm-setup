#!/bin/bash
#
set -euxo pipefail

sudo pacman -Sy --needed --noconfirm - < custom-scripts/pkgsway.list

yay -S --removemake --cleanafter --norebuild --noredownload --noconfirm \
    way-displays
