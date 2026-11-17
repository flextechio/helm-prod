cd ../../cosmere/go/src/roshar/services/wallets-svc
make dockerbuild
mv wallets-service-linux-amd64 wallets-service
docker build -t wallets-service -f Dockerfile .
rm -f wallets-service
cd -
