# Apache flume

## Sample flume-conf.properties

```
agent.sources = s1
agent.channels = c1
agent.sinks = k1

agent.sources.s1.type = http
agent.sources.s1.handler = org.apache.flume.source.http.JSONHandler
agent.sources.s1.channels = c1
agent.sources.s1.bind = 0.0.0.0
agent.sources.s1.port = 5561

agent.channels.c1.type = memory

# Each sink's type must be defined
agent.sinks.k1.type = logger

# Specify the channel the sink should use
agent.sinks.k1.channel = c1
```
## Start a flume instance

```sh
$ docker run -d -v $PWD/flume-conf.properties:/opt/apache-flume/conf/flume-conf.properties -p 5561:5561 --name flume abh1sh3k/apache-flume
```