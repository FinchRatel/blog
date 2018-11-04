---
title: Hexo · 永久链接
date: 2018-11-04 15:37:53
tags: hexo
---

> ---
> **变量**
>
> **示例**
>
> **多语种支持**
>
> ---

<!-- more -->

> 可以在`_config.yml`配置中调整网站的永久链接
> 也可以在每篇文章的`Front-matter`中指定

### 变量
变量 | 描述
--- | ---
`:year` | 年
`:month` | 月
`:day` | 日
`:title` | 文章名称
`:post_title` | 文章标题
`:id` | 文章ID
`:category` | 分类

> 可以在`permalink_default`调整变量的默认值
```yaml
permalink_defaults:
  lang: en
```

### 示例
参数 | 结果
--- | ---
:year/:month/:day/:title | 2018/11/04/hello-world
:year-:month-:day-:title.html | 2018-11-04-hello-world.html
:/category/:title | foo/bar/hello-world

### 多语种支持
> 修改`new_postname` 和 `permalink`

```yaml
new_post_name: :lang/:title.md
permalink: :lang/:title/
```

```bash
$ hexo new "hello world" --lang en
# => source/_post/en/hello-world.md
```

```
http://localhost:4000/en/hello-world/
```