
FROM centos:latest
MAINTAINER harkamals@gmail.com

WORKDIR /app
COPY payload/* /app

#--[ Common utils ]------------
RUN yum install -y \
    nano \
    wget \
    curl \
    unzip \
    git

#--[ Golang ]------------------
RUN tar -C /usr/local -xzf go1.9.5.linux-amd64.tar.gz
RUN mkdir -p /usr/go
ENV GOPATH=/usr/go
ENV PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

#--[ Beego web framework ]-----
RUN /usr/local/go/bin/go get github.com/beego/bee

#--[ Finalize ]----------------
RUN go version
RUN bee version


