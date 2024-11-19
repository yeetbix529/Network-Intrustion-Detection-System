#!/bin/bash
# Script to start logstash

echo "Starting logstash..."
cd /usr/share/logstash/bin
sudo bash logstash --path.settings /etc/logstash || { echo "Failed to start logstash"; exit 1; }
