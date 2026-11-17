cd ../../cosmere/go/src/roshar/services/notifications-svc
make dockerbuild
docker build -t notifications-service -f Dockerfile .
rm -f notifications-service
cd -
