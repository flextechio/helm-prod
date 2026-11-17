cd ../../cosmere/go/src/roshar/services/rewards-svc/cmd/airdrop
make dockerbuild
docker build -t update-merchant-applinks -f Dockerfile .
rm -f update-merchant-applinks
cd -
