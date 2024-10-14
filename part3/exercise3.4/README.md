# EXERCISE 3.4: BUILDING IMAGES FROM INSIDE OF A CONTAINER

As seen from the Docker Compose file, the Watchtower uses a volume to [docker.sock](https://stackoverflow.com/questions/35110146/can-anyone-explain-docker-sock) socket to access the Docker daemon of the host from the container:

  ```yaml
services:
  watchtower:
    image: containrrr/watchtower
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
    # ...
```

   In practice this means that Watchtower can run commands on Docker the same way we can "command" Docker from the cli with _docker ps_, _docker run_ etc.

  We can easily use the same trick in our own scripts! So if we mount the _docker.sock_ socket to a container, we can use the command _docker_ inside the container, just like we are using it in the host terminal!

Dockerize now the script you did for the previous exercise. You can use images from [this repository](https://hub.docker.com/_/docker) to run Docker inside Docker!

Your Dockerized could be run like this (the command is divided into many lines for better readability, note that copy-pasting a multiline command does not work):

```
docker run -e DOCKER_USER=mluukkai \
  -e DOCKER_PWD=password_here \
  -v /var/run/docker.sock:/var/run/docker.sock \
  builder mluukkai/express_app mluukkai/testing
```

Note that now the Docker Hub credentials are defined as environment variables since the script needs to log in to Docker Hub for the push.

Submit the Dockerfile and the final version of your script.

  Hint: you quite likely need to use [ENTRYPOINT](https://docs.docker.com/engine/reference/builder/#entrypoint) in this Exercise.
  See [Part 1](https://github.com/docker-hy/docker-hy.github.io/blob/17c3fc912023d2d4f8cd9b2cf2deb0872e21ff78/docs/part-1/section-4.md) for more.
