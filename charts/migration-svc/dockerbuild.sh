cd ../../cosmere/go/src/roshar/services/migration-svc
make dockerbuild
docker build -t migration-service -f Dockerfile .
rm -f migration-svc
cd -
