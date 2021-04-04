FROM node:13

WORKDIR /usr/src

COPY package.json ./

RUN rm -rf node_modules

RUN npm install

WORKDIR /usr/src/app

COPY ./src .

EXPOSE 8080

CMD [ "node", "server.js" ]