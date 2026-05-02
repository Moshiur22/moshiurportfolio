#!/bin/bash
cd /home/z/my-project
while true; do
  echo "Starting Next.js dev server..."
  bun x next dev -p 3000 2>&1 | tee -a /tmp/dev-server-robust.log
  echo "Server crashed or stopped, restarting in 5 seconds..."
  sleep 5
done
