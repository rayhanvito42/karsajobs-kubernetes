#!/bin/sh

#build docker image from Dockerfile from current directory with name rayhanvito27/karsajobs and tag latest
docker build -t rayhanvito27/karsajobs:latest .
echo '\n\n' #print new line to give some space

# create a new image tag from source image, still refer to the same image, but have different name/tag
docker tag rayhanvito27/karsajobs:latest ghcr.io/rayhanvito27/karsajobs:latest
echo '\n\n' #print new line to give some space


# login to github packages
echo $GITHUB_PACKAGES_TOKEN | docker login ghcr.io -u rayhanvito42 --password-stdin
echo '\n\n' #print new line to give some space

# push the built image to github packages
docker push ghcr.io/rayhanvito42/karsajobs:latest
echo '\n\n' #print new line to give some space