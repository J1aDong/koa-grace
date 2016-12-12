FROM node
MAINTAINER J1aDong 991383877@qq.com

# Build app
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

RUN npm install --production

EXPOSE 3000
CMD [ "node","bin/server.js --env=production"]