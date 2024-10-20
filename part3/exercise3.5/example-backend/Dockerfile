# MANDATORY EXERCISE 3.5


FROM golang:1.16
EXPOSE 8080

WORKDIR /usr/src/app
COPY . .
RUN go build

RUN adduser --disabled-password appuser
RUN chown -R appuser:appuser .
USER appuser

CMD ["./server"]
