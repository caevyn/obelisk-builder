#Docker for building my obelisk blog
runs build.sh script which gets src, builds site and copies to s3.
Uses aws cli to access s3, need to set user related env vars 
AWS_SECRET_ACCESS_KEY and AWS_ACCESS_KEY_ID

e.g. docker run -i -t -e "AWS_SECRET_ACCESS_KEY=key" -e "AWS_ACCESS_KEY_ID=id" obelisk
