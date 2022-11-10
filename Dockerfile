FROM golang:1.19 as builder
WORKDIR /app
COPY . .
RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o desafio-go -ldflags="-w -s" ./main.go

FROM scratch
COPY --from=builder /app/desafio-go /desafio-go
CMD ["/desafio-go"]