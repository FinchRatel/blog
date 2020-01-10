---
title: ES6 · Set
date: 2020-01-10 15:03:36
categories: es6
tags: set
---

**new Set()**
**size**
**has()**
**add()**
**delete()**
**clear()**
**keys()**
**values()**
**entries()**
**forEach()**

<!-- more -->

## new Set(argv)
argv: array, string
```js
const s1 = new Set([1, 2, 3]);
const s2 = new Set('abcdefg');
```

## size
```js
s1.size //3
s2.size //7
```

## has()
```js
s1.has(1); //true
```

## add()
可以链式调用
```js
s1.add(4).add(5);
```

## delete()
```js
s1.delete(3);
```

## clear()
```js
s1.clear();
```

## keys()
```js
s1.keys();
```

## values()
```js
s1.values();
```

## entries()
```js
s1.values();
```

## forEach()
```js
s1.forEach((value, key) => {});
```