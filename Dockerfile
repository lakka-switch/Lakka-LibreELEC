#
# Lakka Dockerfile
#
# Allows building Lakka through Docker.
#
# Usage:
#
#    docker build -t lakka .
#    docker run -it -v $(pwd):/root lakka
#

FROM ubuntu:xenial

RUN apt-get update \
	&& apt-get -y upgrade \
	&& apt-get -y install \
		bash \
		bc \
		build-essential \
		bison \
		bsdmainutils \
		bzip2 \
		cpio \
		chrpath \
		diffstat \
		diffutils \
		flex \
		g++ \
		gawk \
		gcc \
		git-core \
		gperf \
		gzip \
		gnat \
		libjson-perl \
		libncurses5-dev \
		libsdl1.2-dev \
		libssl-dev \
		lzop \
		make \
		patch \
		patchutils \
		perl \
		sed \
		swig curl \
		tar \
		texinfo \
		unzip \
		wget \
		whiptail \
		xfonts-utils \
		xsltproc \
		xz-utils \
		zip \
		zlib1g-dev \
	&& rm -rf /var/lib/apt/lists/*

ENV HOME /root
ENV DISTRO Lakka

VOLUME /root

WORKDIR /root

CMD make image