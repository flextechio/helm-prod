cd ../../../cosmere/go/src/roshar/apps/referral-web
make dockerbuild
docker build -t referral-web -f Dockerfile .
rm -f referral-web
cd -
