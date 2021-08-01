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
                    [host+"/model/Epsilon/model.json"]
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
