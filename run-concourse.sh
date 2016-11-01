#!/bin/bash
export CONCOURSE_EXTERNAL_URL=http://$(ipconfig getifaddr en4):8080
echo "Using external URL of ${CONCOURSE_EXTERNAL_URL}"
docker-compose up
