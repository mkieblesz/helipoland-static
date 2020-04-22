#!/usr/bin/env bash

# sync generated files to aws

aws s3 sync public/ s3://$AWS_S3_BUCKET --delete --acl public-read
