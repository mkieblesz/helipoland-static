#!/usr/bin/env bash

set -e

# sync generated files to aws
aws s3 sync public/ s3://$AWS_S3_BUCKET --delete --acl public-read

# refresh cloudfront cache (takes around 1 minute)
aws cloudfront create-invalidation --distribution-id $AWS_CF_DISTRIBUTION_ID --paths "/*"

# you can also wait until invalidation is complete
# invalidation_id=$(aws cloudfront create-invalidation --distribution-id $AWS_CF_DISTRIBUTION_ID --paths "/*" | egrep Id | awk -F'"' '{ print $4}')
# echo "Waiting for $invalidation_id invalidation completion..."
# aws cloudfront wait invalidation-completed --id $invalidation_id --distribution-id $AWS_CF_DISTRIBUTION_ID
