cd ../../cosmere/go/src/roshar/services/rewards-svc/cmd/airdrop
make dockerbuild
docker build -t airdrop-job -f Dockerfile .
rm -f airdrop-job
cd -
