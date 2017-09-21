FROM buildpack-deps:xenial

LABEL maintainer="Wáng Hǎiliàng"

# Go
ENV GOLANG_VERSION 1.8.3

ENV https_proxy socks5://docker.for.mac.localhost:1080 

RUN url="https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz"; \
	curl -L -o go.tgz "$url"; \
	tar -C /usr/local -xzf go.tgz; \
	rm go.tgz;

ENV https_proxy ""

# apt
RUN apt-get update && apt-get install -y --no-install-recommends \
		xvfb \
	&& rm -rf /var/lib/apt/lists/*

ADD go_run.sh /usr/bin/

ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
