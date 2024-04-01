# Sysdig Fargate Detection Test Container

This Docker container is designed to help validate the effectiveness of Sysdig's monitoring and security detection capabilities within AWS Fargate environments. By performing specific actions that are typically monitored or should trigger alerts, users can ensure that their Sysdig setup is correctly capturing and alerting on activities within their Fargate workloads.

## Overview

The `sysdig-fargate-test` container executes a simple operation: it periodically touches a file named `sysdig.fargate.test.file` under the user `sysdig-fargate-test`'s home directory. This action is intended to simulate an event that, under normal circumstances, might be benign, but within the context of this test, is used to verify that monitoring tools are actively scanning and identifying changes in the containerized environment.

## Usage

To use this container, deploy it within your AWS Fargate environment in the same manner as you would any other containerized application and ensure that Sysdig is instrumenting the container. Building the Container

1. Clone this repository.
2. Navigate to the directory containing the Dockerfile.
3. Build the container using Docker:
   ```
   docker build -t sysdig-fargate-detect .
   ```

### Deploying to AWS Fargate

Follow your standard procedure for deploying containers to AWS Fargate, using the image built in the previous step.  Ensure the `Sysdig Fargat Validation Test` policy (and associated rule) is enabled

## Configuration

No additional configuration is required for the container itself. However, ensure your Sysdig agent is configured to detect file modifications, especially the creation or touch actions against the `sysdig.fargate.test.file`.
