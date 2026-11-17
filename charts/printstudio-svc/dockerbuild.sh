cd ../../cosmere/go/src/roshar/services/printstudio-svc
make dockerbuild
docker build -t printstudio-service -f Dockerfile .
rm -f printstudio-service
cd -
