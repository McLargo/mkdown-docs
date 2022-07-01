# Transmission

Transmission is a torrent client easy to install and configure to access via interface from outside raspberry.

## How to install and configure

Execute following command in raspberry via ssh:

```bash
sudo apt-get install transmission-daemon
```

Transmission daemon needs to be updated with some of our configuration. For this, we need to edit configuration file. First, stop daemon

```bash
sudo systemctl stop transmission-daemon
```

Open and edit [configuration file](https://github.com/transmission/transmission/wiki/Configuration-Files) path should be either ` ~/.config/transmission-daemon/services.json` or `/etc/transmission/daemon.json`

After file is updated, we need to restart daemon so configuration is loaded and also start transmission daemon

```bash
sudo systemctl daemon-reload
sudo systemctl start transmission-daemon
```

Now everything should be ready to go, and transmission will be accessible via interface from another computer sharing network with raspberry.

## References
- [Edit transmission config file](https://github.com/transmission/transmission/wiki/Editing-Configuration-Files)
- [Useful info](https://pimylifeup.com/raspberry-pi-transmission/)
