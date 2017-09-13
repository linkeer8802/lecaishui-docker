# docker-tfs #
TFS是淘宝针对海量非结构化数据存储设计的分布式系统，构筑在普通的Linux机器集群上，可为外部提供高可靠和高并发的存储访问。高可扩展、高可用、高性能、面向互联网服务


## 安装 ##

**一、挂载磁盘并分区**

sudo fdisk -l 查看磁盘和分区信息

1、对空闲的磁盘分区

如：sudo fdisk /dev/sdb

2、将数据盘格式化成EXT4文件系统

如：mkfs.ext4 /dev/sdb1

3、创建存储区数据目录

如：/data/disk1

4、挂载分区到刚创建的存储区数据目录

如：sudo mount /dev/sdb1 /data/disk1

5、重复以上步骤来分配更多的数据磁盘

docker-compose up (*后台运行可在命令后加-d参数*)
