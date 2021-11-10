=======================================================
 README: Serverless Functions built/deployed by Docker
=======================================================

We want to rebuild one of our services (currently implemented as a set
of Docker Compose containers) as a serverless app using AWS Lambda and
API Gateway. We will use the Serverless Framework to package and
deploy our app to AWS. Our CI/CD system, Bamboo-6.5.1, doesn't have
nodejs on it so we cannot run serverless framework directly in Bamboo.

Our workaround is to build/package using Serverless Framework running
in a container. That container will have a modern node verison
installed, then install Serverless.

Our app itself will still be in Python.

Usage
=====

Build the container from a node base and install Serverless Framework::

  make build

Mount this directory and use Serverless Framework to build and deploy
our app. We pass in our AWS_PROFILE name, and mount the AWS
credentials file so it has permissions to deploy::

  export AWS_PROFILE=wp-dev
  make sls_deploy

