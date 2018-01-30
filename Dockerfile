FROM golang:1.9.2

ENV APP_SOURCE $GOPATH/src/github.com/av-ast/simple_kv_storage

RUN mkdir -p $APP_SOURCE
ADD . $APP_SOURCE
WORKDIR $APP_SOURCE

RUN go get -u github.com/golang/dep/cmd/dep && \
    dep ensure && \
    go install

EXPOSE 8000

CMD ["bash", "simple_kv_storage"]
