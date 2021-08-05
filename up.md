# ★•进阶·搭建API•★ #
>已经迫不及待了吧，让我们开始吧！

本API目前为纯静态编写，你可以很轻松地自建API，也可以将其部署在CDN上，无论是云服务器还是虚拟主机都可以轻松搭建...  

#### 目录 *(੭*ˊᵕˋ)੭*ଘ ####

* [壹·开箱啦](#开箱啦)
    * [¿?～坑～无处不在！](#坑无处不在)
        * [跨域这位“老朋友”又来了！！！](#跨域这位老朋友又来了)
        * [为什么模型文件404了？明明在这里的！](#为什么模型文件404了明明在这里的)
* [贰·进阶配置](#进阶配置)
    * [List.js](#listjs)
        * [数组characters～存放url](#数组characters存放url)
        * [tellMoe函数～对应关系](#tellMoe函数对应关系)
        * [moeNum函数～定义分组](#moeNum函数定义分组)
    * [LAppDefine.js](#lappdefinejs)
* **[★•叁·添加萌萌哒Live2D模型•★](#添加萌萌哒live2d模型)**

## 开箱啦 ##

* 将本项目的源码下载下来，上传到你的服务器根目录，并在html文件中引入以下代码，就可以使用啦！

```
<script src="https://Your_HostName/api/Live2D/live2d.js"></script>
<script>aLive2D(Model,Width,Height,Position,X,Y,EnableMsg)</script>
```
![让我们开始吧！](https://91.90.194.171:8443/api/Live2D/start/start.gif)
* 打开`live2d.js`将**其中的`host`变量**更改为你的主机名(如有端口号，那么端口号也要带)
![更改主机名](https://91.90.194.171:8443/api/Live2D/start/8.gif)
* 请把上面的代码中的`Your_HostName`更换为你的主机名(域名或IP地址)，并配置aLive2D函数
![配置aLive2D函数](https://91.90.194.171:8443/api/Live2D/start/9.gif)

#### ¿?～坑～无处不在！ ####

- ##### 跨域这位“老朋友”又来了！！！ #####  
为了防止跨域问题，请为服务器添加以下**HTTP响应标头**  
[设置不了的也不是不能用，只是只能在**你自己**的网站上使用，无法对外提供服务]  
，并为服务器**启用`https`访问**  
[尽量吧，实在启用不了就算了，只是你的api只能**被`http`页面调用**]
```
Access-Control-Allow-Headers: Content-Type, api_key, Authorization
Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS
Access-Control-Allow-Origin: *
```
![跨域设置](https://91.90.194.171:8443/api/Live2D/start/10.gif)

- ##### 为什么模型文件404了？明明在这里的！ #####  
请在服务器中为`moc`和`mtn`文件设置正确的`Mime-type` `(Mime类型)`，避免莫名其妙的`404`问题  
[没有IIS的管理权？尝试通过根目录的`web.config`配置(没有就新建一个)，这是一个xml文件，包含当前目录下的IIS配置信息(请Google “web.config添加Mime类型”)]  

**`Mime-type`设置如下**

```
moc: application/octet-stream
mtn: application/octet-stream
```
![Mime-type设置](https://91.90.194.171:8443/api/Live2D/start/11.gif)

## 进阶配置 ##

在开始配置前，让我们认识两个文件吧！

#### List.js ####

* List.js用来定义模型列表及分组，指定模型名称与配置文件的对应关系

List.js的文件结构如下所示

```
var characters = [
    ...
    host+"/api/Live2D/shiwuyu/100005_lonjingxiaren/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100034_baozaifan/LAppDefine.js",
    host+"/api/Live2D/shiwuyu/100025_guobaorou/LAppDefine.js",
    ...
];
function tellMoe(Moc) {
    switch (Moc) {
        ...
        case "Lonjingxiaren":
        case "#02001":
            return characters[10];
             break;
        case "Baozaifan":
        case "#02002":
            return characters[11];
             break;
        case "Guobaorou":
        case "#02003":
            return characters[12];
             break;
        ...
    }
function moeNum(Grp) {
	var moe_num = [];
    switch (Grp) {
        case "Default":
        case "#01":
            moe_num[0] = 0;
            moe_num[1] = 9;
            return moe_num;
             break;
        case "Shiwuyu":
        case "#02":
            moe_num[0] = 10;
            moe_num[1] = 60;
            return moe_num;
             break;
        default:
            moe_num[0] = 0;
            moe_num[1] = 9;
            return moe_num;
             break;
        };
};
```

##### 数组characters～存放url #####

* characters用于存放模型的`LAppDefine.js`配置文件url  

##### tellMoe函数～对应关系 #####

* 这里的每一个`case`块都存放着模型与配置文件的对应关系

```
case "Lonjingxiaren":
case "#02001":
    return characters[10];
     break;
```

* `Lonjingxiaren`是**模型名称**，`#02001`是**模型编号**  
* `characters[10]`是该模型对应的**配置文件**  
* 在每个`case`块中，**`characters[x]`**中的**`x`**应比上一个`case`块**增加1**，以便与`characters`数组中的url一一对应

##### moeNum函数～定义分组 #####

* 这里的每一个`case`块都存放着模型的分组信息

```
case "Shiwuyu":
case "#02":
    moe_num[0] = 10;
    moe_num[1] = 60;
    return moe_num;
     break;
```

* `Shiwuyu`是**分组名称**，`#02`是**分组编号**  
* `moe_num[0]`用于设置分组的**起始位置**(填写`characters`数组下标)
* `moe_num[1]`用于设置分组的**结束位置**(填写`characters`数组下标)
* 将要分成一组的模型的`case`在`tellMoe`函数中**放在一起**，然后在这里配置，你就定义好一个新的分组啦

#### LAppDefine.js ####

* 这个文件用来配置模型参数
* 文件详细配置参见[fguby/live2D: 来定制一个自己专属的live2D看板娘吧(๑•̀ㅂ•́)و✧](https://github.com/fguby/live2D)
* 这个清晰度配置是我新增的，注释里标明了使用方法呐

文件结构如下所示

```
            var LAppDefine = {   
                // 调试，true时会在console里显示日志
                DEBUG_LOG : true,
                DEBUG_MOUSE_LOG : false, // 鼠标相关日志   
                //  全部设定    
                //这里配置canvsa元素的id
                CANVAS_ID : "aLive2D",
                //是否开启滚轮缩放，默认true
                IS_SCROLL_SCALE : true,
                // 画面最大缩放级别
                VIEW_MAX_SCALE : 2,
                // 画面最小缩放级别
                VIEW_MIN_SCALE : 0.8,

                VIEW_LOGICAL_LEFT : -1,
                VIEW_LOGICAL_RIGHT : 1,

                VIEW_LOGICAL_MAX_LEFT : -2,
                VIEW_LOGICAL_MAX_RIGHT : 2,
                VIEW_LOGICAL_MAX_BOTTOM : -2,
                VIEW_LOGICAL_MAX_TOP : 2,
                
                // 动作优先级常量
                PRIORITY_NONE : 0,
                PRIORITY_IDLE : 1,
                PRIORITY_NORMAL : 2,
                PRIORITY_FORCE : 3,

                //是否绑定切换模型按钮
                IS_BIND_BUTTON : false,
                //绑定按钮元素id
                BUTTON_ID : "Change",
                //是否开启模型切换完成之前禁止按钮点击的选项，默认为true
                IS_BAN_BUTTON : true,
                //设置按钮禁止状态时的class，可自定义样式，前提是IS_BAN_BUTTON为true
                BAN_BUTTON_CLASS : "inactive",
                //设置按钮正常状态时的class
                NORMAL_BUTTON_CLASS : "active",
                //衣服切换模式 目前只支持两种 sequence-顺序 random-随机
                //需事先配置好json文件里的textures属性
                //暂不支持保存功能
                TEXURE_CHANGE_MODE : "sequence",
                IS_START_TEXURE_CHANGE : false,
                TEXURE_BUTTON_ID : "",
                /**
                 *  模型定义
                    自定义配置模型，同一数组内放置两个模型则为开启双模型
                    三模型也只取数组里的前两个
                    模型出现的顺序与数组一致
                    这里请用相对路径配置
                */
                MODELS:
                [
                    [host+"/model/100001_hugeng/model.json"]
                ],

                // 与外部定义的json文件匹配
                MOTION_GROUP_IDLE : "idle", // 空闲时
                MOTION_GROUP_TAP_BODY : "tap_body", // 点击身体时
                MOTION_GROUP_FLICK_HEAD : "flick_head", // 抚摸头部
                MOTION_GROUP_PINCH_IN : "pinch_in", // 放大时
                MOTION_GROUP_PINCH_OUT : "pinch_out", // 缩小时
                MOTION_GROUP_SHAKE : "shake", // 摇晃
                //如果有自定义的动作分组可以放在这里

                // 与外部定义json文件相匹配
                HIT_AREA_HEAD : "head",
                HIT_AREA_BODY : "body",
                
                //初始化的模型大小
                SCALE : 1.2,
                
                //新增属性，是否播放音频 默认为true
                IS_PLAY_AUDIO : true,
                //新增属性，audio标签id值   
                AUDIO_ID : "aAudio",
                
                /**
                 * 清晰度设置
                    此配置为新增配置，如设置后没有效果或图像变形，
                    请检查<canvas>标签是否位于<div>或其他父标签内，
                    并将<canvas>独立放于一个父标签内，
                    并取消其父标签的width和height属性
                */
                
                //是否启用清晰度设置 默认为false
                IS_ENABLE_CLARITY : true,
                //设置清晰度 支持 1倍 2倍 4倍 8倍 16倍 
                CLARITY : 2,
                //是否启用自动适配 可优化移动设备的显示效果
                IS_AUTO_ADJUST_CLARITY : true
                
            };

```

>xiarimangguo: 看看其它的Live2D在移动端的显示效果(惨·不·忍·睹)，你就会明白有些站长一定不要移动端显示Live2D的原因了......

快来体验一下清晰度设置吧，让你的Live2D们更加生动！

~~蓝屏钙，好喝的钙~~

不要尝试16倍的清晰度......不要尝试16倍的清晰度......不要尝试16倍的清晰度......

(°ー°〃)(°ー°〃)  
[Chrome已停止响应][请稍候，Microsoft诊断程序正在检测问题......]

(°ー°〃)(°ー°〃)(°ー°〃)(°ー°〃)(°ー°〃)  
[Windows已停止响应...]

## 添加萌萌哒Live2D模型 ##

#### 如果你想要添加自己的模型，那么就按以下步骤操作吧 ####

1. 将存放模型的文件夹复制到`model`文件夹中
![第1步](https://91.90.194.171:8443/api/Live2D/start/1.gif)
2. 如果没有`model.json`，要配置一下`model.json`，**在`expressions`一节中设置模型表情**，需与`expression`文件夹一致，或者**找到`*.exp.json`文件所在的文件夹**一般就是存放模型**表情**的文件夹，**在`motions`一节中设置模型动作文件**，需与`action`或`motion`文件夹一致，或者**找到`*.mtn`文件所在的文件夹**一般就是存放模型**动作**的文件夹[此步骤仅作参考哦，一般来说模型文件夹中会附带`model.json`的]
![第2步](https://91.90.194.171:8443/api/Live2D/start/2.gif)
**这样配置`model.json`**
![第3步](https://91.90.194.171:8443/api/Live2D/start/3.gif)
3.  在api/Live2D文件夹下新建一个文件夹，命名为模型所在分组名，进入该文件夹，新建一个文件夹，命名为模型的名称  
[如分组文件夹已存在，只须新建一个文件夹，命名为模型的名称即可]
![第4步](https://91.90.194.171:8443/api/Live2D/start/4.gif)
4. 将`LAppDefine.js`复制到该文件夹，更改`models`参数，指向模型配置文件`model.json`的url
![第5步](https://91.90.194.171:8443/api/Live2D/start/5.gif)
5. 在list.js中的`characters`数组中添加`LAppDefine.js`的url
6. 在`tellMoe`函数中新增一个`case`，并定义模型名称及编号，以及对应的配置文件
7. 在`moeNum`函数中更新对应分组的分组范围
![第6步](https://91.90.194.171:8443/api/Live2D/start/6.gif)
8. 更改`aLive2D`函数的`Model`参数，模型就会出现在网页上啦！
![第7步](https://91.90.194.171:8443/api/Live2D/start/7.gif)
如果还是不会操作，请参考已配置好的模型呐，结合上面的步骤，很快就可以理解的！

本API附带的60+开箱即用的模型都是很不错的，你也可以从中挑选喜欢的模型使用呀～

>o(*≧▽≦)ツ喵~~~
