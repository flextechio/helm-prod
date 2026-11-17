cd ../../cosmere/go/src/roshar/services/rewards-svc/cmd/update-welcome-rewards
make dockerbuild
docker build -t update-welcome-rewards -f Dockerfile .
rm -f update-welcome-rewards
cd -
