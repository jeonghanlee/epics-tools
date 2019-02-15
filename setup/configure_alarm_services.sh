#!/bin/sh
# Ensure that the kafka.service is running

# create the alarm topics
cd /home/train/epics-tools/clients/phoebus/app/alarm/examples
ln -s /home/train/epics-tools/services/kafka_2.11-2.1.0 kafka

./create_alarm_topics.sh Accelerator
