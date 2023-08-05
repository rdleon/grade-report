FROM golang:alpine

LABEL maintainer="Rafael Diaz de Leon"

RUN apk update && apk add --no-cache git && apk add --no-cache bash && apk add --no-cache build-base

RUN mkdir /app
WORKDIR /app

COPY . .

# Download all the dependencies
RUN go get -d -v ./...

# Install the packages
RUN go install -v ./...

# Build our app
RUN go build -o /build

EXPOSE 8080

CMD ["/build"]
