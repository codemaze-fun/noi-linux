# noi-linux

## 简介

容器化的NOI/CSP-J/CSP-S的竞赛环境  NOI Linux 2.0版（Ubuntu-NOI 2.0版）

Helm Chart在上述容器的基础上，提供了Kubernetes下的标准化部署方式。

![image](https://user-images.githubusercontent.com/8893623/219260892-21e6c875-6e30-41d9-869f-6ac7c5302114.png)

## 功能

该容器与官方提供的ISO是以不同形式制作，最大限度保证了安装软件的一致性。

启动该容器后，容器默认提供两个访问方式：

- sshd on TCP port 22

- vnc on TCP port 5901

## 使用

```shell
$ docker run codemaze/noi-linux
```

## Helm Chart

```shell
$ helm install noi-linux codemaze/noi-linux
```

## 原文链接

https://www.noi.cn/gynoi/jsgz/2021-07-16/732450.shtml
