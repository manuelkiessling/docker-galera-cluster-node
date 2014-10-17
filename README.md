# Notes

docker run -t -i -p 3306:3306 -p 4444:4444 -p 4567:4567 -p 4568:4568 $(etcdctl get /endpoints/registry)/galera-cluster-node:v1 /bin/bash
