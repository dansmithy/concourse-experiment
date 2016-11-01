# Concourse CI

## Running Concourse

I am running it using docker compose as described [in their documentation][1]. See the script `run-concourse.sh`.

Note that the external URL is set to the local IP. See [the doc][1] where it says that can't be localhost or 127.0.0.1 (but not sure what breaks exactly if you do use those).

Then browse to external URL for UI. Username and password is `concourse` / `changeme`. 

For some reason cannot download fly binary from the UI as you should be able to. Instead see [downloads page][2] and make sure the version of the fly binary matches the version of concourse you are running.

Note the alternative to Docker is to run with Vagrant. I had some success with this initially, but now doesn't work. Vagrantfile is still in this repo to try again if required.

## Concourse API

To view env params and see resource types of locally running concourse, see

http://[local-ip]:8080/api/v1/workers

## Fly commands

```
./fly -t main intercept -j gitcheckout/show-file -s build-me
```

# My Concourse Examples

## Running examples

This example relies upon another repo - the boot-web repository.

1. Ensure Docker for Mac has proxy / no proxy set to current IP
1. Start Concourse (`run-concourse.sh`). Note this includes a Docker registry on port 5000.
1. Build and tag the boot-build image ready for pushing to local Docker registry
1. Publish referenced docker image to local Docker registry (publish-image.sh)
1. Run `login.sh`
1. Run `upload-pipelines.sh`
1. Start pipeline in Concourse UI (using the left-hand nav and the play button)
1. Start new build of pipeline in Concourse UI (using the + button on the task box)

### To change a pipeline yaml

1. Edit the YAML
1. Run `upload-pipelines.sh`

### If IP address changes

1. Stop docker compose and remove stopped images (they won't pick up the new no proxy environment variable if they are just restarted)
1. Change Docker for Mac proxy settings and restart Docker
1. Change source image repository in boot-web project and push up to origin
1. Run steps 4) -> 8) above.




[1]: https://concourse.ci/docker-repository.html
[2]: https://concourse.ci/downloads.html 