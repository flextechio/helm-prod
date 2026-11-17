cd ../../cosmere/go/src/roshar/services/image-svc
make dockerbuild
docker build -t image-service -f Dockerfile .
rm -f image-service
cd -
