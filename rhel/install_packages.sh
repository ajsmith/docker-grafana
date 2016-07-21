#!/bin/bash
set -e

yum install -y --disablerepo=* --enablerepo=rhel-7-server-rpms \
    https://grafanarel.s3.amazonaws.com/builds/grafana-3.1.0-1468321182.x86_64.rpm
yum clean all
