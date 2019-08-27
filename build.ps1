set GOOS=windows
cd winpacman
go build 
rm *.*~
cd ..
rm *.*~
docker build -t glennswest/fastpacman:2019 .
docker push glennswest/fastpacman:2019

