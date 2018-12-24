---
title: VIM · 小结02
date: 2018-11-28 13:57:43
categories: vim
tags: vim-study
---

**VIM · 小结02**

<!-- more -->

### 进入普通模式(Normal mode)
- `Esc`
- `CTRL + [`

### 进入命令模式(Commant line mode)
- `:`

### 进入插入模式(Insert mode)
- `i` 在光标前插入
- `I` 在行首插入
- `a` 在光标后插入
- `A` 在行尾插入
- `o` 在下方插入一行
- `O` 在上方插入一行

### 进入可视模式(Visual mode)
- `v`

### 退出
- `q`
- `ZZ`

### 常用命令一览
|模式|命令|说明|
|---|---|---|
|正常模式|`b`|跳转到前一个单词的开头|
|正常模式|`ge`|跳转到前一个单词的结尾|
|正常模式|`f<字母>`|向后搜索字母，并跳转到第一个匹配的位置|
|正常模式|`F<字母>`|向前搜索字母，并跳转到第一个匹配的位置|

### 复制
- `yy`
- `y0`
- `y^`
- `y$`
- `yw`
- `yG`
- `y1G`

### 粘贴
- `p`
- `P`

### change
- c [number] motion
### delete
- d [number] motion

### 上下行交换
- `ddp`

### 替换
- `r` 替换当前光标位置
- `R` 连续替换
- `cc` 替换当前行
- `cw` 替换一个单词
- `C` 替换到行尾
- `~` 反转大小写
- `u` 撤销一次
- `U` 撤销当前行的所有更改
- `Ctrl + r` 取消撤销
- `:s/old/new/g` 替换当前行所有的old为new
- `:#,#s/old/new/g` 替换#行到#行的所有的old为new
- `:%s/old/new/g` 替换整个文档所有的old为new

### 提取内容
- `:r file` 提取file文件内容，插入光标所在位置
- `:r !ls` 提取ls命令输入内容，插入光标所在位置

### 文本位置
- `ce` 居中
- `ri` 居右
- `le` 居左

### 查找
- `?<单词>` 向上查找word
- `/<单词>` 向下查找word
- `n` 下一个
- `N` 上一个
- `CTRL + O` 回到较旧的位置
- `CTRL + I9j` 回到较新的位置
- `\*` 向下查找光标所在单词
- `\#` 向上查找鼠标所在单词
- `%` 查找配对括号

### 多文件编辑
- `vim 1.txt 2.txt` 同时打开两个文件
- `:n` 编辑下一个文件
- `:N` 编辑上一个文件
- `:e 3.txt` 打开3.txt
- `:e#` 回到前一个文件
- `:ls` 列出已打开的文件
- `:b 2.txt` 编辑2.txt
- `:bd 2.txt` 删除已打开的文件列表中的2.txt
- `e! 4.txt` 强制打开4.txt
- `:f` 显示正在编辑的文件名
- `:f 5.txt` 另存为5.txt

### 恢复文件
- `vim -r filename`

### 可视模式
- `v` 字符选择
- `Shift + v` 行选择
- `Ctrl + v` 区域选择

### 缩进
- `>>` 向右缩进
- `<<` 向左缩进

### 视窗操作
- `:new` 水平分屏
- `:sp` 水平分屏
- `:vsp` 垂直分屏
- `Ctrl + w s` 水平分屏
- `Ctrl + w v` 垂直分屏
- `Ctrl + w q` 关闭当前分屏
- `Ctrl + w o` 打开新视窗，并隐藏之前的所有视窗
- `Ctrl + w h` 切换到左侧分屏
- `Ctrl + w j` 切换到下面分屏
- `Ctrl + w k` 切换到上面分屏
- `Ctrl + w l` 切换到下册分屏
- `Ctrl + w H` 移动视窗到左侧
- `Ctrl + w J` 移动视窗值下面
- `Ctrl + w K` 移动视窗至上面
- `Ctrl + w L` 移动视窗至右侧
- `Ctrl + w -` 减小视窗高度
- `Ctrl + w +` 增加视窗高度

### 文档加密
- `vim -x file`

### 执行shell命令
- `:!ls` 暂时退出vim并执行ls命令

### 选择性保存
- `v` 进入可视模式
- `{move cursor}` 移动光标选择文本
- `:w` 保存

### 设置
- `:set` 显示所有修改过的配置
- `:set all` 显示所有的设定值
- `:set option?` 显示option的设定值
- `:set nooption` 取消当前设定值
- `:set autoindent(ai)` 设置自动缩进
- `:set autowrite(aw)` 设置自动保存，默认未打开
- `:set background=dark` 设置背景风格
- `:set backup(bk)` 设置自动备份，默认未打开
- `:set hlsearch(hls)` 高亮搜索匹配项