#!/bin/bash


cd /home/vagrant/src/on-core
npm install

for repo in $(echo "on-tasks on-taskgraph on-http on-dhcp-proxy on-tftp on-syslog");do
  pushd /home/vagrant/src/$repo
  npm install
  npm link /home/vagrant/on-core
done


for repo in $(echo "on-taskgraph on-http");do
  pushd /home/vagrant/src/$repo
  npm link /home/vagrant/on-tasks
done
