## Download binaries / fly executable

https://concourse.ci/downloads.html


## Concourse API

To view env params and see resource types

http://10.167.102.116:8080/api/v1/workers


## Fly commands

./fly -t main intercept -j gitcheckout/show-file -s build-me




## Setup.

1) Ensure docker for mac has proxy and no proxy set to current IP
2) Run docker compose (that includes registry image)
3) Tag image
4) Push image docker push 10.167.102.116:5000/boot-build
5) Run login.sh
6) Run upload-pipelines.sh
7) Start pipeline in concourse UI
8) Start new build of pipeline

## If IP address changes

1) Stop docker compose and clean images
2) Change docker mac proxy and restart docker
3) Change source image repository in git project and push up to origin
4) Run steps 4) -> 8) above.

