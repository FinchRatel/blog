---
title: Hexo · 主题
date: 2018-11-05 10:15:17
tags: hexo
---

> ---
> **更换主题**
>
> **主题结构**
>
> **\_config.yml**
>
> **language**
>
> **layout**
>
> **scripts**
>
> **source**
>
> ---

<!-- more -->

### 更换主题 
#### 1.查找自己喜欢的主题, [`主题列表`](https://hexo.io/themes/)

#### 2.克隆主题仓库到本地`themes`文件夹下

```bash
$ git clone repo-url themes/repo-name
```

#### 3.修改`_config.yml`

```yaml _config.yml
theme: repo-name
```

#### 4.重新生成

```bash
$ hexo clean
$ hexo generate
```

### 主题结构

```
.
├── _config.yml
├── languages
├── layout
├── scripts
└── source
```

### \_config.yml

> 主题的配置文件，修改时会自动更新，无需重启

### languages

> 语言文件夹

### layout

> 布局文件夹，存放主题的模板文件。
> 内建Swig模板引擎，可以安装插件来支持EJS、Haml或Jade
> 根据扩展名来决定使用哪一个模板引擎

### scripts

> 脚本文件夹，启动时会自动载入

### source

> 资源文件夹，除了模板以外的Asset都应该放在这里。
> `_`开头的文件或文件夹会被忽略
> 如果文件可以渲染，解析后存储到`public`文件夹，否则直接拷贝到`public`文件夹
