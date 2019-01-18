FROM alpine:3.7

RUN \
  apk add --update go git make gcc musl-dev linux-headers ca-certificates && \
  export GOPATH=/go && mkdir "$GOPATH" && \
  go get -d github.com/ethereumclassic/go-ethereum/... && \
  (cd "$GOPATH/src/github.com/ethereumclassic/go-ethereum" && env WITH_SVM=0 make cmd/geth) && \
  cp "$GOPATH"/src/github.com/ethereumclassic/go-ethereum/bin/geth /geth && \
  apk del go git make gcc musl-dev linux-headers && \
  rm -rf /go-ethereum && rm -rf /var/cache/apk/*

EXPOSE 8545
EXPOSE 30303
ENTRYPOINT ["/geth"]
