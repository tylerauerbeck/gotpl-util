FROM cgr.dev/chainguard/go:1.20 as base

RUN go install -v github.com/tsg/gotpl@latest  && \
    mkdir /usr/local/bin && \
    cp /root/go/bin/gotpl /usr/local/bin/gotpl

ENTRYPOINT ["/usr/local/bin/gotpl"]
