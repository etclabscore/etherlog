ARG GETH_VERSION

FROM golang:1.10.2

ENV PATH=/usr/lib/go-1.10.2/bin:$PATH

RUN \
  apt-get update && apt-get upgrade -q -y && \
  apt-get install -y --no-install-recommends git make gcc libc-dev ca-certificates && \
  go get -d github.com/ethereumclassic/go-ethereum/... && \
  go install github.com/ethereumclassic/go-ethereum/cmd/...

RUN ln -s ./bin/geth geth

# Utilities
RUN apt-get install -y curl

EXPOSE 8545 8546 30303 30303/udp

ENTRYPOINT ["./geth"]
