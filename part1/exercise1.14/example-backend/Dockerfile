# MANDATORY EXERCISE 1.14: ENVIRONMENT

FROM golang:1.16
EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5001

WORKDIR /usr/src/app
COPY . .
RUN go build

CMD ["./server"]
