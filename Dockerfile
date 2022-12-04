# XMPP Server
# https://prosody.im/doc/docker

#FROM prosody/prosody
FROM prosody/prosody:0.11.9
RUN apt update -y && \
    apt upgrade -y && \
    apt install -y lua-bit32 && \
    apt autoremove -y && \
    apt autoclean -y
COPY mod_darknet/mod_darknet.lua /usr/lib/prosody/modules/
COPY prosody.cfg.lua /etc/prosody/
COPY i2p_host /etc/prosody/
COPY config.sh /etc/prosody/
RUN cd /etc/prosody/ && bash config.sh