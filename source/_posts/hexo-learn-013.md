---
title: Hexo · 部署
date: 2018-11-03 11:16:09
tags: hexo
---

**1. Git**
**2. Heroku**
**3. Rsync**
**4. OpenShift**
**5. FTPSync**
**6. 其它方法**

<!-- more -->

### 一键部署
```yaml 修改_config.yml，可以同时部署多个
deploy:
- type: git
  repo:
- type: heroku
  repo:
```

```bash 一键部署
$ hexo d
$ hexo deploy
```

### Git
```bash 安装hexo-deployer-git
$ npm install hexo-deployer-git --save
```

```yaml _config.yml
deploy:
  type: git
  repo: <repository url>
  branch: [branch]
  message: [message]
```

### Heroku
```bash 安装hexo-deployer-heroku
$ npm install hexo-deployer-heroku --save
```

```yaml _config.yml
deploy:
  type: heroku
  repo: <repository url>
  message: [message]
```

### Rsync
```bash 安装hexo-deployer-rsync
$ npm install hexo-deployer-rsync --save
```

```yaml _config.yml
deploy:
  type: rsync
  host: <host>
  user: <user>
  root: <root>
  port: [port]
  delete: Boolean # 删除远程主机上的旧文件
  verbose: Boolean # 显示调试信息
  ignore_errors: Boolean # 忽略错误
```

### OpenShift
```bash 安装hexo-deployer-openshift
$ npm install hexo-deployer-openshift --save
```

```yaml _config.yml
deploy:
  type: openshift
  repo: <repository url>
  message: [message]
```

### FTPSync
```bash
$ npm install hexo-deployer-ftpsync --save
```

```yaml _config.yml
deploy:
  type: ftpsync
  host: <host>
  user: <user>
  pass: <password>
  remote: [remote] # 远程主机的根目录
  port: [port]
  ignore: [ignore] # 忽略的文件或目录
  connections: [connections] # 使用连接数 1
  verbose: Boolean # 显示调试信息 true
```

### 其它方法
`Hexo`生成的所有文件都放在`public`文件夹中，可以将它们复制到静态服务器中
