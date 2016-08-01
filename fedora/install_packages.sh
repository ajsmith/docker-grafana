#!/bin/bash
set -e

dnf install -y grafana-3.1.1
dnf clean all
