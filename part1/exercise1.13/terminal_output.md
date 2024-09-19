# MANDATORY EXERCISE 1.13: HELLO, BACKEND!

## Terminal output
```
$ docker build ./example-backend -t example-backend
[+] Building 0.1s (13/13) FINISHED                                                                             docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                           0.0s
 => => transferring dockerfile: 438B                                                                                           0.0s
 => [internal] load metadata for docker.io/library/ubuntu:22.04                                                                0.0s
 => [internal] load .dockerignore                                                                                              0.0s
 => => transferring context: 111B                                                                                              0.0s
 => [1/8] FROM docker.io/library/ubuntu:22.04                                                                                  0.0s
 => [internal] load build context                                                                                              0.0s
 => => transferring context: 499B                                                                                              0.0s
 => CACHED [2/8] WORKDIR /usr/local                                                                                            0.0s
 => CACHED [3/8] RUN apt-get update && apt-get install curl -y                                                                 0.0s
 => CACHED [4/8] RUN curl -sL https://go.dev/dl/go1.16.linux-amd64.tar.gz -O                                                   0.0s
 => CACHED [5/8] RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.linux-amd64.tar.gz                                  0.0s
 => CACHED [6/8] WORKDIR /usr/src/app                                                                                          0.0s
 => CACHED [7/8] COPY . .                                                                                                      0.0s
 => CACHED [8/8] RUN go build                                                                                                  0.0s
 => exporting to image                                                                                                         0.0s
 => => exporting layers                                                                                                        0.0s
 => => writing image sha256:262fcb0875da7fa6702fc2f55f865ba6e7765020385154f34e90a0dbffaaad9d                                   0.0s
 => => naming to docker.io/library/example-backend                                                                             0.0s

What's next:
    View a summary of image vulnerabilities and recommendations → docker scout quickview 
$ docker run -p 8080:8080 example-backend
[Ex 2.4+] REDIS_HOST env was not passed so redis connection is not initialized
[Ex 2.6+] POSTGRES_HOST env was not passed so postgres connection is not initialized
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env: export GIN_MODE=release
 - using code:  gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /ping                     --> server/router.pingpong (4 handlers)
[GIN-debug] GET    /messages                 --> server/controller.GetMessages (4 handlers)
[GIN-debug] POST   /messages                 --> server/controller.CreateMessage (4 handlers)
[GIN-debug] Listening and serving HTTP on :8080
[GIN] 2024/09/19 - 09:12:03 | 404 |      196.37µs |    192.168.65.1 | GET      "/"
[GIN] 2024/09/19 - 09:12:03 | 404 |      49.516µs |    192.168.65.1 | GET      "/favicon.ico"
[GIN] 2024/09/19 - 09:12:12 | 404 |       9.202µs |    192.168.65.1 | GET      "/"
[GIN] 2024/09/19 - 09:12:13 | 200 |      40.377µs |    192.168.65.1 | GET      "/ping"
```
