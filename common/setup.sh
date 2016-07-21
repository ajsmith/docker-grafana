#!/bin/bash
set -e

groupadd -g 1001 grafana
useradd -u 1001 -g grafana -d /var/lib/grafana -s /sbin/nologin -r grafana

mkdir -p /var/run/grafana
mkdir -p /var/lib/grafana
chown root:grafana /var/run/grafana
chown root:grafana /var/lib/grafana
chmod 775 /var/run/grafana
chmod 775 /var/lib/grafana
