#!/bin/bash

echo $GALERA_WSREP_NODE_ADDRESS >> /etc/mysql/conf.d/wsrep_node_address.cnf

confd -interval 10 -node $ETCD_ENDPOINT -config-file /etc/confd/conf.d/mysql-galera.toml &

service mysql start

while true; sleep 2; done