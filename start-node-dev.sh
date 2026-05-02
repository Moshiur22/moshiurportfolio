#!/bin/bash
cd /home/z/my-project
while true; do
  echo "Starting Next.js dev server..." >> /tmp/node-dev.log
  node node_modules/.bin/next dev -p 3000 2>&1 | tee -a /tmp/node-dev.log
  echo "Server crashed, restarting..." >> /tmp/node-dev.log
  sleep 5
done
