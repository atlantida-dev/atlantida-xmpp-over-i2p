# XMPP over I2P

## Installation

1. Create and start i2pd (I2P Daemon) container.

```
docker compose -f i2p/docker-compose.yml up -d
```

2. Copy the prosody host (e.g. `XXX.b32.i2p`) from [`http://localhost:7070/?page=i2p_tunnels`](http://localhost:7070/?page=i2p_tunnels) (username: `i2pd`, password: `changeme`) to `i2p_host` file.

3. Create and start prosody container.

```
docker compose up -d
```

4. Generate certs.

```
cd certs
./gen.sh
```

5. Restart prosody container.

```
docker restart atlantida-xmpp-over-i2p-xmpp-1
```

6. Manage the prosody server with [prosodyctl](https://prosody.im/doc/prosodyctl).

```
docker exec -it atlantida-xmpp-over-i2p-xmpp-1 /bin/bash
prosodyctl COMMAND [OPTIONS]
```

OR

```
docker exec -it atlantida-xmpp-over-i2p-xmpp-1 bash -c 'prosodyctl COMMAND [OPTIONS]'
```

## I2P clients

- [Official I2P client](https://geti2p.net/en/download)
- [i2pd (I2P Daemon)](https://i2pd.website/)

## Messaging clients

### Pidgin

```
sudo apt install pidgin pidgin-otr
```

- `pidgin` - graphical multi-protocol instant messaging client
- `pidgin-otr` - Off-the-Record Messaging plugin for Pidgin

### Psi+

```
sudo apt install gpa psi-plus psi-plus-plugins
```

- `gpa` - GNU Privacy Assistant (GPA)
- `psi-plus` - Qt-based XMPP client (basic version)
- `psi-plus-plugins` - plugins for Psi+

## Resources

- [i2pd configuration - i2pd documentation](https://i2pd.readthedocs.io/en/latest/user-guide/configuration/)
- [I2P tunnel configuration - i2pd documentation](https://i2pd.readthedocs.io/en/latest/user-guide/tunnels/)
- [i2pd.conf - GitHub](https://github.com/PurpleI2P/i2pd/blob/master/contrib/i2pd.conf)
- [tunnels.conf - GitHub](https://github.com/PurpleI2P/i2pd/blob/master/contrib/tunnels.conf)
- [Prosody - ArchWiki](https://wiki.archlinux.org/title/prosody)
- [Prosody - MattWiki](https://wiki.mattrude.com/Prosody)
- [Новая жизнь для XMPP. Делаем мессенджер, который не получится заблокировать - Habr](https://habr.com/ru/post/351936/)
- [Как анонимно общаться в сети. Все про Jabber - YouTube](https://youtu.be/ViGUsb_wA3E)