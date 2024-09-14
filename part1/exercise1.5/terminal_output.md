# EXERCISE 1.5: SIZES OF IMAGES

## Terminal output
```
$ docker pull devopsdockeruh/simple-web-service:alpine                   
alpine: Pulling from devopsdockeruh/simple-web-service
ba3557a56b15: Pull complete 
1dace236434b: Pull complete 
4f4fb700ef54: Pull complete 
Digest: sha256:dd4d367476f86b7d7579d3379fe446ae5dfce25480903fb0966fc2e5257e0543
Status: Downloaded newer image for devopsdockeruh/simple-web-service:alpine
docker.io/devopsdockeruh/simple-web-service:alpine
$ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   3 years ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   3 years ago   15.7MB
$ docker run --name 1.5 -d fd31 
5a3530ede3f53b41415f726bbd03579cafa847311e8b3fbc0fc55fa89da0f036
$ docker logs -n2 1.5
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
$ docker exec -it 1.5 sh  
/usr/src/app # tail -f ./text.log   
2024-09-14 08:42:18 +0000 UTC
2024-09-14 08:42:20 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-09-14 08:42:22 +0000 UTC
2024-09-14 08:42:24 +0000 UTC
2024-09-14 08:42:26 +0000 UTC
2024-09-14 08:42:28 +0000 UTC
2024-09-14 08:42:30 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-09-14 08:42:32 +0000 UTC
^C
/usr/src/app # exit
$
```
