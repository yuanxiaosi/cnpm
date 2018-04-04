#FROM node:8.4.0-alpine

FROM reg.miz.so/library/node:8.4.0-alpine
MAINTAINER Bono Lv <lvscar  {aT} gmail.com>

# Working enviroment
ENV \
    CNPM_DIR="/usr/local/app/web-mnpm" \
    CNPM_DATA_DIR="/private/var/data/mnpm_data" 

RUN mkdir  -p ${CNPM_DIR}

WORKDIR ${CNPM_DIR}

COPY package.json ${CNPM_DIR}

RUN yarn install

COPY .  ${CNPM_DIR}
COPY config/dockerConfig.js  ${CNPM_DIR}/node_modules/cnpmjs.org/config/index.js

EXPOSE 7001/tcp 7002/tcp

#VOLUME ["/private/var/data/mnpm_data"]

# Entrypoint
CMD ./node_modules/.bin/cnpmjs.org start



