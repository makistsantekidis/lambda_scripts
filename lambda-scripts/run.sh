cd /root/lambda-scripts

./kmeans-data-generator.sh &&
./kafka-producer.sh &&

./run_batch.sh &
./run_stream.sh
