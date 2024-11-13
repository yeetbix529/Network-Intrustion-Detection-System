# Intrusion Detection System
This project sets up an Intrusion Detection System (IDS) using a data pipeline to detect and analyze security threats, leveraging the ELK stack and Snort for real-time monitoring and visualization.

# Project Timeline:
![Screenshot_2024-11-13_17-38-38](https://github.com/user-attachments/assets/07e472ba-aa5f-4ede-ba52-ec706574f1e2)

# Overview:
A common pipeline known as the ELK stack, allows for data ingestion via logfile through to visiual analytics.
this pipeline uses:
 - snort Detects - network intrusions and generates alerts for suspicious traffic.
 - filebeat - forwards Snort logs to Logstash.
 - logstash - processes and parses data to prepare it for Elasticsearch.
 - elasticsearch - stores and indexes logs for fast searching.
 - kibana - visualizes data and provides dashboards for threat analysis.
   
# Key Features
- Event Monitoring: Track security events and analyze trends.
- Traffic Flow Analysis: Visualize inbound and outbound network traffic.
- Source/Destination Analysis: Identify IPs associated with suspicious activities.
- Protocol Insights: Understand network usage and spot unusual protocol behavior.
- Alerting: Real-time alerts based on Snort's detections.
- Performance Metrics: Dashboards to monitor system health and performance.

# Getting Started
Prerequisites: 
Snort installed and configured on the network.
Filebeat, Logstash, Elasticsearch, and Kibana installed.
