# build.sh
#!/bin/bash

# install go
yum install go

# install hugo lastest version
git clone https://github.com/gohugoio/hugo.git hugo-source
cd hugo-source
go build

cd ..
./hugo-source/hugo version

# Build the Hugo site
./hugo-source/hugo mod get -u
./hugo-source/hugo --gc --minify
