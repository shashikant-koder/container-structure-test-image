#!/bin/bash

set -e

curl -LO https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64 && chmod +x container-structure-test-linux-amd64 && sudo mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test

container-structure-test test --image myimage --config scripts/jdk_testcases.yaml
