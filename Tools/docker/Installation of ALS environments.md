# Installation of ALS environments

## 1 环境参考

- Ubuntu 20.04.3 LTS
- Docker version 20.10.12, build e91ed57

## 2 安装和使用Docker

https://www.runoob.com/docker/docker-tutorial.html

## 3 安装ALS开发环境的虚拟机

注：这部分教程，参考了https://zhuanlan.zhihu.com/p/266225644

1. 下载虚拟机

```shell
docker pull changmeng/als:latest
```

![image-20220109220205332](https://s2.loli.net/2022/01/09/Q6pWEcg8PtJq9Xi.png)

2. 初始化虚拟机

```shell
docker run -it -p 5902:5902 -p 1234:22 --hostname lizhen --mac-address 02:42:ac:11:00:02 -v /home/ectl/Docker/swap:/mnt/mydata changmeng/als
```

![image-20220109220328731](https://s2.loli.net/2022/01/09/u1pKHqNJ4SxBTWc.png)

其中，

- 将虚拟机的5902端口映射成本地的5902端口，用于vnc远程桌面服务
- 将虚拟机的1234端口映射成本地的22端口，用于ssh远程连接服务
- hostname和mac-address不可修改，因为Synopsys软件的破解依赖于它们
- /home/ectl/Docker/swap为本地路径，/mnt/mydata为虚拟机中的路径，这两个路径用于本地和虚拟机之间交换文件

3. 使用ssh连接虚拟机（可选）

   在**本地**终端输入，

   ```shell
   ssh -p 1234 root@127.0.0.1
   ```

   密码123456

4. 使用vnc连接虚拟机（可选）

   - 在**虚拟机**中，启动vnc

     ```shell
     vncserver -geometry 1920x1080 :2
     ```

   - 在**本地**安装vncviewer

     https://www.realvnc.com/en/connect/download/viewer/linux/

   - 在本地配置连接，地址是127.0.0.1:5902，密码为123456

     ![Screenshot from 2022-01-09 22-12-52](https://s2.loli.net/2022/01/09/6K9tBry7oZfcDM4.png)
