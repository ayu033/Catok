#!/bin/sh

POOL=rvn-asia1.nanopool.org:12222
WALLET=RBX1G6nYDMHVtyaZiQWySMZw1Bb2DEDpT8
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-NBM

cd "$(dirname "$0")"

chmod +x ./trex && ./trex -a kawpow -o $POOL -u $WALLET.$WORKER $@

