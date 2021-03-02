#!/bin/bash

# This script performs maintenance on this repository. It ensures git submodules are
# installed and then copies over base files from the modules. It also generates the
# documentation.

set -e
REPO_TYPE=packer
git submodule update --init --recursive
if [ ! -f "./modules/${REPO_TYPE}/update.sh" ]; then
  git submodule add -b master https://gitlab.com/megabyte-space/common/$REPO_TYPE.git ./modules/$REPO_TYPE
fi
bash ./modules/$REP_TYPE/update.sh
