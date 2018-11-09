---
title: Vue · 生命周期
date: 2018-11-09 16:58:26
categories: vue
tags: vue-lifeCircle
---

**1. beforeCreate**
**2. created**
**3. beforeMount**
**4. mounted**
**5. beforeUpdate**
**6. updated**
**7. beforeDestroy**
**8. destroyed**
**9. 示例**

<!-- more -->

> Vue生命周期图示

![vue-lifeCircle](/images/vue-lifeCircle.png)

### 1. beforeCreate
> 在实例初始化之后，数据观测(data observer)和event/watcher事件配置之前被调用

### 2. created
> 在实例创建完成之后被立即调用
> 在这一步，已完成一下的配置：
>   数据观测(data observer)
>   属性和方法的运算
>   watch/event事件回调
> 挂载阶段还未开始，$el属性目前不可用

### 3. beforeMount
> 在挂载开始之前被调用
> 该钩子在服务端渲染期间不被调用

### 4. mounted
> el被新创建的vm.$el替换，并挂载到实例上去之后调用该钩子
> mounted时，子组件未必已经被挂载
> 若需要整个视图渲染完毕再执行，需要用vm.$nextTick()
> 该钩子在服务端渲染期间不被调用

### 5. beforeUpdate
> 数据更新时调用，发生在虚拟 DOM 打补丁之前。这里适合在更新之前访问现有的 DOM，比如手动移除已添加的事件监听器。
> 该钩子在服务器端渲染期间不被调用，因为只有初次渲染会在服务端进行。

### 6. updated
> 由于数据更改导致的虚拟 DOM 重新渲染和打补丁，在这之后会调用该钩子
> 当这个钩子被调用时，组件 DOM 已经更新，所以你现在可以执行依赖于 DOM 的操作。然而在大多数情况下，你应该避免在此期间更改状态。如果要相应状态改变，通常最好使用计算属性或 watcher 取而代之。
> 注意 updated 不会承诺所有的子组件也都一起被重绘。如果你希望等到整个视图都重绘完毕，可以用 vm.$nextTick
> 该钩子在服务器端渲染期间不被调用。

### 7. beforeDestroy
> 实例销毁之前调用。在这一步，实例仍然完全可用。
> 该钩子在服务器端渲染期间不被调用。

### 8. destroyed
> Vue 实例销毁后调用。调用后，Vue 实例指示的所有东西都会解绑定，所有的事件监听器会被移除，所有的子实例也会被销毁。
> 该钩子在服务器端渲染期间不被调用。

### 9. 示例
```vue app.vue
<template>
  <div id="app">hello, vue.</div>
</template>

<script>
export default {
  data() {
    return {
      time: new Date().getTime()
    };
  },
  beforeCreate() {
    console.log('beforeCreate', new Date().getTime() - this.time);
  },
  created() {
    console.log('created', new Date().getTime() - this.time);
  },
  beforeMount() {
    console.log('beforeMount', new Date().getTime() - this.time);
  },
  mounted() {
    console.log('mounted', new Date().getTime() - this.time);
    setTimeout(() => {
      this.$forceUpdate();
    }, 1000);
    setTimeout(() => {
      this.$destroy();
    }, 2000);
  },
  beforeUpdate() {
    console.log('beforeUpdate', new Date().getTime() - this.time);
  },
  updated() {
    console.log('updated', new Date().getTime() - this.time);
  },
  beforeDestroy() {
    console.log('beforeDestroyed', new Date().getTime() - this.time);
  },
  destroyed() {
    console.log('destroyed', new Date().getTime() - this.time);
  }
};
</script>
```

```bash 输出结果
beforeCreate NaN # 这里输出NaN是因为beforeCreate时，this.time取不到值
created 0
beforeMount 0
mounted 3
beforeUpdate 1005
updated 1006
beforeDestroyed 2004
destroyed 2005
```

参考文档：[Vue 官网 API](https://cn.vuejs.org/v2/api/#%E9%80%89%E9%A1%B9-%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F%E9%92%A9%E5%AD%90)
