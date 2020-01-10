---
title: ES6 · Array 常用方法
date: 2020-01-09 16:06:49
categories: es6
tags: array
---

**数组求和**
**数组最大值**
**数组最小值**
**数组去重**
**检查数组是否有重复项**
**查找数组中的重复项**
**两个数组的交集**
**两个数组的差集**
**两个数组的并集**



<!-- more -->

```js
const list = [1, 2, 3, 4, 3, 2, 1];
const list1 = [1, 2, 3, 4, 6, 8];
const list2 = [1, 2, 3, 5, 7, 9];

/**
 * 数组求和
 */
function computeSum(list) {
  return list.reduce((pv, cv) => pv + cv);
}

/**
 * 数组最大值
 */
function computeMax(list) {
  return Math.max(...list);
}

/**
 * 数组最小值
 */
function computeMin(list) {
  return Math.min(...list);
}

/**
 * 数组去重
 */
function removeRepeat(list) {
  return [...new Set(list)];
}

/**
 * 检查数组是否有重复项
 */
function hasRepeat(list) {
  return list.length !== new Set(list).size;
}

/**
 * 查找数组中的重复项
 */
function getRepeat1(list) {
  let res = [];
  let tem = [];
  list.map(item => {
    if (tem.includes(item)) {
      res.push(item);
    } else {
      tem.push(item);
    }
  });
  return res;
}

function getRepeat2(list) {
  let res = [];
  for (let i = 0; i < list.length; i++) {
    for (let j = i + 1; j < list.length; j++) {
      if (list[j] === list[i]) {
        res.push(list[i]);
      }
    }
  }
  return res;
}

/**
 * 两个数组的交集
 */
function getIntersection(list1, list2) {
  let res = [];
  list1.map(item => {
    if (list2.includes(item)) {
      res.push(item);
    }
  });
  return [...new Set(res)];
}

/**
 * 两个数组的差集
 */
function getDiff(list1, list2) {
  let res = [];
  list1.map(item => {
    if (!list2.includes(item)) {
      res.push(item);
    }
  });
  return [...new Set(res)];
}

/**
 * 两个数组的并集
 */
function getUnion(list1, list2) {
  return [...new Set([...list1, ...list2])];
}

```