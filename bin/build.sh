#!/bin/bash
PROJECT_ROOT=$(cd $(dirname $0)/..; pwd)
cd $PROJECT_ROOT
docker build --rm -f docker/sls/Dockerfile -t sample-sls:latest .