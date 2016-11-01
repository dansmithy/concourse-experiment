#!/bin/bash

HOST=$(ipconfig getifaddr en4)

docker push ${HOST}:5000/boot-build

