# EXERCISE 1.3: SECRET MESSAGE

## Terminal output
```
$ docker ps
CONTAINER ID   IMAGE                                      COMMAND                 CREATED              STATUS              PORTS     NAMES
000bb3910332   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"   About a minute ago   Up About a minute             exciting_driscoll
$ docker exec -it 00 tail -f ./text.log
2024-09-13 19:37:22 +0000 UTC
2024-09-13 19:37:24 +0000 UTC
2024-09-13 19:37:26 +0000 UTC
2024-09-13 19:37:28 +0000 UTC
2024-09-13 19:37:30 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-09-13 19:37:32 +0000 UTC
2024-09-13 19:37:34 +0000 UTC
2024-09-13 19:37:36 +0000 UTC
2024-09-13 19:37:38 +0000 UTC
2024-09-13 19:37:40 +0000 UTC
```
