#!/bin/bash

echo $GALERA_WSREP_NODE_ADDRESS >> /etc/mysql/conf.d/wsrep_node_address.cnf
while true; do echo "hello"; sleep 2; done
service mysql start

# Start confd watcher script
