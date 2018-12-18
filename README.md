# docker_lnmp

```
//以上内容都添加后进入lnmp目录
➜ sh ./docker_build.sh
...这里需要下载需要的包...
...滚屏...
...滚屏...
...滚屏...
...Completed...
 
//查看自己的镜像 //镜像名称是lnmp
➜ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
lnmp                1.0                 2da93e8d1eba        46 hours ago        2.17GB
centos              7.6.1810            d5f224905a66        12 days ago         202MB
 
//运行镜像容器
➜ sh ./docker_run.sh lnmp_1 //lnmp_1是自定义的镜像NAME
 
//查看刚才生成的NAME是lnmp_1的容器，生成后可再浏览器访问localhost访问（lnmp环境都是在Docerfile文件里配置好的，并且相关端口都会映射到宿主机）
➜ docker ps -a 
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                      PORTS               NAMES
4ac166e672b6        lnmp:1.0            "/usr/sbin/init /bin…"   46 hours ago        Up 38 hours ago                       lnmp_1
 
//进入容器交互
➜ sh ./docker_exec.sh lnmp_1 //lnmp_1是自定义的镜像NAME
```
--------------------- 
作者：青鬆下的坚躯 
来源：CSDN 
原文：https://blog.csdn.net/liuensong/article/details/85082861 
版权声明：本文为博主原创文章，转载请附上博文链接！
