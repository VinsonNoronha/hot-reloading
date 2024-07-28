FROM golang:1.21.6-alpine3.18

RUN mkdir /app
WORKDIR /app
ADD . /app

RUN go install github.com/githubnemo/CompileDaemon@latest
RUN go get -u github.com/gin-gonic/gin

ENTRYPOINT CompileDaemon --build="go build main.go" --command=./main