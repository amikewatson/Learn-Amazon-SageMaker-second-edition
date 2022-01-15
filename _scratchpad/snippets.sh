# delete all files and buckets in the account.
aws s3 ls | awk '{print $3}' | xargs -I {} aws s3 rb s3://{} --force
