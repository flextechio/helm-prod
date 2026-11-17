cd ../../cosmere/go/src/roshar/services/portal-api
make dockerbuild
docker build -t portal-api -f Dockerfile .
rm -f portal-api
cd -
