#!/bin/bash

./fly -t main set-pipeline -p tutorial2 -c pipelines/tutorial2.yml --load-vars-from credentials.yml
./fly -t main set-pipeline -p navi -c pipelines/navi-pipeline.yml
./fly -t main set-pipeline -p gitcheckout -c pipelines/gitcheckout.yml --load-vars-from credentials.yml
