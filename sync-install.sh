#!/bin/bash
set -e
cd "$(dirname "$(readlink -f "$0")")"
git pull
sudo pacman -S --needed - < packages/oficiales.txt
yay -S --needed - < packages/aur.txt
