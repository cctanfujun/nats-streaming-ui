# NATS Streaming UI

COPY FROM https://gitlab.com/united-travel-tickets/common/nats-streaming-ui AND FIX SOME BUG


Powerful dashboard for the [Nats Streaming](https://nats-io.github.io/docs/nats_streaming/intro.html)

<a href="https://www.npmjs.com/package/nats-streaming-ui"><img src="https://badgen.net/npm/v/nats-streaming-ui?icon=npm&label" alt="NPM" title="NPM" /></a>
<img src="https://badgen.net/npm/license/nats-streaming-ui" />

<img src="https://gitlab.com/united-travel-tickets/common/nats-streaming-ui/raw/master/docs/screenshots.gif" alt="Nats Streaming UI" />

## Features

- Dashboard - some metrics like number of messages, channels, subscriptions, etc.
- Channels - channels list, ability to create new channel, push message to the queue
- Subscriptions
- Clients



## How to run with Docker

start nats-streaming first，and open monitor on port 8222

```shell script
docker-compose build && docker-compose up
```

Follow the link http://127.0.0.1:8283

## How to run locally

start nats-streaming first，and open monitor on port 8222

```shell script
git https://gitlab.com/united-travel-tickets/common/nats-streaming-ui.git
cd nats-streaming-ui
yarn run build:react
node ./server/index.js
```

## Credits

- [React](https://reactjs.org)
- [Socket.io](https://socket.io/)
- [Express](https://expressjs.com)
- [material-ui](https://material-ui.com/)
- [nats-nerve](https://www.npmjs.com/package/nats-nerve)
- [shortid](https://www.npmjs.com/package/shortid)
- [axios](https://www.npmjs.com/package/axios)
- [clsx](https://www.npmjs.com/package/clsx)

## Inspired By

- [nats-streaming-console by KualiCo](https://github.com/KualiCo/nats-streaming-console)
- Google Cloud Pub/Sub
