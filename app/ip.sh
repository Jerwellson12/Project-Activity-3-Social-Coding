#!/bin/bash

mkdir tempdir
mkdir tempdir/index
mkdir tempdir/style

cp ip.py tempdir/.
cp -r index/* tempdir/index/.
cp -r style/* tempdir/style/.

cd tempdir
docker build -t ip .
docker rm -f iprunning
docker run -t -d -p 5000:5000 --name iprunning ip
docker ps -a
