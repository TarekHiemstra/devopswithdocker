# MANDATORY EXERCISE 1.13: HELLO, BACKEND!

FROM ubuntu:22.04

SHELL ["/bin/bash", "-c"]
EXPOSE 8080

WORKDIR /usr/local
RUN apt-get update && apt-get install curl -y
RUN curl -sL https://go.dev/dl/go1.16.linux-amd64.tar.gz -O
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.linux-amd64.tar.gz
ENV PATH="$PATH:/usr/local/go/bin"

WORKDIR /usr/src/app
COPY . .
RUN go build

CMD ["./server"]
