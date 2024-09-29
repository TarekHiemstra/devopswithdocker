# EXERCISE 2.9
# Updated Dockerfile from exercise 1.14
# Change ENV REQUEST_ORIGIN=http://localhost:5001 to ENV REQUEST_ORIGIN=http://localhost

FROM golang:1.16
EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost

WORKDIR /usr/src/app
COPY . .
RUN go build

CMD ["./server"]
