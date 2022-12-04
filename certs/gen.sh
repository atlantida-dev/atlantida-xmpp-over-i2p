#!/bin/bash

I2P_HOST=`cat ../i2p_host | xargs`

openssl genrsa -out $I2P_HOST.key 2048
openssl req -new -x509 -key $I2P_HOST.key -out $I2P_HOST.crt -days 3650

docker exec atlantida-xmpp-over-i2p-xmpp-1 bash -c 'chown root:prosody /etc/prosody/certs/*.b32.i2p.{key,crt}'
docker exec atlantida-xmpp-over-i2p-xmpp-1 bash -c 'chmod 640 /etc/prosody/certs/*.b32.i2p.{key,crt}'