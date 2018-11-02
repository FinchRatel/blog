---
title: hexo · 资源文件夹
date: 2018-11-02 16:14:56
tags: hexo
---

> ---
> **资源文件夹**
> 
> 
>
> 
>
> ---

### 资源文件夹
> 资源（Asset）代表 source 文件夹中除了文章以外的所有文件，例如图片、CSS、JS 文件等。比方说，如果你的Hexo项目中只有少量图片，那最简单的方法就是将它们放在 source/images 文件夹中。然后通过类似于 `![](/images/image.jpg)` 的方法访问它们。

### 文章资源文件夹
> 将 `config.yml` 文件中的 `post_asset_folder` 选项设为 `true`
> 通过`new`命令创建文章时，会同时创建同名文件夹，可以通过相对路径来引用它们

### 相对路径引用的标签插件
```
{% asset_path slug %}
{% asset_img slug [title] %}
{% asset_link slug [title] %}
```

> 正确的引用图片方式是使用下列的标签插件而不是 `markdown`

```
{% asset_img example.jpg This is an example image %}
```
