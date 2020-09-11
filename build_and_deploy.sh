#!/bin/bash

mvn --version

/usr/local/bin/terraform --version
/usr/local/bin/terragrunt --version

echo "Running the build_and_deploy.sh script"

pushd ../terraform-TESTING/asana-jira-integration-lambda
  pwd
  ls
  python --version
  python3 --version
popd

# This script assumes that the terraform repo is a sibling to this repo
# pushd ../terraform/asana-jira-integration-lambda
#   terragrunt init
#   ./plan.sh $PATH_TO_JAR
#   ./apply.sh $PATH_TO_JAR
# popd