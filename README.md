# 乐财税docker #
普正乐财税docker化境


## 基础软件安装 ##

**一、docker安装**

sudo yum remove docker docker-common container-selinux docker-selinux docker-engine

sudo yum install -y yum-utils device-mapper-persistent-data lvm2

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum-config-manager --enable docker-ce-edge （*可选*）

sudo yum install docker-ce


详细请参考[Get Docker for CentOS](https://docs.docker.com/engine/installation/linux/centos/ "Get Docker for CentOS")

**二、git安装**

sudo yum install -y git

**三、docker-compose安装**

curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

**四、国内docker镜像加速**

vi /etc/docker/daemon.json

添加以下文本

{
  “registry-mirros”: [" http://1f1c733d.m.daocloud.io"]
}



## 服务安装与运行 ##
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
