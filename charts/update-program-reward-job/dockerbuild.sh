cd ../../cosmere/go/src/roshar/services/loyalty-svc
make dockerbuild
docker build -t update-program-reward -f Dockerfile .
rm -f update-program-reward
cd -
