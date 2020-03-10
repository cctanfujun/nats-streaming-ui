FROM node

WORKDIR /opt/nats-streaming-ui

COPY package.json /opt/nats-streaming-ui/package.json

RUN yarn global add pm2

RUN yarn install

COPY . /opt/nats-streaming-ui

EXPOSE 8282

RUN chmod +x ./makeRealIP.sh

ENTRYPOINT /opt/nats-streaming-ui/makeRealIP.sh && pm2-docker start pm2.ecosystem.yaml