FROM golang:1.12

RUN mkdir -p /go/src/github.com/jeromedoucet/backend-demo

WORKDIR /go/src/github.com/jeromedoucet/backend-demo

COPY . .

RUN go install -v ./...

CMD ["backend-demo"]
