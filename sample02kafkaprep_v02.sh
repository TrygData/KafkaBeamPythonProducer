#ssh sshuser@10.101.12.19

cd /usr/hdp/2.6.1.10-4/kafka/bin

./kafka-topics.sh --zookeeper 10.101.12.11:2181 --delete --topic customer1
./kafka-topics.sh --create --zookeeper 10.101.12.11:2181 --replication-factor 4 --partitions 4 --topic customer1
./kafka-configs.sh --zookeeper 10.101.12.11:2181 --alter --entity-type topics --entity-name customer1 --add-config retention.ms=1000000000

./kafka-topics.sh --zookeeper 10.101.12.11:2181 --delete --topic policy1
./kafka-topics.sh --create --zookeeper 10.101.12.11:2181 --replication-factor 4 --partitions 4 --topic policy1
./kafka-configs.sh --zookeeper 10.101.12.11:2181 --alter --entity-type topics --entity-name policy1 --add-config retention.ms=1000000000

./kafka-topics.sh --zookeeper 10.101.12.11:2181 --delete --topic claim1
./kafka-topics.sh --create --zookeeper 10.101.12.11:2181 --replication-factor 4 --partitions 4 --topic claim1
./kafka-configs.sh --zookeeper 10.101.12.11:2181 --alter --entity-type topics --entity-name claim1 --add-config retention.ms=1000000000

./kafka-topics.sh --zookeeper 10.101.12.11:2181 --delete --topic claimpayment1
./kafka-topics.sh --create --zookeeper 10.101.12.11:2181 --replication-factor 4 --partitions 4 --topic claimpayment1
./kafka-configs.sh --zookeeper 10.101.12.11:2181 --alter --entity-type topics --entity-name claimpayment1 --add-config retention.ms=1000000000

./kafka-topics.sh --zookeeper 10.101.12.11:2181 --delete --topic total1
./kafka-topics.sh --create --zookeeper 10.101.12.11:2181 --replication-factor 4 --partitions 4 --topic total1
./kafka-configs.sh --zookeeper 10.101.12.11:2181 --alter --entity-type topics --entity-name total1 --add-config retention.ms=1000000000

