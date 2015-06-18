#!/bin/bash
java -cp /usr/lib/flink-yarn-0.8.1/examples/flink-java-examples-0.8.1-KMeans-data.jar org.apache.flink.examples.java.clustering.util.KMeansDataGenerator 500 10 0.08
