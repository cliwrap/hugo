[![Build
Status](https://travis-ci.org/wtanaka/docker-alpine-uid-hugo.svg?branch=master)](https://travis-ci.org/wtanaka/docker-alpine-uid-hugo)

# This is NOT affiliated with or in any way associated with Docker

The `Dockerfile` in this repository builds an `alpine:3.7` container
which lets you run commands inside the container using a UID and GID
which are passed in environment variables from outside the container,
so that any files created in a volume mount can be created as the user
and group who initiated `docker run`.  It also has the `hugo` static
website builder installed.

To download: [`docker pull wtanaka/alpine-uid-hugo`](https://hub.docker.com/r/wtanaka/alpine-uid-hugo/)

Examples
--------

To run npm in the current directory, use the included script `hugo`
