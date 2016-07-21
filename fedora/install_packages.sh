#!/bin/bash
set -e

dnf install -y \
    https://grafanarel.s3.amazonaws.com/builds/grafana-3.1.0-1468321182.x86_64.rpm
dnf clean all
