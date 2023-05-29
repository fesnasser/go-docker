FROM golang:1.20 as base

WORKDIR /usr/src/app

COPY . .
RUN go build -o /main .

FROM scratch

COPY --from=base /main .

CMD ["./main"]