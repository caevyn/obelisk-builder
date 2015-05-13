#!/bin/bash
git clone https://github.com/caevyn/blog.git
cd ./blog
mix do deps.get, deps.compile
mix obelisk build
aws s3 cp build s3://caevyn-blog/ --recursive
