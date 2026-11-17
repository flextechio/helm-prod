cd ../../cosmere/go/src/roshar/services/alerts-svc
make dockerbuild
docker build -t alerts-service -f Dockerfile .
rm -f alerts-service
cd -
