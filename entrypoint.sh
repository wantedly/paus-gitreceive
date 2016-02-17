#!/bin/bash

if [ ! -d /home/git/.ssh ]; then
  mkdir /home/git/.ssh
  chown -R git /home/git/.ssh
fi

if [ -f /var/run/docker.sock ]; then
  chmod o+rw /var/run/docker.sock
fi

exec $@
