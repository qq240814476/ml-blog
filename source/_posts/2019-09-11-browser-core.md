---
layout: post
title: 浏览器与Node的事件循环(Event Loop)有何区别?
author: "malin"
header-bg-css: "linear-gradient(to right, #5cadff, #09EF46);"
categories:
  - node
tags:
  - js
  - node
---

## 浏览器内核

- GUI 渲染线程
- JavaScript引擎线程
- 定时触发器线程
- 事件触发线程
- 异步http请求线程

1. GUI渲染线程

主要负责页面的渲染，解析HTML、CSS，构建DOM树，布局和绘制等。  
当界面需要重绘或者由于某种操作引发回流时，将执行该线程。  
该线程与JS引擎线程互斥，当执行JS引擎线程时，GUI渲染会被挂起，当任务队列空闲时，主线程才会去执行GUI渲染。  

<!--more-->
2. JS引擎线程

该线程当然是主要负责处理 JavaScript脚本，执行代码。  
也是主要负责执行准备好待执行的事件，即定时器计数结束，或者异步请求成功并正确返回时，将依次进入任务队列，等待 JS引擎线程的执行。  
当然，该线程与 GUI渲染线程互斥，当 JS引擎线程执行 JavaScript脚本时间过长，将导致页面渲染的阻塞。  

3. 定时器触发线程

负责执行异步定时器一类的函数的线程，如： setTimeout，setInterval。  
主线程依次执行代码时，遇到定时器，会将定时器交给该线程处理，当计数完毕后，事件触发线程会将计数完毕后的事件加入到任务队列的尾部，等待JS引擎线程执行。  

4. 事件触发线程

主要负责将准备好的事件交给 JS引擎线程执行。  

比如 setTimeout定时器计数结束， ajax等异步请求成功并触发回调函数，或者用户触发点击事件时，该线程会将整装待发的事件依次加入到任务队列的队尾，等待 JS引擎线程的执行。  
5. 异步http请求线程

负责执行异步请求一类的函数的线程，如： Promise，axios，ajax等。  
主线程依次执行代码时，遇到异步请求，会将函数交给该线程处理，当监听到状态码变更，如果有回调函数，事件触发线程会将回调函数加入到任务队列的尾部，等待JS引擎线程执行。  