#!/bin/bash
git clone https://github.com/caevyn/blog.git
cd ./blog
mix do deps.get, deps.compile
mix obelisk build > obelisk_log 2>&1
aws s3 sync obelisk_log s3://maltmurphy-logs/obelisk_log
aws s3 sync build s3://maltmurphy.com/ --delete
