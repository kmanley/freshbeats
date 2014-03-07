FROM kmanley/freshbeats-base:1.0
MAINTAINER Kevin Manley <kevin.manley@gmail.com

RUN git clone https://github.com/kmanley/freshbeats.git

WORKDIR freshbeats

EXPOSE 5000

CMD /bin/bash



