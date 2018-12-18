# This is lnmp Dockerfile
# Version 1.0
# docker build -t lnmp:1.0 ./
# docker run -dit -p 80:80 -p 21:21 -p 22:22 -p 3306:3306 -p 6739:6739 -p 11211:11211 \
#-v /Users/liuns/Workspace:/usr/share/nginx/html \
#-v /Users/liuns/Workspace/docker/lnmp/php.d:/etc/php.d \
#-v /Users/liuns/Workspace/docker/lnmp/php-fpm.d:/etc/php-fpm.d \
#-v /Users/liuns/Workspace/docker/lnmp/nginx/nginx.conf:/etc/nginx/nginx.conf \
#-v /Users/liuns/Workspace/docker/lnmp/nginx/nginx.crt:/etc/nginx/nginx.crt \
#-v /Users/liuns/Workspace/docker/lnmp/nginx/nginx.key:/etc/nginx/nginx.key \
#-v /Users/liuns/Workspace/docker/lnmp/nginx/conf.d:/etc/nginx/conf.d \
#--privileged=true --name lnmp lnmp:1.0 /bin/bash	

# Base images 基础镜像
FROM centos:7.6.1810

#MAINTAINER 维护者信息
MAINTAINER liuensong <liuensong@gmail.com>

#中文支持
RUN yum -y install kde-l10n-Chinese telnet
RUN yum -y reinstall glibc-common
RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8

#ENV 设置环境变量
ENV LANG "zh_CN.UTF-8"
ENV LC_ALL "zh_CN.UTF-8"

#RUN 执行以下命令 
#更换ali镜像源
COPY ./CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo
RUN yum makecache && yum -y update

#remi镜像源
RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum install -y yum-utils
RUN yum-config-manager --enable remi-php72
RUN yum -y update

#安装vim
RUN yum install -y vim

#安装htop
RUN yum install -y htop

#安装openvpn
RUN yum install -y openvpn

#安装nginx
RUN yum install -y nginx*
RUN systemctl enable nginx.service

#安装mysql/mariadb
RUN yum install -y mariadb*
RUN systemctl enable mariadb.service

#安装redis
RUN yum install -y redis
RUN systemctl enable redis.service

#安装memcached
RUN yum install -y memcached*
RUN systemctl enable memcached.service

#安装php
RUN yum install -y php php-fpm php-bcmath php-dom php-gd php-igbinary php-imap \
php-ldap php-mbstring php-mcrypt php-mysqli php-mysqlnd php-pdo php-pdo_mysql \
php-pdo_sqlite php-redis php-soap php-sqlite3 php-swoole php-wddx \
php-xdebug php-xml php-xmlreader php-xmlwriter php-xsl php-yaf php-zip
RUN systemctl enable php-fpm.service

#WORKDIR 相当于cd
WORKDIR ~ 

#EXPOSE 映射端口
EXPOSE 80 21 22 3306 6739 11211

ENTRYPOINT ["/usr/sbin/init"]

#CMD [""]
