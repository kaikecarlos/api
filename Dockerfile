FROM node:lts-alpine

WORKDIR /github/workspace

COPY Dockerfile ./
COPY package*.json ./

RUN npm ci --only=production

COPY . .

EXPOSE 80
CMD [ "node", "server.js" ]
