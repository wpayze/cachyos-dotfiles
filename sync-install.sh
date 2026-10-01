#!/bin/bash
set -e
cd "$(dirname "$(readlink -f "$0")")"
git pull
sudo pacman -S --needed - < packages/oficiales.txt
paru -S --needed - < packages/aur.txt
