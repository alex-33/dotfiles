#!/usr/bin/env bash
set -x
# https://web.archive.org/web/20110314180918/http://www.davidpashley.com/articles/writing-robust-shell-scripts.html
set -e

wget https://ncl.pki.gov.kz/images/NCALayer/NCALayer.dmg
echo "action required: move NCALayer to Applications"
open NCALayer.dmg
rm NCALayer.dmg

echo "action required: configure certificates if necessary"
open https://pki.gov.kz/docs/nl_ru/macosx/
