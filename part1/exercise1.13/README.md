# MANDATORY EXERCISE 1.13: HELLO, BACKEND!

Clone, fork or download a project from
[https://github.com/docker-hy/material-applications/tree/main/example-backend](https://github.com/docker-hy/material-applications/tree/main/example-backend).

Create a Dockerfile for the project (example-backend). Start the container with port 8080 published.

When you start the container and navigate to [http://localhost:8080/ping](http://localhost:8080/ping) you should get a "pong" as a response.

Submit the Dockerfile and the command used.

_Do not alter the code of the project_

TIPS:
- you might need [this](https://docs.docker.com/reference/dockerfile/#env)
- If you have M1/M2 Mac, you might need to build the image with an extra option `docker build --platform linux/amd64 -t imagename .`
