cd ../../cosmere/go/src/roshar/services/script-svc
make dockerbuild
docker build -t script-service -f Dockerfile .
rm -f script-service
cd -
