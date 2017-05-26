# 乐财税docker #
普正乐财税docker环境

## 服务安装与运行 ##
**一、创建目录**

mkdir -p /pzedu/data/jenkins (*jenkins 数据工程目录*)

chown -R 1000:1000 /pzedu/data/jenkins

mkdir -p /pzedu/data/jira (*jira 数据目录*)

chown -R 1000:1000 /pzedu/data/jira

mkdir -p /pzedu/data/jira_mysql (*jira mysql 数据库目录*)

**二、下载git项目**

cd /pzedu

git clone https://github.com/linkeer8802/lecaishui-docker.git

**三、运行容器**

1. 启动jenkis、jira、mysql

cd /pzedu/lecashui-docker/lecaishui-infrastructure/docker-devops

docker-compose up (*后台运行可在命令后加-d参数*)
