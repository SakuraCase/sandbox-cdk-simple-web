#!/bin/bash
cd `dirname $0`

export AWS_SECRET_ACCESS_KEY=local
export AWS_ACCESS_KEY_ID=local
export AWS_DEFAULT_REGION=local

aws dynamodb create-table --endpoint-url http://localhost:8000 --cli-input-json file://hits.json

export -n AWS_SECRET_ACCESS_KEY
export -n AWS_ACCESS_KEY_ID
export -n AWS_DEFAULT_REGION

