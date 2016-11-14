FROM node:7.0.0-slim

# Create app directory
RUN mkdir -p /usr/app
WORKDIR /usr/app

# Install app dependencies
COPY package.json /usr/app/
RUN npm install --production --silent --registry=https://registry.npm.taobao.org

# Bundle app source
COPY src /usr/app/src

ENV NODE_ENV=production

EXPOSE 8080
USER node
CMD [ "npm", "start" ]
