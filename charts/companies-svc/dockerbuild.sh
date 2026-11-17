cd ../../../cosmere/go/src/roshar/services/companies-svc
make dockerbuild
docker build -t companies-service -f Dockerfile .
rm -f companies-service
cd -
