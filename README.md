# docker-kafka-zk-cluster
kafka和zookeeper集群


#创建自己的网络
#docker network create --driver bridge --subnet=182.18.1.0/24 --gateway=182.18.1.1 steer-bridge

buid:
sudo docker build -t steer/kafka-cluster:v1 .


run:
sudo docker run --name kafka-cluster31 -p 9093:9092 -p 2182:2181 --network=steer-bridge --ip 182.18.1.31 -d steer/kafka-cluster:v1


sudo docker run --name kafka-cluster32 -p 9094:9092 -p 2183:2181 --network=steer-bridge --ip 182.18.1.32 -d steer/kafka-cluster:v1


sudo docker run --name kafka-cluster33 -p 9095:9092 -p 2184:2181 --network=steer-bridge --ip 182.18.1.33 -d steer/kafka-cluster:v1

