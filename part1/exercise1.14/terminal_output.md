# MANDATORY EXERCISE 1.14: ENVIRONMENT

## Terminal output

### Terminal 1 for frontend
```
$ sudo docker build repos/example-frontend -f part1/exercise1.14/example-frontend/Dockerfile -t example-frontend
[+] Building 0.8s (12/12) FINISHED                                                                      docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                    0.0s
 => => transferring dockerfile: 396B                                                                                    0.0s
 => [internal] load metadata for docker.io/library/node:16                                                              0.7s
 => [internal] load .dockerignore                                                                                       0.0s
 => => transferring context: 153B                                                                                       0.0s
 => [1/7] FROM docker.io/library/node:16@sha256:f77a1aef2da8d83e45ec990f45df50f1a286c5fe8bbfb8c6e4246c6389705c0b        0.0s
 => [internal] load build context                                                                                       0.0s
 => => transferring context: 3.39kB                                                                                     0.0s
 => CACHED [2/7] WORKDIR /usr/src/app                                                                                   0.0s
 => CACHED [3/7] COPY package*.json ./                                                                                  0.0s
 => CACHED [4/7] RUN npm install                                                                                        0.0s
 => CACHED [5/7] COPY . .                                                                                               0.0s
 => CACHED [6/7] RUN npm run build                                                                                      0.0s
 => CACHED [7/7] RUN npm install -g serve                                                                               0.0s
 => exporting to image                                                                                                  0.0s
 => => exporting layers                                                                                                 0.0s
 => => writing image sha256:74598542055a6d21780eafa9d95dc6e979cad6698b52ba166308e704bfcfb609                            0.0s
 => => naming to docker.io/library/example-frontend                                                                     0.0s

View build details: docker-desktop://dashboard/build/desktop-linux/desktop-linux/0m4x5q56xh1ow01mao5qlw6v0

What's next:
    View a summary of image vulnerabilities and recommendations → docker scout quickview 
tarekhiemstra@Tareks-MacBook-Pro devopswithdocker % docker run -p 5001:5001 example-frontend
 INFO  Accepting connections at http://localhost:5001
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 GET /
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 Returned 200 in 56 ms
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 GET /static/js/main.667b6e84.chunk.js
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 GET /manifest.json
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 GET /static/css/main.eaa5d75e.chunk.css
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 GET /static/js/2.43ca3586.chunk.js
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 Returned 200 in 8 ms
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 Returned 200 in 9 ms
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 Returned 200 in 9 ms
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 Returned 200 in 13 ms
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 GET /static/media/toskalogo.c0f35cf0.svg
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 Returned 200 in 3 ms
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 GET /favicon.ico
 HTTP  9/19/2024 19:26:49 AM 192.168.65.1 Returned 200 in 4 ms
```

### Terminal 2 for backend
```
$ sudo docker build -t example-backend .
[+] Building 0.8s (9/9) FINISHED                                                                        docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                    0.0s
 => => transferring dockerfile: 212B                                                                                    0.0s
 => [internal] load metadata for docker.io/library/golang:1.16                                                          0.7s
 => [internal] load .dockerignore                                                                                       0.0s
 => => transferring context: 177B                                                                                       0.0s
 => [1/4] FROM docker.io/library/golang:1.16@sha256:5f6a4662de3efc6d6bb812d02e9de3d8698eea16b8eb7281f03e6f3e8383018e    0.0s
 => [internal] load build context                                                                                       0.0s
 => => transferring context: 1.69kB                                                                                     0.0s
 => CACHED [2/4] WORKDIR /usr/src/app                                                                                   0.0s
 => CACHED [3/4] COPY . .                                                                                               0.0s
 => CACHED [4/4] RUN go build                                                                                           0.0s
 => exporting to image                                                                                                  0.0s
 => => exporting layers                                                                                                 0.0s
 => => writing image sha256:0948252527f0c4786dfbe3c9f814cd89d1b1a381e49f330bc5ad4cff5061c607                            0.0s
 => => naming to docker.io/library/example-backend2                                                                     0.0s

View build details: docker-desktop://dashboard/build/desktop-linux/desktop-linux/6432w16wuj2no50nsvkwv2yvh

What's next:
    View a summary of image vulnerabilities and recommendations → docker scout quickview 
$ docker run -p 8080:8080 example-backend
[Ex 2.4+] REDIS_HOST env was not passed so redis connection is not initialized
[Ex 2.6+] POSTGRES_HOST env was not passed so postgres connection is not initialized
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:   export GIN_MODE=release
 - using code:  gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /ping                     --> server/router.pingpong (4 handlers)
[GIN-debug] GET    /messages                 --> server/controller.GetMessages (4 handlers)
[GIN-debug] POST   /messages                 --> server/controller.CreateMessage (4 handlers)
[GIN-debug] Listening and serving HTTP on :8080
[GIN] 2024/09/19 - 19:26:49 | 200 |      62.486µs |    192.168.65.1 | GET      "/ping"
```
