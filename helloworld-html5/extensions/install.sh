#!/bin/bash

if [ "${SCRIPT_DEBUG}" = "true" ] ; then
    set -x
    echo "Script debugging is enabled, allowing bash commands and their arguments to be printed as they are executed"
fi

# ADD CUSTOM CURL FOR ARTIFACTS HERE MAYBE?
echo "XXXXX I'M HERE XXXX "
source import_artifacts.sh

# THEN CONTINUE...


injected_dir=$1
source /usr/local/s2i/install-common.sh
install_modules ${injected_dir}/modules
configure_drivers ${injected_dir}/drivers.env
