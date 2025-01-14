---
layout: post
title: 前端知识体系-前端工程
subtitle: base knowleage of fronted project
author: "malin"
header-bg-css: "linear-gradient(to right, #5cadff, #09EF46);"
categories:
  - 前端
tags:
  - 前端知识体系
---

> 前端工程化：以工程化方法和工具提高开发生产效率、降低维护难度

## 项目构建

1. 理解npm、yarn依赖包管理的原理，两者的区别
2. 可以使用npm运行自定义脚本
3. 理解Babel、ESLint、webpack等工具在项目中承担的作用 *
4. ESLint规则检测原理，常用的ESLint配置 *  
[常用的ESLint配置](https://www.jianshu.com/p/f2d42f9d244c)  
5. Babel的核心原理，可以自己编写一个Babel插件 **   
[手撸插件](https://blog.csdn.net/weixin_34364071/article/details/88007887)  
6. 可以配置一种前端代码兼容方案，如Polyfill
7. Webpack的编译原理、构建流程、热更新原理，chunk、bundle和module的区别和应用 *  
[chunk、bundle和module的区别和应用](https://juejin.im/post/5d70ad50f265da03cf7aae91)  
8. 可熟练配置已有的loaders和plugins解决问题，可以自己编写loaders和plugins **   
[编写loaders和plugins](https://juejin.im/post/5bbf190de51d450ea52fffd3)
<!--more-->
## nginx

1. 正向代理与反向代理的特点和实例

2. 可手动搭建一个简单的nginx服务器、

3. 熟练应用常用的nginx内置变量，掌握常用的匹配规则写法

4. 可以用nginx实现请求过滤、配置gzip、负载均衡等，并能解释其内部原理

## 开发提速

1. 熟练掌握一种接口管理、接口mock工具的使用，如yapi

2. 掌握一种高效的日志埋点方案，可快速使用日志查询工具定位线上问题

3. 理解TDD与BDD模式，至少会使用一种前端单元测试框架

## 版本控制

1. 理解Git的核心原理、工作流程、和SVN的区别

2. 熟练使用常规的Git命令、git rebase、git stash等进阶命令

3. 可以快速解决线上分支回滚、线上分支错误合并等复杂问题

## 持续集成

1. 理解CI/CD技术的意义，至少熟练掌握一种CI/CD工具的使用，如Jenkins

2. 可以独自完成架构设计、技术选型、环境搭建、全流程开发、部署上线等一套完整的开发流程（包括Web应用、移动客户端应用、PC客户端应用、小程序、H5等等）

## 后端技能

1. 了解后端的开发方式，在应用程序中的作用，至少会使用一种后端语言

2. 掌握数据最终在数据库中是如何落地存储的，能看懂表结构设计、表之间的关联，至少会使用一种数据库

## 性能优化

1. 了解前端性能衡量指标、性能监控要点，掌握一种前端性能监控方案 [前端性能监控方案](https://www.cnblogs.com/dayiran1222/p/8745846.html#_label2)

2. 了解常见的Web、App性能优化方案 [性能优化方案](https://blog.csdn.net/wyc2000sgz/article/details/80392623)

3. SEO排名规则、SEO优化方案、前后端分离的SEO

4. SSR实现方案、优缺点、及其性能优化

5. Webpack的性能优化方案 * [优化方案](https://www.jianshu.com/p/809958a504b8)

6. Canvas性能优化方案

7. React、Vue等框架使用性能优化方案 * [性能优化方案](https://www.cnblogs.com/afterwawa/p/9439547.html)

## 前端安全 **

1. XSS攻击的原理、分类、具体案例，前端如何防御 [XSS攻击的原理、分类、具体案例](https://blog.csdn.net/qq_37931597/article/details/87967580)

2. CSRF攻击的原理、具体案例，前端如何防御 `不让第三方网站访问到用户 Cookie samesite httponly 在请求中加hash值`

3. HTTP劫持、页面劫持的原理、防御措施 [防御措施](https://blog.51cto.com/fengwan/1875011)
