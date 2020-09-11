set -e

mvn package
mvn --version
terraform --version
terragrunt --version

pushd ../HELLO-WORLD-1/TESTING
  python --version
  python3 --version
  python HelloWorld.py
  python3 HelloWorld.py
popd

# This script assumes that the terraform repo is a sibling to this repo
# pushd ../terraform/asana-jira-integration-lambda
#   terragrunt init
#   ./plan.sh $PATH_TO_JAR
#   ./apply.sh $PATH_TO_JAR
# popd