FROM golang:1.12

# fetch depedencies at the beginning of the build (fetching them is slow)
RUN go get -v github.com/rubenv/sql-migrate/...

RUN mkdir -p /go/src/github.com/jeromedoucet/backend-demo

WORKDIR /go/src/github.com/jeromedoucet/backend-demo

COPY . .

RUN go install -v ./...

ENTRYPOINT ["./entrypoint.sh"]
