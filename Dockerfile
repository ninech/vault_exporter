FROM golang:alpine

WORKDIR /go/src/vault_exporter
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["vault_exporter"]
