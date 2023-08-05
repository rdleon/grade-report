FROM golang:alpine

LABEL maintainer="Rafael Diaz de Leon"

RUN apk update && apk add --no-cache git && apk add --no-cache bash && apk add --no-cache build-base

RUN mkdir /app
WORKDIR /app

COPY . .
