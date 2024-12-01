#!/bin/bash

build_project() {
    echo "Building the project..."

    echo -e "\x1b[43;30msource oe-init-build-env\x1b[0m"
	source oe-init-build-env

    echo -e "\x1b[43;30mbitbake core-image-minimal\x1b[0m"
	bitbake core-image-minimal
}

run_project() {
    echo "Running the project..."
    runqemu qemux86-64
}

if [ "$1" == "build" ]; then
    build_project
elif [ "$1" == "run" ]; then
    run_project
else
    echo "Usage: $0 {build|run}"
    exit 1
fi

