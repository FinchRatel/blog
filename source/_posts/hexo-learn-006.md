---
title: Hexo · 写作
date: 2018-10-29 17:50:37
tags: hexo
---

**1. 新建**
**2. 布局**
**3. 文件名称**
**4. 草稿**
**5. 模板**

<!-- more -->

### 1. 新建
`layout` 默认为 `post`， 可以通过修改`_config.yml中`的 `default_layout` 来指定默认布局

```bash
$ hexo new [layout] <title>
```

### 2. 布局

- `post` -- 文章
- `page`
- `draft` -- 草稿

### 3. 文件名称

默认以标题作为文件名称
可以通过 `new_post_name` 来修改默认文件名称

### 4. 草稿

```bash
$ hexo new draft <title>
$ hexo publish [layout] <title>
```

草稿默认不会展示在页面中，可以在执行是加上 `--draft` 参数，或把 `render_draft` 设为 `true` 来预览草稿。

### 5. 模板

```bash
$ hexo new photo 'my page'
# 根据 photo 模板来创建 my page
```
