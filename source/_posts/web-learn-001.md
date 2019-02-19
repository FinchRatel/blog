---
title: CSS · Flex
date: 2018-12-06 15:53:15
categories: web
tags: flex
---

**CSS · Flex**

<!-- more -->
|`main axis` 主轴|`cross axis` 交叉轴|
|---|---|
|`main start` 主轴起点|`cross start` 交叉轴起点|
|`main end` 主轴终点|`cross end` 交叉轴终点|
|`main size` 主轴方向大小|`cross size` 交叉轴方向大小|

### 容器属性
`display: flex`
- 指定flex布局，此时`float`、`clear`、`vertical-align`属性将失效

`flex-direction` 主轴方向
- `row` 默认 主轴为水平方向，起点在左端
- `row-reverse` 主轴为水平方向，起点在右端
- `column` 主轴为垂直方向，起点在上端
- `column-reverse` 主轴为垂直方向，起点在下端

`flex-wrap` 是否换行
- `nowrap` 默认 不换行
- `wrap` 换行
- `wrap-reverse` 反向换行

`flex-flow` 主轴方向和是否换行
- `row nowrap` 默认
- `flex-direction` 和 `flex-wrap` 的缩写

`justify-content` 主轴对齐方式
- `flex-start` 默认 主轴起点对齐
- `flex-end` 主轴终点对齐
- `center` 主轴居中对齐
- `space-between` 主轴两端对齐
- `space-around` 间隔相等

`align-items` 交叉轴对齐方式
- `stretch` 默认 拉伸 如果未设置高度或设置为auto，将占满整个高度
- `flex-start` 交叉轴起点对齐
- `flex-end` 交叉轴终点对齐
- `center` 交叉轴居中对齐
- `baseline` 第一行文字的基线对齐

`align-content` 多根轴线的对齐方式，一根轴线时不生效
- `stretch` 默认 拉伸 占满整个交叉轴
- `flex-start` 与交叉轴的起点对齐
- `flex-end` 与交叉轴的终点对齐
- `center` 与交叉轴的中点对齐
- `space-between` 交叉轴两端对齐
- `space-around` 间隔相等

### 子项属性
`order`
- 0 默认
- 子项的排列顺序，数字越小越靠前

`flex-grow`
- 子项放大比例
- 0 默认 不放大

`flex-shrink`
- 子项缩小比例
- 1 默认
- 0 不缩小

`flex-basis`
- 在分配多余空间之前，子项占据的主轴空间(main size)
- auto 默认

`flex`
- `flex-grow` `flex-shrink` `flex-basis`的简写
- `0 1 auto` 默认

`align-self`
- 子项对齐方式，覆盖`align-items`
- auto 默认 继承父元素的`align-items`

### 页面布局

#### 圣杯布局

![img](/images/holy_grail_layout.png)

```html
<!DOCTYPE html>
<html>
  <head>
    <title>flex test</title>
    <style type="text/css">
    body {
      padding: 0;
      margin: 0;
    }
    .container {
      display: flex;
      flex-flow: column nowrap;
    }
    .header,
    .footer {
      background: #eee;
      flex: 0 0 56px;
      text-align: center;
      line-height: 56px;
    }
    .main {
      height: 400px;
      background: #ddd;
      display: flex;
      line-height: 400px;
      text-align: center;
    }
    .left {
      flex: 0 0 160px;
      background: #ccc;
    }
    .center {
      flex: 1;
    }
    .right {
      flex: 0 0 160px;
      background: #bbb;
      align-self: flex-end;
    }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="header">HEADER</div>
      <div class="main">
        <div class="left">LEFT</div>
        <div class="center">CENTER</div>
        <div class="right">RIGHT</div>
      </div>
      <div class="footer">FOOTER</div>
    </div>
  </body>
</html>
```
