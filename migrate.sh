#!/bin/bash

set -e
set -o pipefail

me=migrate-tf-envs

echo "[${me}]: Migrating Terraform environments from legacy to latest"

folders=`echo */`
echo ${folders}
