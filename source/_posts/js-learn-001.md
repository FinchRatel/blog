---
title: JavaScript · Array
date: 2019-01-02 10:03:44
categories: javascript
tags: array
---

**find && filter**

<!-- more -->

### find && filter
```js
let arr = [1, 3, 5, 7, 9];

let res1 = arr.find(item => item < 5);
console.log(res1); // 1
// 返回符合条件的第一个子元素

let res2 = arr.filter(item => item < 5);
console.log(res2); // [1, 3]
// 返回包含所有符合条件的子元素的数组
```