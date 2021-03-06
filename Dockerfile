FROM mhart/alpine-node:10.6

WORKDIR /usr/app

RUN apk update && \
    apk upgrade && \
    apk add git tzdata && \
    git clone https://github.com/ThomPatterson/surveillance-gallery.git && \
    cd surveillance-gallery && \
    npm install && \
    apk del git && \
    rm -rf /tmp/npm*

WORKDIR /usr/app/surveillance-gallery

VOLUME /usr/data/images

ENV CONFIG=[{\"name\":\"Backyard\",\"directory\":\"/usr/data/images/backyard\",\"fileExt\":\".jpg\",\"daysToFetch\":4}]

ENV TZ=America/Chicago

EXPOSE 8080

CMD ["node", "index.js"]
