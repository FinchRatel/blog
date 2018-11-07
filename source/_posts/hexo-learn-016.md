---
title: Hexo · 模板
date: 2018-11-05 15:55:58
tags: hexo
---

**1. 模板**
**2. 布局**
**3. 局部模板**
**4. 局部变量**
**5. 优化**

<!-- more -->

### 模板
每个主题至少应包含一个`index`模板

模板 | 用途 | 回调
--- | --- | ---
index | 首页 | -
post | 文章 | index
page | 分页 | index
archive | 归档 | index
category | 分类 | archive
tag | 标签 | archive

### 布局
通过布局让多个模板共享相同的结构
默认使用`layout`布局，可以在`front-matter`中指定其他布局，或设置为`false`关闭布局功能

### 局部模板
局部模板类似组件，可以在多个模板之间共享

### 局部变量
可以在局部模板中指定局部变量

### 优化
Hexo 2.7 新增了局部缓存(`Fragment Caching`)功能
