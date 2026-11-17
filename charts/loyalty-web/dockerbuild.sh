cd ../../cosmere/go/src/roshar/apps/loyalty-web
make dockerbuild
docker build -t loyalty-web -f Dockerfile .
rm -f loyalty-web
cd -
