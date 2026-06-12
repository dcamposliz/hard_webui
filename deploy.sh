#!/bin/bash
# deploy hard_webui -> S3 + CloudFront invalidation (creds in env)
set -e
cd "$(dirname "$0")"
aws s3 sync . s3://duro-fit-webui \
  --exclude ".git/*" --exclude "deploy.sh" --exclude "README.md" \
  --delete
DIST=$(cd ../hard_iac && terraform output -raw webui_distribution_id)
aws cloudfront create-invalidation --distribution-id "$DIST" --paths "/*" --query "Invalidation.Id" --output text
echo "deployed -> https://duro.fit"
