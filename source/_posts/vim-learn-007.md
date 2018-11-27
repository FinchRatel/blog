---
title: VIM · 小结01
date: 2018-11-23 10:10:06
categories: vim
tags: vim-study
---

**VIM · 小结01**

<!-- more -->

|操作|模式|命令|说明|
|---|---|---|---|
|打开|命令行|`vim`|打开VIM|
|打开|命令行|`vim [path/to/file]`|打开file文件，若不存在，则新建file并打开|
|打开|VIM正常模式|`:e [path/to/file]`|打开file文件，若不存在，则新建file并打开|
|保存|VIM正常模式|`:w`|保存|
|保存|VIM正常模式|`:w!`|强制保存|
|保存|VIM正常模式|`:w [path/to/file]`|保存到file中|
|保存|VIM正常模式|`:w! [path/to/file]`|强制保存到file中|
|保存|VIM正常模式|`:sav [path/to/file]`|另存为file|
|退出|VIM正常模式|`:q`|退出|
|退出|VIM正常模式|`:q!`|强制退出|