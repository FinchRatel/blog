---
title: ES6 · Reflect
date: 2018-12-04 14:41:28
categories: es6
tags: es6-reflect
---

Reflect.get()
Reflect.set()
Reflect.has()
Reflect.deleteProperty()
Reflect.construct()
Reflect.getPrototypeOf()
Reflect.setPrototypeOf()
Reflect.apply()
Reflect.defineProperty()
Reflect.getOwnPropertyDescriptor()
Reflect.isExtensible()
Reflect.preventExtensions()
Reflect.ownKeys()

<!-- more -->

### Reflect.get(target, name, receiver)
查找并返回target.name
如果name属性部署了getter，getter的this绑定receiver

### Reflect.set(target, name, value, receiver)
设置target的name属性值为value
如果name属性部署了setter，setter的this绑定receiver

### Reflect.has(obj, name)
等同于 name in obj

### Reflect.deleteProperty(obj, name)
等同于 delete obj.name

### Reflect.construct(target, args)
等同于 new target(...args)
不使用new调用构造函数的方式

### Reflect.getPrototypeOf(obj)
等同于 Object.getPrototypeOf(obj)
读取obj的__proto__属性

### Reflect.setPrototypeOf(obj, newProto)
等同于 Object.setPrototypeOf(obj, newProto)

### Reflect.apply(func, thisArgs, args)
等同于 Function.prototype.apply.call(func, thisArgs, args)

### Reflect.defineProperty(target, propertyKey, attributies)
等同于 Object.defineProperty(target, propertyKey, attiruties)

### Reflect.getOwnPropertyDescriptor(target, propertyKey)
等同于 Object.getOwnPropertyDescriptor(target, propertyKey)

### Reflect.isExtensible(target)
等同于 Object.isExtensible(target)
target是否可扩展，返回布尔值

### Reflect.preventExtensible(target)
等同于 Object.preventExtensible(target)
让target不可扩展

### Reflect.ownKeys(target)
等同于 Object.ownKeys(target)
返回一个对象的所有属性
Object.getOwnPropertyNames + Object.getOwnPropertySymbols

