#!/bin/bash

docker-compose run build && cp ./bin/darwin_amd64/* ~/.terraform.d/plugins/