#!/bin/bash

/usr/lib/kafka_2.10-0.8.2.1/bin/kafka-console-consumer.sh --consumer.config /usr/lib/kafka_2.10-0.8.2.1/config/consumer-batch.properties --zookeeper localhost:2181 --topic points > temporary_points
/usr/lib/kafka_2.10-0.8.2.1/bin/kafka-console-consumer.sh --consumer.config /usr/lib/kafka_2.10-0.8.2.1/config/consumer-batch.properties --zookeeper localhost:2181 --topic centers > temporary_centers

timestamp=$(date +"%F_%H_%M_%S")

head -500 temporary_points > "new_points"_$timestamp
head -10 temporary_centers > "new_centers"_$timestamp

$(/usr/lib/hadoop-2.7.0/bin/hdfs dfs -put new_points_$timestamp /tmp/batch/new_points_$timestamp)
$(/usr/lib/hadoop-2.7.0/bin/hdfs dfs -put new_centers_$timestamp /tmp/batch/new_centers_$timestamp)

rm temporary_points
rm temporary_centers

rm "new_points"_$timestamp
rm "new_centers"_$timestamp
