# EXERCISE 2.5

## Terminal output
```
$ docker compose up -d --scale compute=6
WARN[0000] /Users/tarekhiemstra/Documents/courses/devopswithdocker/repos/scaling-exercise/docker-compose.yml: the attribute `version` is obsolete, it will be ignored, please remove it to avoid potential confusion 
[+] Running 9/9
 ✔ Network scaling-exercise_default      Created                                                     0.1s 
 ✔ Container calculator                  Started                                                     0.4s 
 ✔ Container scaling-exercise-compute-6  Started                                                     1.0s 
 ✔ Container scaling-exercise-compute-4  Started                                                     0.4s 
 ✔ Container scaling-exercise-compute-3  Started                                                     0.7s 
 ✔ Container scaling-exercise-compute-5  Started                                                     1.6s 
 ✔ Container load-balancer               Started                                                     0.4s 
 ✔ Container scaling-exercise-compute-1  Started                                                     1.8s 
 ✔ Container scaling-exercise-compute-2  Started                                                     1.3s 
$ docker ps
CONTAINER ID   IMAGE                                        COMMAND                  CREATED         STATUS         PORTS                    NAMES
1ce0c27993e6   load-balancer                                "/app/docker-entrypo…"   6 seconds ago   Up 6 seconds   0.0.0.0:80->80/tcp       load-balancer
5fcf57738380   devopsdockeruh/scaling-exercise-compute      "docker-entrypoint.s…"   6 seconds ago   Up 6 seconds   3000/tcp                 scaling-exercise-compute-4
c09209d7afc9   devopsdockeruh/scaling-exercise-compute      "docker-entrypoint.s…"   6 seconds ago   Up 5 seconds   3000/tcp                 scaling-exercise-compute-3
8cc5ca796b19   devopsdockeruh/scaling-exercise-compute      "docker-entrypoint.s…"   6 seconds ago   Up 5 seconds   3000/tcp                 scaling-exercise-compute-6
88126fe27c0f   devopsdockeruh/scaling-exercise-compute      "docker-entrypoint.s…"   6 seconds ago   Up 5 seconds   3000/tcp                 scaling-exercise-compute-2
24834be1382b   devopsdockeruh/scaling-exercise-compute      "docker-entrypoint.s…"   6 seconds ago   Up 5 seconds   3000/tcp                 scaling-exercise-compute-5
b1d1ef367a0c   devopsdockeruh/scaling-exercise-compute      "docker-entrypoint.s…"   6 seconds ago   Up 4 seconds   3000/tcp                 scaling-exercise-compute-1
2ff9aaff091c   devopsdockeruh/scaling-exercise-calculator   "docker-entrypoint.s…"   6 seconds ago   Up 6 seconds   0.0.0.0:3000->3000/tcp   calculator
```
