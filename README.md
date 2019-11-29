# 介绍
基于 Ansible 一键安装 [SkyWalking](http://skywalking.apache.org)

# 支持系统

- CentOS 7.x

# Role 说明

| role | 功能 | 默认端口 | 
| :---- | ---- | ---- | 
| init | 环境初始化，包括：<br>- 关闭Selinux<br>- 关闭防火墙<br>- 更换yum源为阿里源<br>- 设置时区为 Asia/Shanghai<br>- 安装NTP<br>- 设置ntp时钟同步<br>- 增加文件描述符<br>- 禁用交换<br>- 调整虚拟内存<br>- 调整最大并发连接<br>- 配置线程数<br>- 设置 ip 转发<br>- 安装 vim<br>- 开启BBR（未实现） | - | 
| jdk | 安装jdk（1.8） | - | 
| nodejs | - 安装node.js（12.13.1）<br>- 更换npm源为阿里源 | - | 
| elasticsearch6.x | 安装 elasticsearch（6.8.5）单机或集群 | 9200 | 
| elasticsearch7.x | 安装 elasticsearch（7.4.2）单机或集群 | 9200 | 
| elasticsearch-head | 安装 elasticsearch-head（5.0.0） 插件 | 9100 | 
| skywalking6.x | 安装 skywalking（6.5.0） | 8080 | 
| skywalking7.x | 安装 skywalking（7） | 8080 | 

# 使用
```bash
# 下载软件包
$ cd shell
$ chmod +x ./*.sh
$ ./download-package.sh

# 修改主机清单
$ vim hosts

# 配置变量
$ vim group_vars/main.yml

# 安装
$ ansible-playbook -i hosts site.yml
```

# 特殊说明

## 使用 elasticsearch 6.x
site.yml
```yaml
  roles: 
    - { role: init }
    - { role: elasticsearch6.x }
```
## 使用 elasticsearch 7.x
site.yml
```yaml
  roles: 
    - { role: init }
    - { role: elasticsearch7.x }
```

