#!/bin/bash

/usr/lib/kafka_2.10-0.8.2.1/bin/kafka-console-consumer.sh --consumer.config /usr/lib/kafka_2.10-0.8.2.1/config/consumer-stream.properties --zookeeper localhost:2181 --topic points > temporary_points
/usr/lib/kafka_2.10-0.8.2.1/bin/kafka-console-consumer.sh --consumer.config /usr/lib/kafka_2.10-0.8.2.1/config/consumer-stream.properties --zookeeper localhost:2181 --topic centers > temporary_centers

head -500 temporary_points > /tmp/stream/new_points
head -10 temporary_centers > /tmp/stream/new_centers

rm temporary_points
rm temporary_centers
