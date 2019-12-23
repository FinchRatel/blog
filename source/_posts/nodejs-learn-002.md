---
title: console 常用方法
date: 2019-12-23 11:44:23
categories: nodejs
tags: nodejs
---

```js
const {
  log,
  info,
  warn,
  debug,
  error,
  assert,
  clear,
  count,
  countReset,
  group,
  groupEnd,
  table,
  time,
  timeLog,
  timeEnd,
  trace
} = console;
```

<!-- more -->

1. log info warn debug
`info` `warn` `debug` 是 `log` 的别名

2. assert
简单的断言测试，断言为假的时候才输出
```js
console.assert(true, 'ok');
console.assert(false, 'not ok');

// Assertion failed: not ok
```

3. clear
清理终端输出信息，不同系统不同shell表现有所不同
```js
console.clear();
```
4. count countReset
count 计数
countreset 重置计数
```js
console.count('count1');
console.count('count1');
console.countReset('count1');
console.count('count1');

// count1: 1
// count1: 2
// count1: 1
```

5. group groupEnd
`group` 将后续行的缩进增加两个空格
`groupEnd` 减少后续行的缩进两个空格
```js
console.group('group1');
console.count();
console.count();
console.groupEnd('group1');
console.count();

// group1
//   default: 1
//   default: 2
// default: 3
```
6. table
`table` 输出表格
```js
console.table([{a: 1, b: 2}, {a: 3, b: 4}], ['a', 'b']);

// ┌─────────┬───┬───┐
// │ (index)    │ a  │ b │
// ├─────────┼───┼───┤
// │    0       │ 1  │ 2 │
// │    1       │ 3  │ 4 │
// └─────────┴───┴───┘
```
7. time timeLog timeEnd
`time` 开始计时
`timeLog` 输出计时持续时间
`timeEnd` 结束计时
```js
console.time();
console.timeLog();
console.timeEnd();

// default: 0.105ms
// default: 6.221ms
```
8. trace
将 util.format() 格式化的消息和堆栈跟踪打印到代码中的当前位置。
```js
console.trace('trace1');

// Trace: trace1
//     at Object.<anonymous> (C:\Users\zhanghao30\Desktop\document\test.js:16:9)
//     at Module._compile (internal/modules/cjs/loader.js:956:30)
//     at Object.Module._extensions..js (internal/modules/cjs/loader.js:973:10)
//     at Module.load (internal/modules/cjs/loader.js:812:32)
//     at Function.Module._load (internal/modules/cjs/loader.js:724:14)
//     at Function.Module.runMain (internal/modules/cjs/loader.js:1025:10)
//     at internal/main/run_main_module.js:17:11
```