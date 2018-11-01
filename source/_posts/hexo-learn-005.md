---
title: Hexo迁移
date: 2018-10-29 17:10:18
tags: hexo
---

> ---
> **RSS**
> 
> **Jekll**
> 
> **Octopress**
> 
> **WordPress**
>
> **Joomla**
> 
> --- 

<!-- more -->

### RSS
```bash
$ npm install hexo-migrator-rss -S
$ hexo migrate rss <source>
```
### Jekyll
- 把 _posts 文件夹内的所有文件复制到 source/_posts 文件夹，并在 _config.yml 中修改 new_post_name 参数。

```
new_post_name: :year-:month-:day-:title.md
```

### Octopress
- 把 Octopress source/_posts 文件夹内的所有文件转移到 Hexo 的 source/_posts 文件夹，并修改 _config.yml 中的 new_post_name 参数

```
new_post_name: :year-:month-:day-:title.md

```

### WordPress
```bash
$ npm install hexo-migrator-wordpress --save
$ hexo migrate wordpress <source>
```

### Joomla
```bash
$ npm install hexo-migrator-joomla --save
$ hexo migrate joomla <source>
```
