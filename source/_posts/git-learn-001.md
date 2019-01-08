---
title: Git · 简易教程
date: 2018-11-15 16:58:33
categories: git
tags: git
---

**1. clone**
**2. branch**
**3. checkout**
**4. status**
**5. add**
**6. commit**
**7. push**
**8. 示例**

<!-- more -->

### clone
- 克隆远程仓库到本地
```bash
$ git clone ssh://git@git.moyuqingpen.com.cn:7999/~zhanghao/playground.git
Cloning into 'playground'...
remote: 对象计数中: 155, 完成.
remote: 压缩对象中: 100% (133/133), 完成.
remote: Total 155 (delta 52), reused 0 (delta 0)
Receiving objects: 100% (155/155), 392.57 KiB | 1.86 MiB/s, done.
Resolving deltas: 100% (52/52), done.
```

### branch
- 查看分支
```bash
$ git branch
* master
```
- 创建分支
```bash
$ git branch develop
```

### checkout
- 检出分支
```bash
$ git checkout develop
Switched to branch 'develop'
```

### status
- 显示工作目录和暂存区状态
```bash
$ git status
On branch develop
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        readme.md
nothing added to commit but untracked files present (use "git add" to track)
```

### add
- 添加到暂存区
```bash
$ git add .
warning: LF will be replaced by CRLF in readme.md.
The file will have its original line endings in your working directory
```

### commit
- 提交变动
```bash
$ git commit . -m "add readme"
warning: LF will be replaced by CRLF in readme.md.
The file will have its original line endings in your working directory
[develop dbe505a] add readme
 1 file changed, 1 insertion(+)
 create mode 100644 readme.md
```

### push
- 推送到远程分支
```bash
$ git push
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 271 bytes | 271.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0)
remote:
remote: Create pull request for develop:
remote:   https://git.moyuqingpen.com.cn/users/zhanghao/repos/playground/compare/commits?sourceBranch=refs/heads/develop
remote:
To ssh://git.moyuqingpen.com.cn:7999/~zhanghao/playground.git
   dbe505a..dcf6cc8  develop -> develop
```

### 示例

- 克隆-修改-提交
```bash
# 克隆仓库
$ git clone ssh://git.moyuqingpen.com.cn:7999/~zhanghao/playground.git
# do some change here ...
# 添加到索引
$ git add .
# 记录变动
$ git commit . -m "tips"
# 推送到远程分支
$ git push
```

- 新建本地develop分支，并提交到远程
```bash
$ git branch develop
$ git branch --set-upstream-to=/origin/develop
$ git pull
# do some change here
$ git add .
$ git commit . -m "tips"
$ git push
```

- 删除远程develop分支
```bash
$ git checkout master
$ git branch -d -r origin/develop
```

注：以上只是 `git` 命令行的简单教程，具体的用法请参考 `git <command> --help`，或[git book](https://git-scm.com/book/zh/v2)