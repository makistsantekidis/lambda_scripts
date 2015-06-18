#!/bin/bash

datafile=/tmp/points
data=""

while read -r line
do
  data+=$line"\n"
done < $datafile
data=${data::-2}

echo -e $data | /usr/lib/kafka_2.10-0.8.2.1/bin/kafka-console-producer.sh --broker-list snf-660017:9092 --topic points

datafile=/tmp/centers
data=""

while read -r line
do
  data+=$line"\n"
done < $datafile
data=${data::-2}

echo -e $data | /usr/lib/kafka_2.10-0.8.2.1/bin/kafka-console-producer.sh --broker-list snf-660017:9092 --topic centers
