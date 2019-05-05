---
title: typescript001
date: 2019-04-08 14:17:37
categories: typescript
tags:
---

### 类型注解
> TypeScript里的类型注解是一种轻量级的为函数或变量添加约束的方式

```typescript
function greeter(person: string) {
    return "Hello, " + person;
}
let user = "Jane User";
greeter(user);
```

### 接口
interface
```typescript
interface Person {
    firstName: string;
    lastName: string;
}
function greeter(person: Person) {
    return "Hello, " + person.firstName + " " + person.lastName;
}
```

### 类
```typescript
class Student {
    fullName: string;
    constructor(public firstName: string, public middleInitial: string, public lastName: string) {
        this.fullName = firstName + " " + middleInitial + " " + lastName;
    }
}
interface Person {
    firstName: string;
    lastName: string;
}
function greeter(person : Person) {
    return "Hello, " + person.firstName + " " + person.lastName;
}
let user = new Student("Jane", "M.", "User");
greeter(user);
```