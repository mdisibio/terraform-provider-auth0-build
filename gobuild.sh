#!/bin/bash

set -e
set -x

cd $GOPATH/src/github.com/yieldr/terraform-provider-auth0

# Cross-compile for popular plaforms.
# By default puts output in /go/bin which 
# is mapped on the host.
GOOS=windows GOARCH=amd64 go install
GOOS=darwin  GOARCH=amd64 go install