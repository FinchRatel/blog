---
title: VIM · 基础04
date: 2018-11-20 16:53:44
categories: vim
tags: vim-tutor
---

**VIM · 基础04**

<!-- more -->

- 显示光标位置和文件状态
`CTRL + g`

- 跳转 到最后一行
`G`

- 跳转 到第一行
`gg`

- 跳转 到指定行
`[number] G`

- 向下查找
`/word`

- 向上查找
`?word`

- 查找下一个
`n`

- 查找上一个
`N`

- 回到上一个匹配项
`CTRL + o`

- 回到下一个匹配项
`CTRL + i`

- 查找匹配的括号 () [] {}
`%`

- 替换 光标所在行第一个匹配项
`:s/old/new`

- 替换 光标所在行所有匹配项
`:s/old/new/g`

- 替换 指定行的匹配项
`:#,#s/old/new/g`  #,#分别代表起始行和结束行

- 替换 文件中所有匹配项
`:%s/old/new/g`

- 替换 替换时询问
`:s/old/new/gc`
