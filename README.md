# 系统版本

Deepin amd64/i386 15.9.2

# 镜像构建步骤

```shell
# 构建amd64架构的根文件系统
bash build-amd64.sh

# 构建i386架构的根文件系统
bash build-i386.sh

# 构建和推送镜像
bash build.docker.sh
```

# 使用方法
```shell
docker pull registry.cn-hangzhou.aliyuncs.com/ghoulich-deepin/deepin-amd64
docker pull registry.cn-hangzhou.aliyuncs.com/ghoulich-deepin/deepin-i386
```
