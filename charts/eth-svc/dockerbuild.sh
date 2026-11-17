cd ../../cosmere/go/src/roshar/services/eth-svc
make dockerbuild
docker build -t ethereum-service -f Dockerfile .
rm -f ethereum-service
cd -
