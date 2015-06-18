#!/bin/bash

/usr/lib/kafka_2.10-0.8.2.1/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic points
/usr/lib/kafka_2.10-0.8.2.1/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic centers
