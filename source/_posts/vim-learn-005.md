---
title: VIM · 基础05
date: 2018-11-21 14:26:06
categories: vim
tags: vim-tutor
---

**VIM · 基础05**

<!-- more -->

- 执行外部命令
`:!ls`

- 保存到文件中
`:w [filename]`

- 选择性保存
	- `v` 进入可视模式
	- 选择文本
	- `:w` 保存

- 提取内容
`:r [filename]`
`:r !tree`