大家好，本次视频会给大家介绍js中的一些基础概念。
只要有编程基础，那么这节课程对你来说应该问题不大。

js上手比较简单，但是有些基础概念也是需要仔细去琢磨，研究才能理解透彻，废话不多说，开讲

首先今天的内容是

作用域
this的指向 有附加题
引用传递和值传递 
ES6+比较重要的新特性

先来看看作用域，作用域 顾名思义 作用的范围 什么作用的范围呢 变量作用的范围 按照影响范围大小 可以划分成 全局作用域和局部作用域 局部作用域又可以划分成函数作用域和块级作用域

全局作用域：
巴拉巴拉
看这个代码

切换到网页

很简单的一段代码，大家可以预测一下结果哈

执行一下test 很简单就不等大家了，返回结果是1
为什么是1呢
这个涉及到作用域链的知识
在执行函数的时候，首先在函数内查找变量，如果没有则到函数定义的作用域中去找同名变量
