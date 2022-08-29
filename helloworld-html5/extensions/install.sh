#!/bin/bash

# ADD CUSTOM CURL FOR ARTIFACTS HERE.

#CODE=$(curl -sSL -w '%{http_code}' -o binary.tar.gz https://myserver.com/binary.tar.gz)
#if [[ "$CODE" =~ ^2 ]]; then
    # Server returned 2xx response
#    do_something_with binary.tar.gz
#elif [[ "$CODE" = 404 ]]; then
    # Server returned 404, so compiling from source
#    compile_from_source
#else
#    echo "ERROR: server returned HTTP code $CODE"
#    exit 1
#fi

# THEN CONTINUE...


if [ "${SCRIPT_DEBUG}" = "true" ] ; then
    set -x
    echo "Script debugging is enabled, allowing bash commands and their arguments to be printed as they are executed"
fi

injected_dir=$1
source /usr/local/s2i/install-common.sh
install_modules ${injected_dir}/modules
configure_drivers ${injected_dir}/drivers.env
