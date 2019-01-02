---
title: ES6 · Class继承
date: 2018-11-30 16:22:01
categories: es6
tags: es6-class
---

**ES6 · Class继承**

<!-- more -->

参考文档：[阮一峰 ECMAScript 6 入门 -- Class的继承](http://es6.ruanyifeng.com/#docs/class-extends)

### extends
```js
class Line {}
class ColorLine extends Line {}
```
子类必须在constructor方法中调用super方法
如果子类没有constructor方法，constructor会被默认添加
在constructor方法中，只有调用super方法后，才能使用this
可继承原生构造函数(String/Number/Boolean/Array/Date/Error/Regexp/Function/Object)

### Object.getPrototypeOf() && Reflect.getPrototypeOf()
判断一个类是否继承自另一个类

```js
Object.getPrototypeOf(ColorLine) === Line //true
Reflect.getPrototypeOf(ColorLine) === Line //true
```

- 每个对象都有一个名为__proto__的属性
- 每个构造函数都有一个名为prototype的方法
- 每个对象的__proto__指向自身构造函数的prototype

```js
class Line {
  constructor(length) {
    this.length = length;
  }
}

const line = new Line(12);

console.log(line.__proto__ === Line.prototype); //true
console.log(line.__proto__.__proto__ === Object.prototype); //true
console.log(line.__proto__.__proto__.__proto__ === null); //true
// null <= Object <= Line <= line

console.log(Line.__proto__ === Function.prototype); //true
console.log(Line.__proto__.__proto__ === Object.prototype); //true
console.log(Line.__proto__.__proto__.__proto__ === null); //true
// null <= Object <= Function <= Line

console.log(Function.__proto__ === Function.prototype); //true
console.log(Object.__proto__ === Function.prototype); //true
console.log(Object.__proto__ === Function.__proto__); //true
// Function <= Object
// Function <= Function
```

### super
- 作为函数 `super()`
只能在子类的constructor方法中调用
子类constructor方法中必须调用一次super方法
- 用作对象
普通方法中，指向父类的原型对象
静态方法中，指向父类