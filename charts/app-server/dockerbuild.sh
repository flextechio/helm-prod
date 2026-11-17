cd ../../cosmere/go/src/roshar/services/app-server
make dockerbuild
docker build -t app-server -f Dockerfile .
rm -f app-server
cd -
