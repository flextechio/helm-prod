cd ../../cosmere/go/src/roshar/services/audience-svc
make dockerbuild
docker build -t audience-service -f Dockerfile .
rm -f audience-service
cd -
