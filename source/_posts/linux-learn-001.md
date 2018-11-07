---
title: Linux · 环境变量
date: 2018-11-07 11:08:18
tags: linux
---

**1. 查看环境变量**
**2. 设置临时环境变量**
**3. 当前用户的环境变量**
**4. 所有用户的环境变量**

<!-- more -->

### 查看环境变量
- `$PATH`
```bash
[root@localhost ~]# echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin
```
- `export`
```bash
[root@localhost node-v11.1.0-linux-x64]# export
declare -x HISTCONTROL="ignoredups"
declare -x HISTSIZE="1000"
declare -x HOME="/root"
declare -x HOSTNAME="localhost.localdomain"
declare -x LANG="zh_CN.UTF-8"
declare -x LESSOPEN="||/usr/bin/lesspipe.sh %s"
declare -x LOGNAME="root"
declare -x LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=01;05;37;41:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=01;36:*.au=01;36:*.flac=01;36:*.mid=01;36:*.midi=01;36:*.mka=01;36:*.mp3=01;36:*.mpc=01;36:*.ogg=01;36:*.ra=01;36:*.wav=01;36:*.axa=01;36:*.oga=01;36:*.spx=01;36:*.xspf=01;36:"
declare -x MAIL="/var/spool/mail/root"
declare -x OLDPWD="/opt"
declare -x PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin"
declare -x PWD="/opt/node-v11.1.0-linux-x64"
declare -x SELINUX_LEVEL_REQUESTED=""
declare -x SELINUX_ROLE_REQUESTED=""
declare -x SELINUX_USE_CURRENT_RANGE=""
declare -x SHELL="/bin/bash"
declare -x SHLVL="1"
declare -x SSH_CLIENT="192.168.197.1 56779 22"
declare -x SSH_CONNECTION="192.168.197.1 56779 192.168.197.130 22"
declare -x SSH_TTY="/dev/pts/0"
declare -x TERM="xterm"
declare -x USER="root"
declare -x XDG_RUNTIME_DIR="/run/user/0"
declare -x XDG_SESSION_ID="1"
```

### 临时环境变量
- 重启后临时环境变量消失
```bash
[root@localhost opt]# export PATH=/opt/nodejs/bin:$PATH
[root@localhost opt]# node -v
v11.1.0
[root@localhost opt]# npm -v
6.4.1
```

### 当前用户的环境变量(CentOS)
- 编辑 `~/.bash_profile`
```bash
[root@localhost ~]# vi .bash_profile 
```
- 找到PATH，并在后面追加：
```
PATH=$PATH:$HOME/bin:/opt/nodejs/bin
```
- 刷新环境变量
```bash
[root@localhost ~]# source .bash_profile
[root@localhost ~]# node -v
v11.1.0
[root@localhost ~]# npm -v
6.4.1
```

### 所有用户的环境变量
- 编辑 `/etc/profile`
```bash
[root@localhost ~]# vi .bash_profile 
```
- 在后面追加：
```
PATH=$PATH:$HOME/bin:/opt/nodejs/bin
```
- 刷新环境变量
```bash
[root@localhost ~]# source /etc/profile
[root@localhost ~]# node -v
v11.1.0
[root@localhost ~]# npm -v
6.4.1
```
