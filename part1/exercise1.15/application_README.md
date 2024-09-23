# EXERCISE 1.15 basic description and instructions for how to run the application

## Description
The application I chose is react-hn. It is a React-powered Hacker News client.
I forked it from [github.com/insin/react-hn](https://github.com/insin/react-hn) to [github.com/TarekHiemstra/react-hn-docker](https://github.com/TarekHiemstra/react-hn-docker). There I have added one commit with Dockerfile, .dockerignore and updated README.md. 
The link to Docker Hub can be found here:
[https://hub.docker.com/repository/docker/tarekhiemstra/react-hn/general](https://hub.docker.com/repository/docker/tarekhiemstra/react-hn/general)
This application will also be used for exercise 1.16.

## Instructions for how to run the application
The application can either be built yourself or be pulled from Docker Hub

### Build the application with Dockerfile yourself
```
git clone git@github.com:TarekHiemstra/react-hn-docker.git
cd react-hn-docker
docker build . -t react-hn-app
docker run -d --name react-hn-app -p 3000:80 react-hn-app
```

### Pull the image from Docker Hub

```
docker pull tarekhiemstra/react-hn
docker run -d --name react-hn-app -p 3000:80 tarekhiemstra/react-hn
```
