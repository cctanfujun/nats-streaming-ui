FROM node

WORKDIR /opt/nats-streaming-ui

COPY package.json /opt/nats-streaming-ui/package.json

RUN yarn global add pm2

RUN yarn install

COPY . /opt/nats-streaming-ui

EXPOSE 8282

ENTRYPOINT pm2-docker start pm2.ecosystem.yaml