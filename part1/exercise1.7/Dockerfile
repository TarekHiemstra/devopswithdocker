# EXERCISE 1.7: IMAGE FOR SCRIPT  

FROM ubuntu:22.04

WORKDIR /usr/src/app

COPY script.sh .

RUN chmod +x script.sh; apt-get update; apt-get install curl -y

SHELL ["/bin/bash", "-c"]

CMD ./script.sh
