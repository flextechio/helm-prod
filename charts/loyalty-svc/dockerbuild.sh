cd ../../cosmere/go/src/roshar/services/loyalty-svc
make dockerbuild
docker build -t loyalty-service -f Dockerfile .
rm -f loyalty-service
cd -
