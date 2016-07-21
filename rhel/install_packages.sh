#!/bin/bash
set -e

yum install -y \
    --disablerepo=* \
    --enablerepo=rhel-7-server-rpms \
    --enablerepo=grafana \
    grafana-3.1.0
yum clean all
