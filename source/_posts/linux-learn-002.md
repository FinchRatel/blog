---
title: SFTP · 简易教程及示例
date: 2018-11-23 17:54:26
categories: linux
tags: sftp
---

**SFTP · 简易教程及示例**

<!-- more -->

- sftp
```bash
[root@localhost ~]# sftp
usage: sftp [-1246aCfpqrv] [-B buffer_size] [-b batchfile] [-c cipher]
          [-D sftp_server_path] [-F ssh_config] [-i identity_file] [-l limit]
          [-o ssh_option] [-P port] [-R num_requests] [-S program]
          [-s subsystem | sftp_server] host
       sftp [user@]host[:file ...]
       sftp [user@]host[:dir[/]]
       sftp -b batchfile [user@]host
```

- 连接sftp
```bash
[root@localhost ~]# sftp root@host
The authenticity of host 'host (192.168.16.128)' can't be established.
ECDSA key fingerprint is SHA256:t5KwBH+CBk7Emp24FI73Jr4IzVkD9VEUG9XIu86CvsE.
ECDSA key fingerprint is MD5:3c:31:c4:06:8a:6a:a6:4d:9a:21:58:c0:bc:e1:eb:de.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'host,192.168.16.128' (ECDSA) to the list of known hosts.
root@host's password: 
Connected to host.
sftp>
```

- help
```bash
sftp> help
Available commands:
bye                                Quit sftp
cd path                            Change remote directory to 'path'
chgrp grp path                     Change group of file 'path' to 'grp'
chmod mode path                    Change permissions of file 'path' to 'mode'
chown own path                     Change owner of file 'path' to 'own'
df [-hi] [path]                    Display statistics for current directory or
                                   filesystem containing 'path'
exit                               Quit sftp
get [-afPpRr] remote [local]       Download file
reget [-fPpRr] remote [local]      Resume download file
reput [-fPpRr] [local] remote      Resume upload file
help                               Display this help text
lcd path                           Change local directory to 'path'
lls [ls-options [path]]            Display local directory listing
lmkdir path                        Create local directory
ln [-s] oldpath newpath            Link remote file (-s for symlink)
lpwd                               Print local working directory
ls [-1afhlnrSt] [path]             Display remote directory listing
lumask umask                       Set local umask to 'umask'
mkdir path                         Create remote directory
progress                           Toggle display of progress meter
put [-afPpRr] local [remote]       Upload file
pwd                                Display remote working directory
quit                               Quit sftp
rename oldpath newpath             Rename remote file
rm path                            Delete remote file
rmdir path                         Remove remote directory
symlink oldpath newpath            Symlink remote file
version                            Show SFTP version
!command                           Execute 'command' in local shell
!                                  Escape to local shell
? 
```

- 常用命令一览  

>>|命令|说明|
|---|---|
|`bye`|退出|
|`quit`|退出|
|`cd path`|切换远程目录|
|`lcd path`|切换本地目录|
|`pwd`|展示远程当前文件夹|
|`lpwd`|展示本地当前文件夹|
|`ls`|列出远程目录信息|
|`lls`|列出本地目录信息|
|`mkdir`|创建远程目录|
|`lmkdir`|创建本地目录|
|`progress`|是否展示进度|
|`put`|上传|
|`get`|下载|
|`df`|查看磁盘信息|
|`!command`|在本地shell执行命令|
|`!`|退出到本地shell|

- 上传下载示例
```bash
sftp> pwd
Remote working directory: /root
sftp> lpwd
Local working directory: /c/Users/zhanghao30/Desktop/temp
sftp> ls
anaconda-ks.cfg
sftp> lls
note.txt
sftp> put note.txt
Uploading note.txt to /root/note.txt
note.txt                    100% 1781   175.3KB/s   00:00
sftp> get anaconda-ks.cfg
Fetching /root/anaconda-ks.cfg to anaconda-ks.cfg
/root/anaconda-ks.cfg       100% 1421   157.1KB/s   00:00
```