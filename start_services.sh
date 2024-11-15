#!/bin/bash
# Script to start snort, filebeat, logstash, elasticsearch, and kibana

echo "Starting Snort..."
cd /etc/snort/ 
sudo snort -c /etc/snort/snort.lua -i wlan0 -D -f || { echo "Failed to start Snort"; exit 1; }

echo "Starting filebeat..."
sudo systemctl start filebeat || { echo "Failed to start filebeat"; exit 1; }

echo "Starting logstash..."
cd /usr/share/logstash/bin
sudo bash logstash --path.settings /etc/logstash || { echo "Failed to start logstash"; exit 1; }

echo "Starting elasticsearch..."
cd /usr/share/elasticsearch/bin
sudo bash -u elasticsearch bash elasticsearch -d || { echo "Failed to start elasticsearch"; exit 1; }

echo "Starting kibana"
cd /usr/share/kibana/bin
sudo bash kibana --allow-root || { echo "Failed to start kibana"; exit 1; }
