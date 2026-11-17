cd ../../../cosmere/go/src/roshar/services/rewards-svc
make dockerbuild
docker build -t rewards-service -f Dockerfile .
rm -f rewards-service
cd -
