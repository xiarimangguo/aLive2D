# 阅读量统计API #
这是由asp编写而成的一个阅读量统计API，为静态博客及 GitHub Pages 提供阅读量统计功能，可以很方便地在你的网页中使用
## 示例 ##
请在页面中合适的位置加入以下代码，就可以看到效果啦

```
<p>
<script src="https://91.90.194.171/analyze/counter.asp?Datatype=js&Page=Your_Url"></script>次阅读
</p>
```
请将 `Your_Url` 更换为你要统计的页面的URL～
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