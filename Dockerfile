FROM golang:1.16-alpine
WORKDIR /app
ADD go.mod .
ADD go.sum .
RUN go mod download
COPY *.go ./
EXPOSE 1313
RUN go build -o /gora-app
CMD ["/gora-app"]
