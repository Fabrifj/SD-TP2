FROM node:15.13-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
CMD [ "node", "mqttSubscriber.js" ]