# EXERCISE 2.9
# Updated Dockerfile from exercise 1.14
# Change ENV REQUEST_ORIGIN=http://localhost:5001 to ENV REQUEST_ORIGIN=http://localhost

FROM ubuntu:22.04

EXPOSE 8080
SHELL ["/bin/bash", "-c"]
ENV REQUEST_ORIGIN=http://localhost

WORKDIR /usr/local
RUN apt-get update && apt-get install curl -y
RUN curl -sL https://go.dev/dl/go1.16.linux-amd64.tar.gz -O
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.linux-amd64.tar.gz
ENV PATH="$PATH:/usr/local/go/bin"

WORKDIR /usr/src/app
COPY . .
RUN go build

CMD ["./server"]
