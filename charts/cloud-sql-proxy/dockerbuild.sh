cd ../../cosmere/go/src/roshar/services/auth-svc
make dockerbuild
docker build -t auth-service -f Dockerfile .
rm -f auth-service
cd -
