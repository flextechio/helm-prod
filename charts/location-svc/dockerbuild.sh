cd ../../cosmere/go/src/roshar/services/location-svc
make dockerbuild
docker build -t location-service -f Dockerfile .
rm -f location-service
cd -
