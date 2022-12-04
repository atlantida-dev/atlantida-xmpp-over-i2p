#!/bin/bash

I2P_HOST=`cat i2p_host | xargs`

sed -i "s/XXX.b32.i2p/$I2P_HOST/" prosody.cfg.lua