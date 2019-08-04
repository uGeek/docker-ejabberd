FROM arm32v7/debian:buster
MAINTAINER angel <ugeekpodcast@gmail.com>

RUN apt-get -y update; \
    apt-get -y upgrade; \
    apt-get -y install apt-utils \
    ejabberd;


EXPOSE 5280
EXPOSE 5222
EXPOSE 5269

VOLUME /etc/ejabberd/


ENTRYPOINT service ejabberd start && /bin/bash
CMD ["bash"]

