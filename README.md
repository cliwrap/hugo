# This is NOT affiliated with or in any way associated with Docker

Description
-----------

This `Dockerfile` builds a docker image that lets you run the `hugo`
static website generator inside docker, but with your non-root user
and in your current working directory.

To do this, you pass a UID and GID as environment variables from
outside the container and mount the current directory inside the
container.

To download: [`docker pull
wtanaka/alpine-uid-hugo`](https://hub.docker.com/r/wtanaka/alpine-uid-hugo/)

Examples
--------

* To run `hugo` in the current directory, use the included shell script
  [`hugo`](/hugo)

* To run `hugo server`:
  `./hugo server --bind 0.0.0.0`
