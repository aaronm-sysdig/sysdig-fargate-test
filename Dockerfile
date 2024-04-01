# Use Alpine Linux as the base image
FROM alpine:latest

# Add a new user "sysdig-fargate-validator" without a home directory
RUN adduser -D -g '' -h /home/sysdig-fargate-test sysdig-fargate-test

# Switch to the new user
USER sysdig-fargate-test

# Set the working directory to the user's home directory
WORKDIR /home/sysdig-fargate-test

# Using a loop to touch a file every 60 seconds
CMD while :; do touch sysdig.fargate.test; sleep 60; done
