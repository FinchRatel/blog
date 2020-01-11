---
title: ES6 · Map
date: 2020-01-11 11:21:46
categories: es6
tags: map
---

**new Map()**
**size**
**set(k, v)**
**get(k)**
**has(k)**
**delete(k)**
**clear()**
**keys()**
**values()**
**entries()**
**forEach()**

<!-- more -->

Object--string: value
Map--any: value

```js
const m = new Map(); // Map {}
const m1 = new Map([ ['a', 1], ['b', 2] ]); // Map { a => 1, b => 2}
m.set(new Date(), 'date').set(new Array(), []).set(m1, 'map');
m.get(m1);
m.delete(m1);
m.keys();
m.values();
m.entries();
m.forEach((value,key) => {});
```