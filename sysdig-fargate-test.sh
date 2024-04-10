#!/bin/sh

# Loop indefinitely, writing the current date and log to STDOUT the action every 60 seconds
while true; do
  CURRENT_DATE="$(date)"
  echo "Writing '${CURRENT_DATE}' to /home/sysdig-fargate-test/sysdig.fargate.test.file"
  echo "${CURRENT_DATE}" > /home/sysdig-fargate-test/sysdig.fargate.test.file
  sleep 60
done
