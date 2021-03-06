const { getInstance } = require("nats-nerve");

const options = {
  server: process.env.STAN_URL || "nats://0.0.0.0:4222",
  monitor: process.env.STAN_MONITOR_URL || "http://0.0.0.0:8222",
  cluster: process.env.STAN_CLUSTER || "test-cluster",
  appName: "nats-streaming-ui"
};

const getNerveInstance = async () => {
  const { server, cluster, appName } = options;
  return getInstance(server, cluster, appName);
};

console.log({ options: options });

module.exports = { getNerveInstance, options };
