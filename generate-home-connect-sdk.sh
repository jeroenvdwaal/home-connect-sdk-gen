#!/usr/bin/env bash
# ref: generate the Home Connect SDK from the Open API specification

cmd="generate"
input_spec_url="https://apiclient.home-connect.com/hcsdk-production.yaml"
output_dir="generated_client_sdk"

args=" --input-spec $input_spec_url"
args+=" --output $output_dir"
args+=" --generator-name python"
args+=" --config config.yaml"
args+=" --git-host github.com"
args+=" --git-user-id jeroenvdwaal"
args+=" --git-repo-id home-connect-sdk"


# get the most recent version of the openapi generator cli
# requires maven and other dependencies to be installed
# ref: https://openapi-generator.tech/docs/installation/

./openapi-generator-cli.sh $cmd $args


