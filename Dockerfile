FROM node:10.4

RUN yarn global add sails
RUN mkdir /src
WORKDIR /src
ADD app/package.json /src/package.json
ADD app/yarn.lock /src/yarn.lock
RUN yarn install

EXPOSE 3000

CMD npm start
