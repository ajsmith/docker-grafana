# docker-grafana

This project provides resources for building Grafana in Docker images based on
Fedora and Red Hat Enterprise Linux.

# Base Images

Fedora 24

RHEL 7.2

# Requirements

Building the RHEL version of the image requires an active subscription for Red
Hat Enterprise Linux Server.

# Building

To build the Fedora image, run:

```.shell
$ docker build -t grafana:fedora -f Dockerfile.fedora .
```

To build the RHEL image, run:

```.shell
$ docker build -t grafana:rhel -f Dockerfile.rhel .
```

# Launching

To start the container, run:

```.shell
$ docker run -d -p 80:3000/tcp --name grafana grafana
```

# Networking

The image exposes port 3000.

# Volumes

The following volumes are declared:

  /etc/grafana

  /var/lib/grafana

  /var/log/grafana

# Image Configuration

The simplest methods of configuring the image are either passing Grafana
environment variables or providing your own configuration files from the host
filesystem. Both of these methods can be used when launching the container,
requiring no modification to the image itself.

For example, to disable anonymous logins using environment variables, your
container as so:

```.shell
$ docker run -e "GF_AUTH_ANONYMOUS_ENABLED=false" grafana
```

Or to pass in your own configuration from the host filesystem, do this:

```.shell
$ docker run -v /path/to/grafana-configs:/etc/grafana grafana
```

For more information about configuring Grafana, refer to the official
[Grafana documentation](http://docs.grafana.org/installation/configuration/).

# Release Notes

## v1.2.1

- Merge configuration updates for Grafana 3.1.

## v1.2.0

- Update to Grafana 3.1.
- Add build for Fedora 24.
- Set Grafana user and group explicitly in image.
- Configure default data directory to /var/lib/grafana.
- Configure default plugin directory to /var/lib/grafana/plugins.
- Configure default logs directory to /var/log/grafana.
- Configure default log level to INFO.

## v1.1.1

- Configure yum to pull updates from 7Server repos instead of 7.2.

## v1.1.0

- Update base image to RHEL 7.2.
- Update image to Grafana 2.6.

## v1.0.0

- Initial release.
