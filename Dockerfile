FROM golang:1.16

WORKDIR /app

COPY go.mod go.sum .
RUN go mod download

COPY . .
RUN go build

ENV REQUEST_ORIGIN=https://example-frontend-tidy-comet-7555.fly.dev
EXPOSE 8080
CMD ["./server"]
