FROM docker:dind

RUN sed -i "s|http://dl-cdn.alpinelinux.org|https://mirrors.ustc.edu.cn|g" /etc/apk/repositories \
    && apk add --no-cache py-pip  \
    && pip install docker-compose --upgrade \
    && docker-compose -h
