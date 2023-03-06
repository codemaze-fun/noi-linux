# noi-linux

## 简介

NOI/CSP-J/CSP-S的竞赛环境  NOI Linux 2.0版（Ubuntu-NOI 2.0版）

本项目提供的环境最大程度上复原了官方的NOI-LINUX镜像 https://www.noi.cn/gynoi/jsgz/2021-07-16/732450.shtml

每一种安装方式可能会有少许额外的安装，比如容器环境为了能够对外访问，添加了openssh-server和xrdp等软件。具体情况可以查看子目录下的README.md


本repo提供一下方式准备竞赛环境：

1. 容器

适合有Docker等容器环境，不想安装虚拟机但是想快速上手实验的同学们。

快速启动容器，即可从ssh和rdp访问NOI LINUX

```
$ docker run -p 3389:3389 -it codemaze/noi-linux:latest
```
![image](https://user-images.githubusercontent.com/8893623/223033502-5d2b9ba1-45ff-407b-a7c9-61b42aa459e8.png)

![image](https://user-images.githubusercontent.com/8893623/223033533-9ef47aad-766a-4067-90f4-77137b621d1f.png)

![image](https://user-images.githubusercontent.com/8893623/223033619-9c65df14-049e-4b0f-8737-96d684709536.png)

2. 快速安装脚本

适合已经有现成的Linux环境，想复用现有环境的同学们。

3. Helm chart

适合想把这个环境部署到Kubernetes标准基础架构里的同学们。

4. 云环境镜像

阿里云，腾讯云，AWS, GCP, Azure云环境的预安装镜像，可以一键启动NOI-Linux，或者批量启动NOI-Linux环境。

## 更多信息

关于每种环境和安装方式的具体内容，请查看目录下的README.md 
