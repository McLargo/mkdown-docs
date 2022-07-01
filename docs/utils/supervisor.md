# Supervisor Service

## How to create new supervisor service

First of all, you need to install supervisor service:

```bash
sudo apt-get install supervisor -y
```

Path to copy configurations files:

```bash
/etc/supervisor/conf.d/*
```

After copy file, reread supervisor configuration:

```bash
sudo supervisorctl -c /etc/supervisor/supervisord.conf reread
sudo supervisorctl -c /etc/supervisor/supervisord.conf reload
```

If something went wrong, sock may be deleted in /var/run/supervisor.conf, and supervisorctl status will show an error. To solve, check new configuration files, if something is buggy, fix it or remove conf and run command again.

Then, run, to relaoad new configuration and start service again with:

```bash
sudo supervisorctl reload
```

Now, your supervisor service should be up and running

## Reference

Some interesting samples and documentation

- [Configuration](http://supervisord.org/configuration.html)
- [Sample](https://gist.github.com/didip/802561)
- [Documentation](https://gist.github.com/tsabat/1528270)
