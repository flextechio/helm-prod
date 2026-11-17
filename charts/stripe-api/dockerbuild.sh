cd ../../cosmere/go/src/roshar/services/stripe-api
make dockerbuild
docker build -t stripe-api -f Dockerfile .
rm -f stripe-api
cd -
