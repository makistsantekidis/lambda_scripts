#!/bin/bash

#/usr/lib/flink-yarn-0.8.1/bin/flink run /usr/lib/flink-yarn-0.8.1/examples/flink-java-examples-0.8.1-KMeans-stream.jar /tmp/batch/new_points /tmp/batch/new_centers /tmp/batch/new_result 10  

batch_dir='batch'

#get hdfs folder
folders=$( /root/lambda-scripts/hdfs/ls.sh $batch_dir )

for folder in $folders
do
    #remove old result
    /root/lambda-scripts/hdfs/rm.sh ${folder}/result
    #run batch
    /usr/lib/flink-yarn-0.8.1/bin/flink run /usr/lib/flink-yarn-0.8.1/examples/flink-java-examples-0.8.1-KMeans-stream.jar hdfs:///user/root/${folder}/new_points hdfs:///user/root/${folder}/new_centers hdfs:///user/root/${folder}/new_result 10
done
