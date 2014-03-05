FROM ubuntu:12.04
MAINTAINER Kevin Manley <kevin.manley@gmail.com

RUN apt-get update

RUN apt-get install -y python-setuptools
RUN apt-get install -y python-pip
RUN easy_install -U pyechonest
RUN pip install Flask

RUN mkdir code
WORKDIR code

EXPOSE 5000

ENTRYPOINT /bin/bash



