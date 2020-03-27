FROM ubuntu

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get update && \
    apt-get install -y fluid-soundfont-gm && \
    apt-get install -y timidity && \
    apt-get install -y lame

COPY ./convert.sh /convert.sh
#COPY ./testio /wrk

ENTRYPOINT ["/convert.sh"]

