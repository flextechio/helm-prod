cd ../../cosmere/go/src/roshar/services/users-svc
make dockerbuild
docker build -t users-service -f Dockerfile .
rm -f users-service
cd -
