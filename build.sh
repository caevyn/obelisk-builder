#!/bin/bash
git clone https://github.com/caevyn/blog.git
cd ./blog
mix do deps.get, deps.compile
mix obelisk build
touch log.txt
if [ $? -eq 0 ]
then
  aws s3 sync build s3://maltmurphy.com/ --delete >> log.txt
else
  echo 'obelisk build failed.' >> log.txt
  aws s3 sync log.txt s3://maltmurphy-logs/ --delete
fi
