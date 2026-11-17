cd ../../cosmere/go/src/roshar/services/authn-svc/cmd/profile-update-job
make dockerbuild
docker build -t profile-update-job -f Dockerfile .
rm -f profile-update-job
cd -
