#!/bin/bash

HOST=http://$(ipconfig getifaddr en4):8080

./fly -t main login -c ${HOST}
