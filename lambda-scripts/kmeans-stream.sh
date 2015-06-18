#!/bin/bash

/usr/lib/flink-yarn-0.8.1/bin/flink run /usr/lib/flink-yarn-0.8.1/examples/flink-java-examples-0.8.1-KMeans-stream.jar /tmp/stream/new_points /tmp/stream/new_centers /tmp/stream/new_result 10  
