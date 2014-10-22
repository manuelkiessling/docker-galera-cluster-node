#!/bin/bash

echo ${COREOS_PRIVATE_IPV4} >> /etc/mysql/conf.d/wsrep_node_address.cnf

service mysql start

# Start confd watcher script
