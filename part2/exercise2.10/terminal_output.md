# EXERCISE 2.9

## Terminal output 

```
$ docker compose up -d                                          
[+] Running 6/6
 ✔ Network repos_default         Created                                                           0.1s 
 ✔ Container example-frontend    Started                                                           0.5s 
 ✔ Container repos-nginx-1       Started                                                           0.6s 
 ✔ Container db_example-backend  Started                                                           0.5s 
 ✔ Container redis-server        Started                                                           0.4s 
 ✔ Container example-backend     Started                                                           0.8s 
$ docker run -it --rm --network host networkstatic/nmap localhost 
Starting Nmap 7.92 ( https://nmap.org ) at 2024-10-02 10:45 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.0000060s latency).
Other addresses for localhost (not scanned): ::1
Not shown: 998 closed tcp ports (reset)
PORT    STATE    SERVICE
80/tcp  filtered http
111/tcp open     rpcbind

Nmap done: 1 IP address (1 host up) scanned in 1.36 seconds
$
```
