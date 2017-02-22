FROM node:boron-alpine

RUN npm install webpack -g

WORKDIR /tmp
COPY package.json /tmp/
RUN npm config set registry http://registry.npmjs.org/ && npm install

WORKDIR /usr/src/app
COPY ./app/ /usr/src/app/
COPY ./webpack.config.js /usr/src/app/webpack.config.js
RUN cp -a /tmp/node_modules /usr/src/app/

EXPOSE 35729

ENTRYPOINT [ "/usr/local/bin/npm", "run", "watch" ]
