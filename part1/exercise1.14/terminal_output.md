# MANDATORY EXERCISE 1.14: ENVIRONMENT

## Terminal output

### Terminal 1 for frontend
```
$ docker build ./example-frontend -f part1/Dockerfile_frontend -t example-frontend
[+] Building 0.1s (13/13) FINISHED                                                                             docker:desktop-linux
 => [internal] load build definition from Dockerfile_frontend                                                                  0.0s
 => => transferring dockerfile: 435B                                                                                           0.0s
 => [internal] load metadata for docker.io/library/ubuntu:22.04                                                                0.0s
 => [internal] load .dockerignore                                                                                              0.0s
 => => transferring context: 87B                                                                                               0.0s
 => [1/8] FROM docker.io/library/ubuntu:22.04                                                                                  0.0s
 => [internal] load build context                                                                                              0.0s
 => => transferring context: 1.40kB                                                                                            0.0s
 => CACHED [2/8] WORKDIR /usr/src/app                                                                                          0.0s
 => CACHED [3/8] COPY . .                                                                                                      0.0s
 => CACHED [4/8] RUN apt-get update && apt-get install curl -y                                                                 0.0s
 => CACHED [5/8] RUN curl -sL https://deb.nodesource.com/setup_16.x | bash && apt-get install -y nodejs                        0.0s
 => CACHED [6/8] RUN npm install                                                                                               0.0s
 => CACHED [7/8] RUN npm run build                                                                                             0.0s
 => CACHED [8/8] RUN npm install -g serve                                                                                      0.0s
 => exporting to image                                                                                                         0.0s
 => => exporting layers                                                                                                        0.0s
 => => writing image sha256:b205adad0294aa11ef19d059b39b84ab1770c35aa16895ee718246129d062c3b                                   0.0s
 => => naming to docker.io/library/example-frontend                                                                            0.0s

What's next:
    View a summary of image vulnerabilities and recommendations → docker scout quickview 
$
$ docker run -p 5001:5001 example-frontend
 INFO  Accepting connections at http://localhost:5001
 HTTP  9/19/2024 7:26:50 PM 192.168.65.1 GET /
 HTTP  9/19/2024 7:26:50 PM 192.168.65.1 Returned 200 in 28 ms
 HTTP  9/19/2024 7:26:50 PM 192.168.65.1 GET /static/css/main.eaa5d75e.chunk.css
 HTTP  9/19/2024 7:26:50 PM 192.168.65.1 GET /static/js/main.667b6e84.chunk.js
 HTTP  9/19/2024 7:26:50 PM 192.168.65.1 Returned 304 in 33 ms
 HTTP  9/19/2024 7:26:50 PM 192.168.65.1 GET /static/js/2.43ca3586.chunk.js
 HTTP  9/19/2024 7:26:50 PM 192.168.65.1 Returned 304 in 14 ms
 HTTP  9/19/2024 7:26:50 PM 192.168.65.1 Returned 304 in 7 ms
 HTTP  9/19/2024 7:26:50 PM 192.168.65.1 GET /static/media/toskalogo.c0f35cf0.svg
 HTTP  9/19/2024 7:26:50 PM 192.168.65.1 Returned 304 in 3 ms
 HTTP  9/19/2024 7:26:50 PM 192.168.65.1 GET /manifest.json
 HTTP  9/19/2024 7:26:50 PM 192.168.65.1 Returned 304 in 7 ms
```

### Terminal 2 for backend
```
$ docker build ./example-backend -f ./part1/Dockerfile_backend -t example-backend
[+] Building 42.3s (13/13) FINISHED                                                                            docker:desktop-linux
 => [internal] load build definition from Dockerfile_backend                                                                   0.0s
 => => transferring dockerfile: 458B                                                                                           0.0s
 => [internal] load metadata for docker.io/library/ubuntu:22.04                                                                0.0s
 => [internal] load .dockerignore                                                                                              0.0s
 => => transferring context: 111B                                                                                              0.0s
 => [1/8] FROM docker.io/library/ubuntu:22.04                                                                                  0.0s
 => [internal] load build context                                                                                              0.0s
 => => transferring context: 499B                                                                                              0.0s
 => CACHED [2/8] WORKDIR /usr/local                                                                                            0.0s
 => [3/8] RUN apt-get update && apt-get install curl -y                                                                       11.1s
 => [4/8] RUN curl -sL https://go.dev/dl/go1.16.linux-amd64.tar.gz -O                                                         16.1s 
 => [5/8] RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.linux-amd64.tar.gz                                         3.3s 
 => [6/8] WORKDIR /usr/src/app                                                                                                 0.0s 
 => [7/8] COPY . .                                                                                                             0.1s 
 => [8/8] RUN go build                                                                                                         9.7s 
 => exporting to image                                                                                                         1.9s 
 => => exporting layers                                                                                                        1.9s 
 => => writing image sha256:9dcca7bcf60b37977062e076b87d948cf8614ed5f84453adf94d2122dbc02d05                                   0.0s 
 => => naming to docker.io/library/example-backend                                                                             0.0s 
                                                                                                                                    
What's next:                                                                                                                        
    View a summary of image vulnerabilities and recommendations → docker scout quickview
$
$ docker run  -p 8080:8080 example-backend
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
[GIN] 2024/09/19 - 19:26:53 | 200 |      60.616µs |    192.168.65.1 | GET      "/ping"
```
