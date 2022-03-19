#!/bin/bash
PROJECT_ROOT=$(cd $(dirname $0)/..; pwd)
docker run \
  -ti \
  --rm \
  -v ${PROJECT_ROOT}/app:/opt/sls/app \
  -v ${PROJECT_ROOT}/requirements.txt:/opt/sls/requirements.txt \
  -v ${PROJECT_ROOT}/serverless.yml:/opt/sls/serverless.yml \
  -v ${HOME}/.aws:/root/.aws:ro \
  -v /root/.cache:/root/.cache \
  -v /var/run/docker.sock:/var/run/docker.sock \
  sample-sls:latest sls $*