---
title: Hexo · 标签插件
date: 2018-11-01 17:11:27
tags: hexo
---

**1. 引用块**
**2. 代码块**
**3. 反引号代码块**
**4. Pull Quote**
**5. jsFiddle**
**6. Gist**
**7. iframe**
**8. Image**
**9. Link**
**10. Include Code**
**11. Youtube**
**12. Vimeo**
**13. 引用文章**
**14. 引用资源**
**15. Raw**

<!-- more -->

### 引用块

- 用法
```
{% blockquote %}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque hendrerit lacus ut purus iaculis feugiat. Sed nec tempor elit, quis aliquam neque. Curabitur sed diam eget dolor fermentum semper at eu lorem.
{% endblockquote %}
```
- 效果
{% blockquote %}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque hendrerit lacus ut purus iaculis feugiat. Sed nec tempor elit, quis aliquam neque. Curabitur sed diam eget dolor fermentum semper at eu lorem.
{% endblockquote %}

### 代码块
- 用法
```
{% codeblock lang:javascript Object.assign http://es6.ruanyifeng.com/#docs/object#Object-assign Object.assign %}
Object.assign(targetObject, sourceObject);
{% endcodeblock %}
```
- 效果
{% codeblock lang:javascript Object.assign http://es6.ruanyifeng.com/#docs/object#Object-assign Object.assign %}
Object.assign(targetObject, sourceObject);
{% endcodeblock %}

### 反引号代码块
- 用法
`[language] [title] [url] [link text] code snippet`

- 效果
```javascript Object.assign http://es6.ruanyifeng.com/#docs/object#Object-assign  Object.assign
Object.assign(targetObject, sourceObject);
```

### Pull Quote
- 用法
```
{% pullquote [class] %}
content
{% endpullquote %}
```
- 效果
{% pullquote [class] %}
content
{% endpullquote %}

### jsFiddle
- 用法
```
{% jsfiddle shorttag [tabs] [skin] [width] [height] %}
```
### Gist
- 用法
```
{% gist gist_id [filename %}
```

### iframe
- 用法
```
{% iframe url [width] [height] %}
```
- 效果
{% iframe https://www.baidu.com 680 280 %}

### Image
- 用法
```
{% img [class names] /path/to/image [width] [height] [title text [alt text]] %}
```
- 效果
![img](\images\dog.png)

### Link
- 用法
```
{% link text url [external] [title] %}
```
- 效果
{% link Object.assign http://es6.ruanyifeng.com/#docs/object#Object-assign ES6 Object.assign %}

### Include Code
- 用法
```
{% include_code [title] [lang:language] path/to/file %}
```

### Youtube
- 用法
```
{% youtube video_id %}
```

### Vimeo
- 用法
```
{% vimeo vimeo_id %}
```

### 引用文章
- 用法
```
{% post_path slug %}
{% post_link slug [title] %}
```

### 引用资源
- 用法
```
{% asset_path slug %}
{% asset_img slug [title] %}
{% assset_link slug [title] %}
```

### Raw
- 用法
```
{% raw %}
content
{% endraw %}
```
