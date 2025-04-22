#!/bin/bash
#
# (C) QF
#

set -e

pnpm install && pnpm build
cp -Rf ./dist/* /var/www/html/
mv /var/www/html/index.html /var/www/html/request.html
chown -R "www-data:www-data" /var/www/html/*

echo "[+] Done"
