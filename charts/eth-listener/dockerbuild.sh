cd ../../cosmere/go/src/roshar/services/ethereum-listener
make dockerbuild
docker build -t eth-listener -f Dockerfile .
rm -f eth-listener
cd -
