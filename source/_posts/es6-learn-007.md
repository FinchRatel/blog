---
title: ES6 · String && Number
date: 2018-12-25 17:53:48
categories: es6
tags: es6
---

**Number**
**String**

<!-- more -->

### Number
- 0b11 //3
- 0B11 //3
- 0o11 //9
- 0O11 //9
- toSting([2, 8, 10, 16]) //转为二进制、八进制、十进制、十六进制字符串
- Number(0b11) //转十进制
- Number.isFinate() 
- Number.isNaN()
- Number.parseInt()
- Number.parseFloat()
- Number.isInteger() //由于 JavaScript 采用 IEEE 754 标准，数值存储为64位双精度格式，数值精度最多可以达到 53 个二进制位（1 个隐藏位与 52 个有效位）。如果数值的精度超过这个限度，第54位及后面的位就会被丢弃，这种情况下，Number.isInteger可能会误判。
- Number.EPSILON === Math.pow(2, -52) //表示 1 与大于 1 的最小浮点数之间的差。
- Number.MAX_SAFE_INTEGER === Math.pow(2, 53)
- Number.MIN_SAFE_INTEGER === Math.pow(2, -53)
- Number.isSafeInteger(n) //Number.MIN_SAFE_INTEGER < n < Number.MAX_SAFE_INTEGER

- Math.trunc(3.14) //3 返回整数部分
- Math.sign()
- Math.cbrt() //返回立方根
- Math.hypot() //返回参数平方和的平方根

### String
- \u0001
- \u{1}
- includes()
- startsWith()
- endsWith()
- repeat()
- padStart()
- padEnd()
- matchAll()
- \`\`