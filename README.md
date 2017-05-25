# lecashui-docker
乐财税docker

**一、创建目录**

根目录
mkdir pzedu

数据目录
mkdir -p pzedu/data

配置目录
mkdir -p pzedu/conf

文档目录
mkdir -p pzedu/doc

mkdir -p /pzedu/doc/pzedu-axure (*产品原型线框文档*)

mkdir -p /pzedu/doc/pzedu-statics (*UE静态文件文档*)

chown -R 1000:1000 /pzedu/doc/

**二、下载git项目**

cd pzedu
 
git clone https://github.com/linkeer8802/lecashui-docker.git


**三、build镜像**

cd /pzedu/lecashui-docker/common/docker-maven

docker build -t pzedu/maven . 
> (注意后面的**.**不能省略)

cd /pzedu/lecashui-docker/lecaishui-infrastructure/docker-disconf

docker-compose build

**四、运行容器**

1. 启动基础服务

cd /pzedu/lecashui-docker/lecaishui-infrastructure

docker-compose up (*后台运行可在命令后加-d参数*)

2. 启动disconf

cd /pzedu/lecashui-docker/lecaishui-infrastructure/docker-disconf

docker-compose up (*后台运行可在命令后加-d参数*)

3. 启动nginx

cd /pzedu/lecashui-docker/lecaishui-infrastructure/docker-nginx

docker-compose up (*后台运行可在命令后加-d参数*)
