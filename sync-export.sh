#!/bin/bash
set -e
cd "$(dirname "$(readlink -f "$0")")"
mkdir -p packages
pacman -Qqe > packages/oficiales.txt
pacman -Qqem > packages/aur.txt
git add packages
git commit -m "Actualizar paquetes $(date +%F)" || echo "Sin cambios que subir"
git push
