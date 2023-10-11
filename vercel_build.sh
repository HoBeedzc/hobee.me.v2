# build.sh
#!/bin/bash

# install go
yum install go

# install hugo lastest version
git clone https://github.com/gohugoio/hugo.git -b release-0.119.0 hugo-source
cd hugo-source
git checkout -b release-0.119.0
git branch
exit
go build

cd ..
./hugo-source/hugo version

# Build the Hugo site
./hugo-source/hugo mod get -u
./hugo-source/hugo --gc --minify
