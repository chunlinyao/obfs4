FROM golang:alpine3.12
MAINTAINER Yao Chunlin <chunlinyao@gmail.com>

# Install Go for building obfs4proxy.
WORKDIR /go/src/app
RUN apk update
RUN apk add openssh
COPY . /go/src/app
# Install obfs4proxy
#RUN go get gitlab.com/yawning/obfs4.git/obfs4proxy 
RUN go build -o obfs4proxy/obfs4proxy ./obfs4proxy
#RUN mv /go/bin/obfs4proxy /usr/local/bin/obfs4proxy


