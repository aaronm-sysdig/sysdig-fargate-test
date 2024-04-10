# Use Alpine Linux as the base image
FROM alpine:latest

# Add a new user "sysdig-fargate-validator" without a home directory
RUN adduser -D -g '' -h /home/sysdig-fargate-test sysdig-fargate-test

# Copy our script into the image
COPY sysdig-fargate-test.sh /home/sysdig-fargate-test/sysdig-fargate-test.sh
RUN chmod +x /home/sysdig-fargate-test/sysdig-fargate-test.sh

# Switch to the new user
USER sysdig-fargate-test

# Set the working directory to the user's home directory
WORKDIR /home/sysdig-fargate-test

# Run the script
CMD ["/home/sysdig-fargate-test/sysdig-fargate-test.sh"]
