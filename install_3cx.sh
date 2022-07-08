#!/bin/bash

apt-get update
apt-get upgrade
export LANG=es_ES.UTF-8
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | apt-key add -
echo "deb http://downloads-global.3cx.com/downloads/debian buster main" | tee /etc/apt/sources.list.d/3cxpbx.list
apt install -y net-tools dphys-swapfile gnupg2 3cxpbx

