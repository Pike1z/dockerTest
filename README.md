# dockerTest
This repo is made for me to test out building docker images using GitHub actions

## References
- [GitHub Action to Build and Push Docker Images](https://github.com/marketplace/actions/build-and-push-docker-images)
- [Docker Hub](https://hub.docker.com)
- [Dockerfile Reference](https://docs.docker.com/engine/reference/builder/)

## Thought process
Using the GitHub Action to Build and Push Docker Images I should be able to automatically build Docker Images when a new version of my project is released.

I'm doing this to push

## Dockerfile
- The build context can be a `PATH` on the machine, or a GitHub repository
- Use a file named `.dockerignore` to specify what files aren't put into the image