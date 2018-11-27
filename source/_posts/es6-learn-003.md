---
title: ES6 · Module
date: 2018-11-26 15:36:00
categories: es6
tags: es6-module
---

**ES6 · Module**

<!-- more -->

CommonJS
- 运行时加载，在运行到的时候才能确定依赖关系，输出的是值的缓存，不能动态更新

ES6
- 编译时加载，编译时即可确定依赖关系，效率更高，输出的是值的引用，可以做静态优化，输出会动态更新

ES6模块自动启用严格模式，严格模式下：
- 变量必须声明后再使用
- 函数的参数不能有同名属性，否则报错
- 不能使用with语句
- 不能对只读属性赋值，否则报错
- 不能使用前缀 0 表示八进制数，否则报错
- 不能删除不可删除的属性，否则报错
- 不能删除变量delete prop，会报错，只能删除属性delete global[prop]
- eval不会在它的外层作用域引入变量
- eval和arguments不能被重新赋值
- arguments不会自动反映函数参数的变化
- 不能使用arguments.callee
- 不能使用arguments.caller
- 禁止this指向全局对象，顶层的this指向undefined
- 不能使用fn.caller和fn.arguments获取函数调用的堆栈
- 增加了保留字（比如protected、static和interface）

> export命令用于规定模块的对外接口
> import命令用于输入其他模块提供的功能
> as 重命名
> default 指定默认输出
> \* 代表模块所有内容

---
**一般用法**
```js module.js
let name = 'module';
export { name };
```
```js main.js
import { name } from './module';
```
---
**使用default指定默认输出**
```js module.js
let name = 'module';
export default name;
```
```js main.js
import name from './module'; // name可以是任何合法变量名
```
---
**使用 \* 整体加载，使用as改名**
```js module.js
let name = 'module';
let version = '1.0.0';
export { name, version };
```
```js main.js
import * as module from './module';
```
---
**模块继承**
```js utils.js
let name = 'utils';
export {name};
```
```js tools.js
export * from './utils';
export let version = '1.0.0';
```
```js main.js
import * as tools from './tools';
console.log(tools.name, tools.version);
// utils 1.0.0
```
--- 
**浏览器加载ES6模块**
`<script>`标签加入`type="module"`属性表示是ES6模块
```html
<script src="path/to/myModule.js" defer></script>
<script src="path/to/myModule.js" async></script>
```
|属性|加载方式|执行时间|
|---|---|---|
|defer|异步加载|渲染完再执行|
|async|异步加载|下载完就执行|
```html
<script type="module" src="./foo.js"></script>
<!-- 等同于 -->
<script type="module" src="./foo.js" defer></script>
```
