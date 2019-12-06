cd /usr/local/kafka/bin 
./kafka-topics.sh --create --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --replication-factor 3 --partitions 50 --topic  __consumer_offsets
./kafka-topics.sh --create --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --replication-factor 3 --partitions 3 --topic op.model.nw.checkpoint
./kafka-topics.sh --create --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --replication-factor 3 --partitions 3 --topic op.model.sp.checkpoint
./kafka-topics.sh --create --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --replication-factor 3 --partitions 3 --topic sampleMsg
./kafka-topics.sh --create --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --replication-factor 3 --partitions 3 --topic op.model.nw.equip
./kafka-topics.sh --create --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --replication-factor 3 --partitions 3 --topic op.model.sp.equip
./kafka-topics.sh --create --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --replication-factor 3 --partitions 3 --topic op.model.nw.deviceModel
./kafka-topics.sh --create --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --replication-factor 3 --partitions 3 --topic op.model.sp.deviceModel
./kafka-topics.sh --create --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --replication-factor 3 --partitions 3 --topic op.model.dataChannel
./kafka-topics.sh --create --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --replication-factor 3 --partitions 3 --topic deviceData.offline
./kafka-topics.sh --create --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --replication-factor 3 --partitions 3 --topic deviceData.history
./kafka-topics.sh --create --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --replication-factor 3 --partitions 3 --topic op.model.gateway
./kafka-topics.sh --create --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --replication-factor 3 --partitions 3 --topic events

