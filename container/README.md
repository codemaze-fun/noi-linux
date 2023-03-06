# noi-linux

## 简介

容器化的NOI/CSP-J/CSP-S的竞赛环境  NOI Linux 2.0版（Ubuntu-NOI 2.0版）

Helm Chart在上述容器的基础上，提供了Kubernetes下的标准化部署方式。

![image](https://user-images.githubusercontent.com/8893623/219260892-21e6c875-6e30-41d9-869f-6ac7c5302114.png)

## 功能

该容器与官方提供的ISO是以不同形式制作，最大限度保证了安装软件的一致性。

启动该容器后，容器默认提供两个访问方式：

- sshd on TCP port 22

- rdp on TCP port 3389

- vnc on TCP port 5900

## 使用

```shell
$ docker pull codemaze/noi-linux

$ docker run -p 12322:22 -p 3389:3389 -p 5900:5900 codemaze/noi-linux
```

## 参考链接

https://www.noi.cn/gynoi/jsgz/2021-07-16/732450.shtml

https://oi-wiki.org/tools/wsl/

