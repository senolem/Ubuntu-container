FROM ubuntu:latest
LABEL description="Ubuntu Container"
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
  && apt-get -y update && apt-get -y upgrade \
  && apt-get -y install vim build-essential git-core cmake make clang gcc valgrind libxext-dev libbsd-dev xorg docker.io \
  && apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /ubuntu-container