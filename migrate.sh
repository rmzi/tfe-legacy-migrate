#!/bin/bash

set -ex
set -o pipefail

me=migrate-tf-envs
here=`pwd`
source_org=$1
dest_org=$2

echo "[${me}]: Migrating Terraform environments from legacy to latest\n"

echo "[${me}]: Iterating through /envs for legacy environments to pull state"
cd envs
folders=`echo */`
echo $folders

for folder in $folders
do
  echo "[${me}]: Pulling legacy Atlas state for $folder"
  cd $folder
  terraform init

  echo "[${me}]: Pushing state to new workspace for $folder"
  sed -i.bak "s/${source_org}/${dest_org}/g" main.tf
  echo "yes" | terraform init
  cd ..
done
