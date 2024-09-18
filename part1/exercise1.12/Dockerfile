# MANDATORY EXERCISE 1.12: HELLO, FRONTEND! 

FROM ubuntu:22.04

Expose 5001
SHELL ["/bin/bash", "-c"]  
WORKDIR /usr/src/app

COPY . .

RUN apt-get update && apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash && apt-get install -y nodejs
RUN npm install
RUN npm run build
RUN npm install -g serve

CMD ["serve", "-s", "-l", "5001", "build"]
