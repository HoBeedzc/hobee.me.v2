# build.sh
#!/bin/bash

# install go
yum install go

# install hugo lastest version
git clone https://github.com/gohugoio/hugo.git hugo-source
cd hugo-source
git checkout release-0.119.0

go install --tags extended
go build --tags extended

cd ..
./hugo-source/hugo version

# Build the Hugo site
./hugo-source/hugo mod get -u
./hugo-source/hugo --gc --minify
