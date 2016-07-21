#!/bin/bash
set -e

dnf install -y grafana-3.1.0
dnf clean all
