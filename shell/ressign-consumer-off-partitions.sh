cd /usr/local/kafka/bin
./kafka-reassign-partitions.sh --zookeeper 182.18.1.31:2181,182.18.1.32:2181,182.18.1.33:2181 --reassignment-json-file ressign-consumer-off-partitions.json --execute
