---
title: Hexo命令
date: 2018-10-29 15:03:17
tags: hexo
---

> ---
>
> **init**
>
> **new**
>
> **generate**
>
> **publish**
>
> **server**
>
> **deploy**
>
> **render**
>
> **migrate**
>
> **clean**
>
> **list**
>
> **version**
>
> ---

<!--more-->

### init

```bash
$ hexo init blog
```

### new *新建文章*
```bash
$ hexo new [layout] <title>
# 例如 hexo new post hello-world
```
### generate *生成静态文件*
```bash
$ hexo generate
$ hexo g
```
### publish *发表草稿*
```bash
$ hexo publish [layout] filename
```
### server *启动本地服务器*
```bash
$ hexo server
# -p, --port
# -s, --static 只使用静态文件
# -l, --log 启用日志
```
### deploy *部署*
```bash
$ hexo deploy
$ hexo d
# -g, --generate 部署之前生成静态文件
```
### render *渲染文件*
```bash
$ hexo render <file1> [file2] ...
# -o, --output 设置输出路径
```
### migrate *从其它博客迁移*
```bash
$ hexo migrate <type>
```
### clean *清理缓存和静态文件*
```bash
$ hexo clean
```
### list
```bash
$ hexo list
```
### version
```bash
$ hexo version
```
### 安全模式
```bash
$ hexo --safe
```
### 调试模式
```bash
$ hexo --debug
```
### 简洁模式
```bash
$ hexo --silent
```
### 自定义配置文件的路径
```bash
$ hexo --config custom.yml
```
### 显示草稿
```bash
$ hexo --draft
```
### 自定义CWD
```bash
$ hexo --cwd /path/to/cwd
```