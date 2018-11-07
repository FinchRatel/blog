---
title: Hexo · 数据文件夹
date: 2018-11-02 22:58:59
tags: hexo
---

**1. 数据文件**

<!-- more -->

### 数据文件
hexo3.0新增数据文件功能
自动载入`source/_data`内的YAML/JSON文件

```yaml source/_data/menu.yml
Home: /
Archives: /archives/
```

```
<% for (var link in site.data.menu) { %>
<a href="<%= site.data.menu[link] %>"> <%= link %> </a>
<% } %>
```

```
<a href="/">Home</a>
<a href="/archives/">Archives</a>
```
