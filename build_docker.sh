set -x 

VERSION=`git describe --tags --abbrev=0`

docker image rm bluebiloba/gss-docker:$VERSION
docker build -t bluebiloba/gss-docker:$VERSION -f docker/Dockerfile .

