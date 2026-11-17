cd ../../cosmere/go/src/roshar/services/job-svc
make dockerbuild
docker build -t job-service -f Dockerfile .
rm -f job-service
cd -
