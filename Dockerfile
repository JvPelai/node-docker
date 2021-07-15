# syntax=docker/dockerfile:1

FROM node:12.18.1

ENV NODE_ENV=production
WORKDIR /linka-defesas-functions
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .
CMD [ "node", "server.js" ]