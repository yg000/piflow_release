#!/bin/bash
#java -cp piflow-server-0.9.jar:./classpath/piflow-external.jar cn.piflow.api.Main

source /etc/profile
export HADOOP_HOME=/usr/hdp/current/hadoop-client
export PATH=$PATH:${HADOOP_HOME}/bin:${HADOOP_HOME}/sbin

export HADOOP_CONF_DIR=/usr/hdp/current/hadoop-client/etc/hadoop

export SPARK_HOME=/usr/hdp/current/spark2-client
export PATH=$PATH:${SPARK_HOME}/bin:${SPARK_HOME}/sbin

export SPARK_MAJOR_VERSION=2

java -cp piflow-server-0.9.jar:./classpath/* cn.piflow.api.Main
