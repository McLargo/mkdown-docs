# Docker

In a nutshell, docker executes containers, which is a customize instance of a
docker image. An image is all the instructions to encapsulate libraries,
dependencies, environment variables, configuration... in a file called
`Dockerfile` to enable easy initialization of new services, without install any
local dependencies that can corrupt your system. It is like a virtual machine,
but with the difference of you can type out from commands line and it is not a
full OS, just the necessary to run the service.

As images are reusable by team or the community, they are stored in a container
image registry, which is a place to store images. Docker hub is the most
popular, but for self-hosted, Artifactory or quay.

 After image is build, you can then start
multiple containers of the same image, which are independent and can run in
parallel.

You can start/stop/access those containers. Totally portable to any OS.

## References

- [Cheatsheet](https://gist.github.com/McLargo/ae633d1ff481c20c21433074169d283c#file-docker-md)
- [Get started](https://docs.docker.com/get-started/)
- [portainer](https://hub.docker.com/r/portainer/portainer-ce/)
- [keep bash history](https://antistatique.net/en/blog/tips-docker-keep-your-bash-history)
