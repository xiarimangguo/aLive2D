# aLive2D! 一个萌萌哒 Live2D API o(*≧▽≦)ツ #
> ——“这个Live2D好可爱有木有，好想把它添加到我的博客去!”  
  
> *......Two years later......*
  
> ——“唉，怎么这么复杂，还是放弃吧～～呜呜呜”  
  
还在为Live2D复杂的配置而苦恼吗？快来试试这款萌萌哒 Live2D API 吧！

我是萌萌哒gif演示，点我查看效果吧～  
[![aLive2D! 一个萌萌哒 Live2D API o(*≧▽≦)ツ](https://91.90.194.171:8443/api/Live2D/start/demo.png)](https://91.90.194.171/api/Live2D/start/demo.gif)

#### 目录 *(੭*ˊᵕˋ)੭*ଘ ####

* [壹·萌の初见](#萌の初见)
    * [让我们开始吧！](#让我们开始吧)
* [贰·萌の自述](#萌の自述)
    * [了解aLive2D函数](#了解alive2d函数)
    * [Position～模型定位全靠它](#position～模型定位全靠它)
    * [X,Y～我也很重要！](#X,Y～我也很重要)
    * [相似之处！](#相似之处)
    * [为我启用消息吧](#为我启用消息吧)
* [叁·萌の相识](#萌の相识)
    * [更换模型吧](#更换模型吧)
        * [使用Group函数随机展示模型分组](#使用group函数随机展示模型分组)
        * [使用Random函数和Auto函数](#使用Random函数和Auto函数)
    *  **[★•Moe API !•★](#moe-api-)** 
        * [食用方式](#食用方式)
        * [自建API](#自建api)
        * **[★•进阶·搭建API•★](https://github.com/xiarimangguo/aLive2D/blob/main/up.md)**
* [肆·萌の感谢](#萌の感谢)

在这里阅读，体验更佳呐～ [夏日芒果の小屋](https://xiarimangguo.github.io/aLive2D/)

## 萌の初见 ##

>你好呀！ 我是一只萌萌哒Live2D，很快你就将和我见面啦！ n(\*≧▽≦\*)n  

### 让我们开始吧！ ###

我们需要一段简单的HTML代码：  
  
```
<script src="https://91.90.194.171/api/Live2D"></script>
<script>aLive2D('#02007','240px','400px','Rb','10%','0%',false)</script>
```
我会悄悄地出现在网页的右下角哦～～  

你不相信？那就快来看看吧！

[#02007[一品锅|食物语] - aLive2D! 一个萌萌哒 Live2D API o(*≧▽≦)ツ](https://91.90.194.171/api/Live2D/demo.html)

或者...... 来这里看看效果吧～

[夏日芒果の小屋](https://xiarimangguo.github.io/aLive2D/)

悄悄地告诉你，可以使用“[捕获](https://91.90.194.171/api/Live2D/capture.html)”功能来记录我的可爱瞬间呢～

## 萌の自述 ##

> ——“我不喜欢总是呆在网页的右下角，你能帮我移动到其他位置吗？”  

>——“ 没问题！”

### 了解aLive2D函数 ###

```
aLive2D(Model,Width,Height,Position,X,Y,EnableMsg)
```

##### aLive2D函数提供7个参数 #####

* `Model` 要加载的模型名称&编号
* `Width,Height` 指定模型在网页中所占的宽度和高度
* `Position` 指定模型在网页中的定位方式
* `X,Y` 指定模型在网页中定位相对于原点偏移的距离
* `EnableMsg` 是否显示消息，接受布尔值，不写为false  

### 接下来要怎么做呢 ###

* 很简单啊，改变 `Position` 参数即可！  

```
aLive2D('#02007','240px','400px','Lb','10%','0%',false)
```
>唉？我怎么会出现在网页的左下角呢？

##### Position～模型定位全靠它 #####

`Position` 将网页的四个角作为定位原点

它提供 4 种定位方式
* 左上
* 右上
* 左下
* 右下

参数值分别为
* `'LeftTop'` `('Lt')`
* `'RightTop'` `('Rt')`
* `'LeftBottom'` `('Lb')`
* `'RightBottom'` `('Rb')`

它们规定了模型应以网页的哪一个角为原点(基准点)来定位，比如说`'Lb'`就代表以网页的左下角为原点定位，以此类推啦～～

##### X,Y～我也很重要！ #####

`X` 是横向偏移量，`Y`是纵向偏移量，它们适用html中的所有长度表示方式，根据`Position`的不同而有所变化

* 当`Position`为`'Lt'`时
    * `X`向右偏移
    * `Y`向下偏移
* 当`Position`为`'Rb'`时
    * `X`向左偏移
    * `Y`向上偏移

以此类推哦～～

##### 相似之处！ #####

看到这里，相信你已经发现，这和css中的position定位有些相似，只是将其中的`left`、`right`、`top`、`bottom`属性拎了出来成为函数的参数，你一定会很快地理解的！


>——“现在你知道你为什么在左下角了吧！我都告诉你啦！”

>——“谢啦!!☆⌒(*＾-゜)v 萌萌哒！”

### 为我启用消息吧 ###

>——"嘤嘤嘤～～～我怎么说不出话了呢？我真的不想默不作声！"

将`EnableMsg`参数设置为`true`，然后我就可以说话啦！

## 萌の相识 ##

>——"我们是好朋友啦！欢迎来找我的小伙伴玩呐！"

>——“可是，怎样才能找到你的小伙伴呢？”

### 更换模型吧 ###

`Model`参数控制展示的模型，在这里你可以使用你定义的模型名称(如 Haru )，也可以使用你定义的模型编号(如 #01001 )。(提示 : 请在[★•进阶·搭建API•★](https://github.com/xiarimangguo/aLive2D/blob/main/up.md#listjs)中查看关于**list.js**的详细介绍)

#### 小伙伴们来啦！ ####

>我太孤单了，我要把小伙伴们都叫来！

```
aLive2D('Group(defined,#02)','240px','400px','Lb','10%','0%',false)
```
>咦？`Group(defined,#02)`是什么东东

* `Model` 参数不仅支持显示单个模型，也可以随机显示多个模型

#### 使用Group函数随机展示模型分组 ####

```
Group(Method,GroupList)
```
`Method`支持3种分组模式！

* defined
* redefine
* custom

不要着急，听我慢慢道来

##### defined~顾名思义～我是已定义的分组 #####

在list.js中可以轻松设置分组哦，你可以使用组名方式(如 Swy )或编号方式(如 #02 )为分组命名

`GroupList`参数填写组名或编号即可！

##### redefine~我来重新定义分组 #####

```
Group(redefine,#02,List(+#01001,-#02053))
```
当`Method`为`redefine`时，函数接受3个参数

* `#02`为已定义的分组名称或编号
* `List(...)`是一个数组，用来向已定义分组添加或删除模型  
[这只是在代码中临时添加或删除，并不能改变list.js中已定义的分组]

##### List数组用处大 #####

`List`数组用来存放模型名称或编号，不限制模型的数量

在`redefine`条件下，使用`+编号&名称`添加模型，使用`-编号&名称`删除模型

名称和编号混用也是没有问题的哦
```
Group(redefine,#02,List(+Haru,-#02053))
```
##### 压轴出场！custom！ #####

`custom`用来在代码中自定义临时分组  
[并不能改变list.js中已定义的分组]

```
Group(custom,List(#02001,#02007,#02002))
```
##### ε = = (づ′▽`)づ List: 我又来啦 #####

`List`同样用来存放模型名称或编号，且不限制模型的数量哦

在`custom`条件下，将想要组成一组的模型全部放入List数组吧！同样支持名称和编号混用哦～～

##### 小提示 #####

为了更简洁地使用分组，建议在list.js中定义分组，然后以`defined`方式使用它

不过，以`defined`方式在list.js中定义分组，只能将要分组的模型按顺序排在一起[**[★•进阶·搭建API•★](https://github.com/xiarimangguo/aLive2D/blob/main/up.md#listjs)**]，而`redefine`和`custom`方式，可不按顺序自由定义分组，更加灵活。

#### 使用Random函数和Auto函数 ####

Random和Auto函数用于随机展示模型

```
Random()
```
```
Auto()
```
没错，就是这么简单，不需要任何参数！

将从已有的所有模型中随机抽取一个进行显示  ο(=•ω＜=)ρ⌒☆

知道了以上这些，就让我们开始使用 Moe API 吧！

### ★•Moe API !•★ ###

>——“我们是朋友，我要把最萌的萌物和你分享！ ｍ(o・ω・o)ｍ”

欢迎大家使用 Moe API !

 **最最最重要的事情来啦！** 

没错！本API可以用 **2行代码** 轻松为你的网页引入 Live2D ！
* 实现 **全自动** 加载模型
* **无须** 手动引入一连串的js文件
* **无须** 手动添加canvas标签
* **无须** 自己编写css样式
* **解决了** 到处寻找Live2D模型的苦恼
* 调整模型在网页上的位置及长宽

本API目前为纯静态编写，你可以很轻松地[自建API](https://github.com/xiarimangguo/aLive2D/up.md)，也可以将其部署在CDN上，无论是云服务器还是虚拟主机都可以轻松搭建...  

#### 食用方式 ####

 **最萌之·接口地址** [https://91.90.194.171/api/Live2D](https://91.90.194.171/api/Live2D)

```
<script src="https://91.90.194.171/api/Live2D"></script>
<script>aLive2D('#02007','240px','400px','Rb','10%','0%',false)</script>
```

使用上面的API时，`Model`请使用编号形式，本API采用五位编号形式，如 #02001.

| 分组 | 名称|范围 |
|:----------:|:----------:|:----------:|
|#01            | Default           |#01001--#01010            |
|#02            |Swy            |#02001--#02058            |
|...            |...            |...            |


快来挑选心仪的 Live2D 吧！

#### 自建API ####

本API开箱即用，包含60+模型，快来搭建吧！
 **[★•进阶·搭建API•★](https://github.com/xiarimangguo/aLive2D/blob/main/up.md)** 

## 萌の感谢 ##

本API的制作离不开一些开源项目的贡献，衷心感谢以下的开源项目！

[fguby/live2D: 来定制一个自己专属的live2D看板娘吧(๑•̀ㅂ•́)و✧](https://github.com/fguby/live2D)

感谢以下项目提供的 Live2D 模型

[Eikanya/Live2d-model: Live2d model collection](https://github.com/Eikanya/Live2d-model)

感谢以下项目提供的 message 功能

[galnetwen/Live2D: 在 Web 上展示 Live2D 吧！](https://github.com/galnetwen/Live2D)

#### o(\*≧▽≦)ツ一起交流呀～～ ####
[![aLive2D chat](https://img.shields.io/badge/aLive2D-Chat-blue?style=for-the-badge)](https://91.90.194.171:2333/)

**如果你喜欢这个项目，不要忘记为我点亮star哦！**

>蒙蒙的山，蒙蒙的海，茫茫人海中，萌萌的你o(*≧▽≦)ツ
