---
title: ES6 · Promise
date: 2018-11-07 18:17:47
tags: es6
---

**1. 理解Promise**
**2. new Promise()**
**3. Promise.resolve()**
**4. Promise.reject()**
**5. Promise.prototype.then()**
**6. Promise.prototype.catch()**
**7. Promise.prototype.finally()**
**8. Promise.prototype.done()**
**9. Promise.all()**
**10. Promise.race()**

<!-- more -->

> 异步编程的传统解决方案是回调函数和事件，在复杂的逻辑中，很容易多层回调函数嵌套(`CallBack Hell`)
> Promise 是一种新的解决方案，帮助开发者摆脱多层回调函数嵌套问题

### 理解Promise
Promise即承诺，即答应未来会做某件事。在未来某个时间，这个承诺可能会实现，也可能会被拒绝。
例如：A承诺(promise)B，十年后娶B。在这十年里，这个承诺的状态是进行中(pending)。十年后，如果A娶B，这个承诺就实现(状态变为resolved)了。如果A不娶B，这个承诺就被拒绝(转态变为rejected)了。

```javascript
const promise = new Promise((resolve, reject) => {
  setTimeout(() => {
    if (AMarryB) {
      resolve()
    } else {
      reject()
    }
  }, tenYear)
})
```

B说：十年后如果A娶B(承诺resolved)，B就给A生猴子；如果A不娶B(承诺rejected)，B就给嫁给C；但无论如何(finally)，B都爱着A。

```javascript
promise.then(() => {
  // 十年后，A娶了B
  BMakeMonkeyWithA()
}).catch(() => {
  // 十年后，A不娶B
  BMarryC()
}).finally(() => {
  // 无论如何
  BStillLoveA()
})
```

### new Promise()
创建一个`Promise`实例

```javascript
const promise = new Promise((resolve, reject) => {
  
})
```

### Promise.resolve()
把`Promise`实例的状态由`pending`转化为`resolved`，可以传参
也可以把普通对象转化为`Promise`对象，并立即转化为`resolved`状态
```javascript
const promise = new Promise((resolve, reject) => {
  // some async code here
  resolve(param1)
})
```

### Promise.reject()
把`Promise`实例的状态由`pending`转化为`rejected`，可以传参
也可以把普通对象转化为`Promise`对象，并立即转化为`rejected`状态
```javascript
const promise = new Promise((resolve, reject) => {
  // some async code here
  reject(param2)
})
```

### Promise.prototype.then()
`Promise`实例的回调函数，`Promise`实例的状态发生变化时调用。
有两个参数：
第一个参数是状态变为`resolved`的回调，接收`resolve()`传递的参数；
第二个是状态变为`rejected`的回调，接收`reject()`传递的参数；
第二个参数是可选的。

```javascript
promise.then((param1) => {
  // resolve()的回调
  // do some thing here
}, (param2) => {
  // reject()的回调
  // do some thing here
})
```

### Promise.prototype.catch()
`Promise`实例状态变为`rejected`的回调，
`.then(null, rejectCallBack)`的别名，
接收`reject()`传递的参数。

```javascript
promise.catch(param2 => {
  // reject()的回调
  // some code here
})
```

### Promise.prototype.finally()
只要状态发生变化，就会执行
有一个回调参数，处于链式的末端
ES2018引入标准
```javascript
promise
  .then()
  .catch()
  .finally(() => {
    // 不接收任何参数
    // some code here
  })
```

### Promise.prototype.done()
捕捉可能出现的错误，并向全局抛出
处于链式的末端
可以有回调参数，也可以没有
```javascript
promise
  .then()
  .catch()
  .done()
```

### Promise.all()
将多个`Promise`实例包装成一个新的`Promise`实例
接收一个数组作为参数
数组的元素都是`Promise`实例
所有参数`Promise`实例状态都变化为`resolved`，该实例的状态才会变为`resolved`，所有参数`Promise`实例都可以向该实例传参，这些参数会被包装成一个数组，传给改实例
有一个参数`Promise`实例的状态变为`rejected`，该实例的状态立即变为`rejected`，率先发生状态变化的参数`Promise`实例，可以把参数传给该实例
例如：猴王承诺花十年时间同时和三千妃嫔生猴子，十年后，最聪明的小公猴立为太子，最漂亮的小母猴立为公主，但是如果发现有的小猴子不像猴王，承诺作废。
```javascript
const promise = Promise.all([ makeMonkeyWith1, makeMonkeyWith2, ...])
promise
  .then(monkeys => {
    // monkeys是所有小猴子的数组
    monkeys.map(monkey => {
      if(isMale(monkey) && isMostClever(monkey)) {
        bePrince(monkey)
      } else if (isFemale(monkey) && isMostBeautiful(monkey)) {
        bePrincess(monkey)
      } else {
        beGone(monkey)
      }
    })
  })
  .catch(error => {
    monkeyKingHadGreenHats()
  })

```

### Promise.race()
将多个`Promise`实例包装成一个新的`Promise`实例
接收一个数组作为参数
数组的元素都是`Promise`实例
任何一个参数`Promise`实例状态发生变化，都会改变该实例的状态
率先发生状态变化的参数`Promise`实例，可以把参数传给该实例
例如：猴王承诺同时和三千妃嫔生猴子，第一个出生的如果是公猴立为太子，如果是母猴立为公主。
```javascript
const promise = Promise.race([ makeMonkeyWith1InTenYear, makeMonkeyWith2InTenYear, ...])
promise
  .then(monkey => {
    // monkey是第一个出生的小猴子
    if(isMale(monkey)) {
      bePrince(monkey)
    } else if (isFemale(monkey)) {
      bePrincess(monkey)
    } else {
      beGone(monkey)
    }
  })
  .catch(error => {
    neverBelieveInLove()
  })
```
