# Introduction
Install skywalking based on ansible.

# Support system

- CentOS 7.x

# Role description

| role | description | default port | 
| :---- | ---- | ---- | 
| init | 环境初始化，包括：<br>- 关闭Selinux<br>- 关闭防火墙<br>- 更换yum源为阿里源<br>- 设置时区为 Asia/Shanghai<br>- 安装NTP<br>- 设置ntp时钟同步<br>- 增加文件描述符<br>- 禁用交换<br>- 调整虚拟内存<br>- 调整最大并发连接<br>- 配置线程数<br>- 设置 ip 转发<br>- 安装 vim<br>- 开启BBR（未实现） | - | 
| jdk | 安装jdk（1.8） | - | 
| nodejs | - 安装node.js（12.13.1）<br>- 更换npm源为阿里源 | - | 
| elasticsearch6.x | 安装 elasticsearch（6.8.5）单机或集群 | 9200 | 
| elasticsearch7.x | 安装 elasticsearch（7.4.2）单机或集群 | 9200 | 
| elasticsearch-head | 安装 elasticsearch-head（5.0.0） 插件 | 9100 | 
| skywalking6.x | 安装 skywalking（6.5.0） | 8080 | 
| skywalking7.x | 安装 skywalking（7） | 8080 | 

# Use
```bash
# clone project
$ git clone https://github.com/iamwlb/ansible-skywalking.git

# download package to local
$ cd ansible-shell/shell/
$ chmod +x ./*.sh
$ ./download-package.sh

# modify host list
$ vim hosts

# configuration variables
$ vim group_vars/main.yml

# install
$ ansible-playbook -i hosts site.yml
```

# Special Instructions

## How to choose Elasticsearch version and Skywalking version

- Elasticsearch 6.x - Skywalking 6.x 
- Elasticsearch 7.x - Skywalking 7.x
- Skywalking 7.x need modify the shell/download-package.sh file.

## use elasticsearch 6.x
site.yml
```yaml
  roles: 
    - { role: init }
    - { role: elasticsearch6.x }
```
## use elasticsearch 7.x
site.yml
```yaml
  roles: 
    - { role: init }
    - { role: elasticsearch7.x }
```

