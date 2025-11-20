# Build container
FROM golang:1.22 AS builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o proxy main.go

# Runtime container
FROM gcr.io/distroless/base

WORKDIR /app
COPY --from=builder /app/proxy .

EXPOSE 8080

ENTRYPOINT ["/app/proxy"]
