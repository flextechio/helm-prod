cd ../../cosmere/go/src/roshar/services/permissions-svc
make dockerbuild
docker build -t permissions-service -f Dockerfile .
rm -f permissions-service
cd -
