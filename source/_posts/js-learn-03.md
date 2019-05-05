---
title: localStorage && sessionStorage
date: 2019-05-05 16:34:10
categories: h5
tags: h5
---

### API
```js
const storage = localStorage // or sessionStorage
// 增 改
storage.setItem('version', '0.2.0')
// 查
storage.getItem('version')
// 删
storage.removeItem('version')
// 删
storage.clear()
```

### 参考
[MDN web docs -- Window​.local​Storage](https://developer.mozilla.org/zh-CN/docs/Web/API/Window/localStorage)
[MDN web docs -- Window​.session​Storage](https://developer.mozilla.org/zh-CN/docs/Web/API/Window/sessionStorage)
[localStorage使用总结](https://www.cnblogs.com/st-leslie/p/5617130.html)