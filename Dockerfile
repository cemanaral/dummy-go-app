# syntax=docker/dockerfile:1

FROM public.ecr.aws/docker/library/golang:latest

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build

EXPOSE 8080

CMD ["go", "run", "main.go"]
