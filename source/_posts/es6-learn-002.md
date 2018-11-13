---
title: ES6 · async/await
date: 2018-11-09 10:30:18
categories: es6
tags: es6-async
---


> `async` 是 `Generator` 函数的语法糖，用于异步编程
> `async` 返回 `Promise` 对象，可以链式添加回调函数
> `await` 代表后面跟着的可能是异步操作，要等待异步操作结束，再接着执行如果不是异步操作，会立即返回对应值

<!-- more -->

例如：现在有一个商品的 `goodsId`，要获取商品对应店铺的所有宝贝。
- 1.先通过 `goodsId` 查询 `shopId`
- 2.然后通过 `shopId` 查询 `GoodsList`

```javascript
async function getGoodsList(goodsId) {
  const shopId = await getShopIdByGoodsId(goodsId)
  const goodsList = await getAllGoodsByShopId(shopId)
  return goodsList
}
```

> `async` 函数 `return` 返回的值，将会是第一个回调函数的参数

例如：获取店铺的所有宝贝之后，按照价格进行排序
```javascript
getGoodsList()
  .then(list => {
    sortByPrice(list)
  })
```

> `async` 函数内部出错时，如果内部异步方法没有错误处理，则 `Promise` 的状态会变为 `rejected`，该错误会被第一个 `catch` 回调函数接收。

例如：获取 `shopId` 出错了，如果 `getShopIdByGoodsId` 内部有部署 `catch` 方法，错误会被自己捕获，如果没有部署，错误会被 `async` 的回调捕获。
```javascript
getGoodsList()
  .then(f1)
  .catch(error => console.error(error))
```
