#!/bin/bash

HOST=$(ipconfig getifaddr en4)
SOURCE_IMAGE=boot-build

docker tag ${SOURCE_IMAGE} ${HOST}:5000/${SOURCE_IMAGE}
docker push ${HOST}:5000/${SOURCE_IMAGE}

