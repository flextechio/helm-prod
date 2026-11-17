cd ../../cosmere/go/src/roshar/services/messaging-svc
make dockerbuild
docker build -t messaging-service -f Dockerfile .
rm -f messaging-service
cd -
