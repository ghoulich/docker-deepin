#! /bin/bash

cd amd64
sudo docker build -t ghoulich-deepin/deepin-amd64:latest .
docker tag ghoulich-deepin/deepin-amd64:latest registry.cn-hangzhou.aliyuncs.com/ghoulich-deepin/deepin-amd64:15.9.2
docker tag ghoulich-deepin/deepin-amd64:latest registry.cn-hangzhou.aliyuncs.com/ghoulich-deepin/deepin-amd64:latest
docker push registry.cn-hangzhou.aliyuncs.com/ghoulich-deepin/deepin-amd64:15.9.2
docker push registry.cn-hangzhou.aliyuncs.com/ghoulich-deepin/deepin-amd64:latest
cd ..

cd i386
sudo docker build -t ghoulich-deepin/deepin-i386:latest .
docker tag ghoulich-deepin/deepin-i386:latest registry.cn-hangzhou.aliyuncs.com/ghoulich-deepin/deepin-i386:15.9.2
docker tag ghoulich-deepin/deepin-i386:latest registry.cn-hangzhou.aliyuncs.com/ghoulich-deepin/deepin-i386:latest
docker push registry.cn-hangzhou.aliyuncs.com/ghoulich-deepin/deepin-i386:15.9.2
docker push registry.cn-hangzhou.aliyuncs.com/ghoulich-deepin/deepin-i386:latest
cd ..
