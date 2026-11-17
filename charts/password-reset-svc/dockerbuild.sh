cd ../../cosmere/go/src/roshar/services/password-reset-svc
make dockerbuild
docker build -t password-reset-service -f Dockerfile .
rm -f password-reset-service
cd -
