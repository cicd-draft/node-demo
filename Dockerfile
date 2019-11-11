FROM node:10-alpine
#ref: https://nodejs.org/en/docs/guides/nodejs-docker-webapp/
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node","server.js"]