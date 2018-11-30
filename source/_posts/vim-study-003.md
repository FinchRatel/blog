---
title: VIM · 小结03
date: 2018-11-29 11:49:37
categories: vim
tags: vim-study
---

**VIM · 小结03**

<!-- more -->

### 缩进
- `expandtab` 是否将tab转化为空格
- `shfitwidth` >>或<<时缩进的列数
- `tabstop` 一个tab键所占的列数
- `softtabstop` tab实际占的列数
- `autoindent(ai)` 自动换行
```bash .vimrc
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
```