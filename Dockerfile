FROM node:8-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json .
RUN npm install -g nodemon
RUN yarn install

COPY . .

EXPOSE 3000
CMD [ "npm", "run", "start.dev" ]