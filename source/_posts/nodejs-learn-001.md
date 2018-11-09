---
title: Nodejs · 安装
date: 2018-11-06 11:41:48
categories: nodejs
tags: nodejs-install
---

**1. 官网**
**2. 源码安装**
**3. npm源**

<!-- more -->

### 官网
NodeJS有两个版本：
`长期维护版`(LTS)推荐多数用户使用，建议开发中使用
`最新发布版`含实验性功能，建议个人学习时使用

- [官网-英文](https://nodejs.org)
- [官网-中文](https://nodejs.org/zh-cn/)
- [官方镜像](https://nodejs.org/dist)
- [国内官网](http://nodejs.cn)
- [淘宝镜像](https://npm.taobao.org/mirrors/node/)

### 源码安装
官方镜像下载较慢，建议使用国内镜像
用到了 `wget`下载源码，也可以使用其它方式下载
编译需要 `gcc` `g++` `gcc-c++`
源码安装时间较长，请耐心等待
推荐使用二进制包，下载解压即用

```bash
$ wget https://npm.taobao.org/mirrors/node/v10.13.0/node-v10.13.0.tar.gz
$ tar -zxvf node-v10.13.0.tar.gz
$ cd node-v10.13.0
$ ./configure
$ make && make install
```

### npm源
[官方源](https://registry.npmjs.org/)在国外，速度较慢，建议切换为国内源，推荐使用[`淘宝源`](https://npm.taobao.org/)
更换npm源有三种方式，如下：

#### 1.直接修改配置文件
配置文件在 `~/.npmrc`

```bash .npmrc
registry=https://registry.npm.taobao.org/
```

#### 2.使用 [cnpm](https://npm.taobao.org/) 替代 npm
```bash
$ npm install cnpm -g
```

#### 3.使用 [nrm](https://www.npmjs.com/package/nrm) 管理 npm 源
```bash
# 安装 nrm
$ npm install nrm -g
# 列出可用的npm源
$ nrm ls
# 切换为淘宝npm源
$ nrm use taobao
# 切换为官方npm源
$ nrm use npm
```
