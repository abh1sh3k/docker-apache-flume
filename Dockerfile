FROM openjdk:8

ADD http://mirrors.estointernet.in/apache/flume/1.8.0/apache-flume-1.8.0-bin.tar.gz /opt

RUN cd /opt && tar zxf apache-flume-1.8.0-bin.tar.gz && rm apache-flume-1.8.0-bin.tar.gz && mv apache-flume* apache-flume

WORKDIR /opt/apache-flume

ENV AGENT=agent

CMD [ "sh","-c", "./bin/flume-ng agent -n ${AGENT} -c conf -f conf/flume-conf.properties" ]