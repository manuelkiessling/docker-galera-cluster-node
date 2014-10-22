#!/bin/bash

# Read ENV value and create /etc/mysql/conf.d/wsrep_node_address.cnf with private address of machine

service mysql start

# Start confd watcher script
