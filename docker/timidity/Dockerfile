FROM ubuntu

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get update && \
apt-get install -y fluid-soundfont-gm && \
apt-get install -y timidity

COPY convert.sh /convert.sh

ENTRYPOINT ["/convert.sh"]

