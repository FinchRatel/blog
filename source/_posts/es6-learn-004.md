---
title: ES6 · Class基础
date: 2018-11-30 16:11:16
categories: es6
tags: es6-class
---

**ES6 · Class基础**

<!-- more -->

### 构造函数
```bash
function Rectangle (width, height) {
  this.width = width;
  this.height = height;
}
Rectangle.prototype.getArea = function() {
  return this.width * this.height;
}

const square = new Rectangle(4, 4);
square.width //4
square.height //4
square.getArea() //16
```

### ES6
```bash
class Rectangle {
  constructor(width, height) {
    this.width = width;
    this.height = height;
  }
  getArea() {
    return this.width * this.height;
  }
}

const square = new Rectangle(4, 4);
square.width //4
square.height //4
square.getArea() //16
```

- `constructor`
类的构造函数，实例化(new)时自动调用

- `static`
静态方法
类可以调用，会被子类继承，子类也可以调用
不会被类的实例继承，类的实例无法调用
也不会被子类的实例继承，子类的实例也无法调用
this指向类，而不是实例

- `name`
返回类的名称

- `new.target`
返回实例化时调用的类
子类继承父类时，会返回子类

### 类
- 类的所有方法都在原型上
- 类内部的方法，都是不可枚举的
- 类的属性名和方法名可以用表达式
- 类的内部默认启用严格模式
- 类不存在变量提升

### 实例
> 实例的属性，除非定义在this对象上，否则都定义在原型上
> 类的所有实例共享一个原型对象

