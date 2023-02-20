FROM cgr.dev/chainguard/go:1.19 as base

RUN go install -v github.com/tsg/gotpl@latest

FROM cgr.dev/chainguard/static:latest

COPY --from=base /root/go/bin/gotpl /usr/local/bin/gotpl

ENTRYPOINT ["/usr/local/bin/gotpl"]
