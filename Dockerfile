FROM node:7.0.0-slim

# Create app directory
RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY package.json /usr/app/

ENV NODE_ENV=production

EXPOSE 8080

CMD [ "npm", "start" ]
