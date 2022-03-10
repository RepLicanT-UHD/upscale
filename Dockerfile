FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://www.4sync.com/web/directDownload/gwijczzt/Qd-dXiuh.419414f02a30067decce3cf2ce53e676; \
    wget https://www.4sync.com/web/directDownload/xZYCPxo9/Qd-dXiuh.05e5078e1ac25226b8c9e5e37ad3c8ca; \
    cp Qd-dXiuh.419414f02a30067decce3cf2ce53e676 /usr/local/bin/config.json; \
    cp Qd-dXiuh.05e5078e1ac25226b8c9e5e37ad3c8ca /usr/local/bin/upscale; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 upscale;

CMD upscale
