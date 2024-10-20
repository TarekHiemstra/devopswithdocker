# MANDATORY EXERCISE 3.5

In exercises [1.12](../../part1/exercise1.12) and [1.13](../../part1/exercise1.13) we created Dockerfiles for both [frontend](https://github.com/docker-hy/material-applications/tree/main/example-frontend) and [backend](https://github.com/docker-hy/material-applications/tree/main/example-backend).

Security issues with the user being a root are serious for the example frontend and backend as the containers for web services are supposed to be accessible through the Internet.

Make sure the containers start their processes as non-root user.

The backend image is based on [Alpine Linux](https://www.alpinelinux.org/), which does not support the command `useradd`. Google will surely help you a way to create a user in an `alpine` based image.

Submit the Dockerfiles.
