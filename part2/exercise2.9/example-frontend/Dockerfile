# EXERCISE 2.9
# Updated Dockerfile from exercise 1.14
# Change ENV REACT_APP_BACKEND_URL=http://localhost:8080 to ENV REACT_APP_BACKEND_URL=http://localhost/api/

FROM ubuntu:22.04

EXPOSE 5001
SHELL ["/bin/bash", "-c"]
WORKDIR /usr/src/app
ENV REACT_APP_BACKEND_URL=http://localhost/api/

COPY . .

RUN apt-get update && apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash && apt-get install -y nodejs
RUN npm install
RUN npm run build
RUN npm install -g serve

CMD ["serve", "-s", "-l", "5001", "build"]
