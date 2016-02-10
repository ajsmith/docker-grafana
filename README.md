# docker-grafana

This project provides resources for deploying Grafana in Docker.

## Image Platform

RHEL7

## Image Dependencies

RHEL7 Subscription

## Building

To build, run:

```shell
$ docker build -t grafana .
```

## Launching

To start the container, run:

```shell
$ docker run -d -p 80:3000/tcp --name grafana grafana
```

## Networking

The Grafana image exposes port 3000.

## Release Notes

### v1.1.0

- Update base image to RHEL 7.2.
- Update image to Grafana 2.6.

### v1.0.0

- Initial release.
