# EXERCISE 1.8: TWO LINE DOCKERFILE

## Terminal output
```
$ docker run devopsdockeruh/simple-web-service:alpine hello

    
    The application accepts 1 argument "server". Use the argument server to run the server

    If no arguments are supplied the application will output log strings to a file.

    
Arguments given: hello
$ docker build . -t web-server
[+] Building 0.1s (5/5) FINISHED                                                                                                                   docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                               0.0s
 => => transferring dockerfile: 111B                                                                                                                               0.0s
 => [internal] load metadata for docker.io/devopsdockeruh/simple-web-service:alpine                                                                                0.0s
 => [internal] load .dockerignore                                                                                                                                  0.0s
 => => transferring context: 2B                                                                                                                                    0.0s
 => CACHED [1/1] FROM docker.io/devopsdockeruh/simple-web-service:alpine                                                                                           0.0s
 => exporting to image                                                                                                                                             0.0s
 => => exporting layers                                                                                                                                            0.0s
 => => writing image sha256:e10a04f0292d811eb02da7d6526d1e215c8b8e62aa36cc69177ca4d072cee933                                                                       0.0s
 => => naming to docker.io/library/web-server                                                                                                                      0.0s
$ docker run web-server
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env: export GIN_MODE=release
 - using code:  gin.SetMode(gin.ReleaseMode)
```
