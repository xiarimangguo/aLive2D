# 阅读量统计API #

这是由asp编写而成的一个阅读量统计API，为静态博客及 GitHub Pages 提供阅读量统计功能，
还提供 Github Badge 功能，可以很方便地在你的网页中使用

## 特点 ##

可以为不同的文章分别统计阅读量，只需在你的网页中引入一行脚本即可调用，
还支持Github仓库的readme阅读量统计，阅读量统计也可以很轻松地进行啦～

## 更新 ##

**支持 Github Badge 模式啦，效果如下所示**

![visitors](https://91.90.194.171/analyze/counter.asp?Datatype=svg&Page=https://github.com/xiarimangguo/aLive2D/tree/sites/analyze)

只需将`Datatype`参数设置为`svg`即可使用啦

你可以复制下面的代码，并将其添加到你的readme中，就可以统计
阅读量了，别忘了把`Page`参数替换为你的readme的链接

**Markdown示例**
```
![visitors](https://91.90.194.171/analyze/counter.asp?Datatype=svg&Page=https://github.com/xiarimangguo/aLive2D/)
```

除了使用计数器模式外，你也可以使用本API生成自己的Badge，
可以自定义文字和颜色哦

下面的代码会生成一个浅绿色的 helloworld Badge
```
![visitors](https://91.90.194.171/analyze/counter.asp?Datatype=svg&Badge=hello-world-brightgreen&Page=https://github.com/xiarimangguo/aLive2D/)
```

![Hello World](https://91.90.194.171/analyze/counter.asp?Datatype=svg&Badge=hello-world-brightgreen&Page=https://github.com/xiarimangguo/aLive2D/tree/sites/analyze)

你可以使用`Badge`参数定义你自己的Badge，格式如下
```
hello-world-brightgreen
```

`hello`为Badge前半部分的显示文字，`world`为Badge后半
部分的显示文字，`brightgreen`为颜色

你也可以这样使用
```
visitors-$counter$-blue
```

这会让计数器显示为蓝色

`$counter$`变量用于调用计数器，它的值为当前文章的阅读量

你可以将`$counter$`变量夹杂在文字中间，像这样使用
```
Hello-You're No.$counter$ visitor-yellow
```
好啦，就这样吧～

## 示例 ##

请在页面中合适的位置加入以下代码，就可以看到效果啦

```
<p>
<script src="https://91.90.194.171/analyze/counter.asp?Datatype=js&Page=Your_Url"></script>次阅读
</p>
```
请将 `Your_Url` 更换为你要统计的页面的URL～

[点击这里查看效果吧](https://xiarimangguo.github.io/aLive2D/)

## 参数 ##

本API采用 **Get** 请求方式

#### Datatype ####
设置返回的数据类型，可选 `txt`  `js`  `json`  `xml` 四种数据类型，默认为 `txt` 数据类型
##### 返回数据示例 #####

- txt
```
0
```

- js
```
document.write(0)
```

- json
```
{
    "name":"visitors",
    "url":"https://xiarimangguo.github.io/aLive2D/",
    "counter":0
}
```

- xml
```
<visitors>
    <url>https://xiarimangguo.github.io/aLive2D/</url>
    <counter>0</counter>
</visitors>
```

#### Method ####
指定要进行的操作， **正常使用请不要指定该参数** ，可选 `reset` 和 `readonly` 两种操作

- ##### reset #####
重置当前页面的计数

- ##### readonly #####
设置当前页面计数为只读

#### Page ####
必填，填写要统计的页面的URL
##### 示例 #####
```
https://xiarimangguo.github.io/aLive2D/
https://xiarimangguo.github.io:443/aLive2D
https://xiarimangguo.github.io/aLive2D/index.html
https://xiarimangguo.github.io/aLive2D
```
请填写你的页面的完整URL，协议和端口号都要带(80和443端口可不写端口号)

## 最后 ##

为你的页面轻松地添加阅读量功能吧

#### 怎么自己搭建呢？ ####
下载 `counter.asp` ，在你的网站的根目录下新建一个 `analyze` 文件夹，把 `counter.asp` 放在这里就可以啦，然后你就可以调用你自己的 api啦～～

有些站长可能没有服务器，用的是 Github Pages ，那么你调用我的API就可以了
##### 调用地址 ##### 
[https://91.90.194.171/analyze/counter.asp](https://91.90.194.171/analyze/counter.asp)

- 根据自己的需要设定参数即可


 **如果你喜欢，别忘了为我点亮star呢～～** 
