FROM ubuntu:12.04
MAINTAINER Kevin Manley <kevin.manley@gmail.com

RUN apt-get update

RUN apt-get install -y git
RUN apt-get install -y python-setuptools
RUN apt-get install -y python-pip
RUN easy_install -U pyechonest
RUN pip install Flask

RUN git clone https://github.com/kmanley/freshbeats.git

WORKDIR freshbeats

EXPOSE 5000

CMD /bin/bash



