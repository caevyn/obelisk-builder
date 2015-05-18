#!/bin/bash
git clone https://github.com/caevyn/blog.git
cd ./blog
mix do deps.get, deps.compile
mix obelisk build
aws s3 sync build s3://maltmurphy.com/ --delete
