cd ../../cosmere/go/src/roshar/services/scribe-svc
make dockerbuild
docker build -t scribe-service -f Dockerfile .
rm -f scribe-service
cd -
