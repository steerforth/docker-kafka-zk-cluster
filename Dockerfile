FROM hub.c.163.com/public/centos:7.2-tools

MAINTAINER steerforth "565355716@qq.com"

#安装jdk
ADD resource/jdk-8u181-linux-x64.tar.gz /usr/local/java
ENV JAVA_HOME=/usr/local/java/jdk1.8.0_181
ENV PATH=$JAVA_HOME/bin:$PATH
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

#安装kafka
ADD resource/kafka_2.11-2.3.1.tgz /usr/local/
RUN mv /usr/local/kafka_2.11-2.3.1 /usr/local/kafka
#RUN chmod +x /usr/local/kafka/bin/*.sh
ENV CATALINA_HOME=/usr/local/kafka

#安装zookeeper
ADD resource/zookeeper-3.4.14.tar.gz /usr/local
RUN mv /usr/local/zookeeper-3.4.14 /usr/local/zookeeper
RUN chmod +x /usr/local/zookeeper/bin/*.sh


#常用脚本
RUN mkdir -p /home/shell
COPY shell/start_kafka.sh /home/shell
COPY shell/stop_kafka.sh /home/shell
COPY shell/clean_kafka_log.sh /home/shell
COPY shell/start_zk.sh /home/shell
COPY shell/stop_zk.sh /home/shell
COPY shell/check_zk_status.sh /home/shell
COPY shell/create_topics.sh /home/shell
COPY shell/ressign-consumer-off-partitions.sh /home/shell
RUN chmod +x /home/shell/*.sh

#配置文件
ADD conf/zookeeper.properties /usr/local/kafka/config
ADD conf/server.properties /usr/local/kafka/config
ADD conf/zoo.cfg /usr/local/zookeeper/conf
RUN mkdir -p /tmp/zookeeper-data
ADD conf/myid /tmp/zookeeper-data

ADD resource/ressign-consumer-off-partitions.json /usr/local/kafka/bin

#supervisord
COPY supervisord/zookeeper.conf /etc/supervisor/conf.d/
COPY supervisord/kafka.conf /etc/supervisor/conf.d/

ENTRYPOINT ["/usr/bin/supervisord"]
