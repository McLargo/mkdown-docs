# Linux Daemon

## How to create a daemon in linux

Create new file in path `/etc/init.d/`

Open and copy sample in url. Update some of the variables, like name description
and path to python file. On python path, point to the python created in the
virtualenv, so it will have installed corresponding libraries. **All operations
below may be required to be executed with sudo**

Give writes privileges: `chmod +x /etc/init.d/<daemon-name> -v`

Reload daemon configuration: `systemctl daemon-reload`

Start service: `service <daemon-name> start`

## References

- [Instructions](https://www.scalescale.com/tips/nginx/create-linux-daemon-service/)
- [Running on startup](https://kitcharoenp.github.io/celery/2019/05/15/supervisor_running_on_startup.html)
