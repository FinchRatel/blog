---
title: Hexo · 服务器
date: 2018-11-03 10:29:30
tags: hexo
---

> ---
> **hexo-server**
>
> **静态模式**
>
> **自定义IP**
>
> **Pow**
>
> ---

<!-- more -->

### hexo-server
```bash
$ npm install hexo-server --save
$ hexo server
$ hexo server -p 5000
```

### 静态模式
> 静态模式下，服务器只处理`public`文件夹内的文件

```bash
$ hexo server -s
```

### 自定义IP
> 默认运行在`0.0.0.0`
```bash
$ hexo server -i 192.168.1.1
```

### Pow
> Pow是Mac系统上的零配置Rack服务器
```bash
$ curl get.pow.cx | sh
$ cd ~/.pow
$ ln -s /path/to/myapp
```