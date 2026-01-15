---
title: '从PS迁移到krita'
description: '觉得PS太笨重了，所以决定从PS迁移到Krita。'
pubDate: '2026-1-14'
tags: ['技术', '绘画']
---

觉得PS太笨重了，所以决定从PS迁移到Krita。

### 安装
因为以前在steam购买过（赞助），所以直接从steam启动，也方便自动更新,顺便记录使用时长。

### 快捷键迁移
Krita快捷键在**菜单栏-设置-配置Krita**里面

![image.png](https://cloudflare-imgbed-f08.pages.dev/file/1768400110032_image.png)

![image.png](https://cloudflare-imgbed-f08.pages.dev/file/1768400381861_image.png)

画面快捷键的操作可以选组合按键，按键加鼠标，手势，滚轮，主要是画面上的一些操作，第三列可以选不同的的操作，自由度还是蛮高的，就是绽放画布不能上下，只能左右，基本上是可以还原PS上的大部分的操作的。

为了方便展示，这里做了一个表格，记录一下平常主要用到的PS快捷键和迁移过去的快捷键：

| 功能 | PS | Krita |
|------|------|-------|
| 缩放画布 | Z+左右拖动鼠标左键 | Z+上下拖动鼠标左键 |
| 旋转画布 | R+旋转鼠标左键 | R+旋转鼠标左键 |
| 缩放笔刷大小 | Alt+左右拖动鼠标右键 | Shift+左右拖动鼠标左键 |
| 取色 | Alt鼠标左键 | Alt鼠标左键 |
| 隐藏图层 | 无 | H |
| 键盘选择图层 | Alt+[] | [] |
| 鼠标选择图层 | ctrl+鼠标左键 | ctrl+鼠标左键 |
| 橡皮 | E橡皮B画笔 | 按E在画笔和橡皮切换 |
| 选区 | M | M |
| 取消选区 | Ctrl+D | Ctrl+D |
| 复制图层 | Ctrl+J | Ctrl+J |
| 删除选区内容 | Ctrl+X | Delete |
| 填充前景色 | Alt+Del | Alt+Del |
| 填充背景色 | Ctrl+Del | Ctrl+Del |

### 笔刷迁移

试了一下PS的abr笔刷导入krita是空白的，所以这个方法不行，只能自己在krita做一个笔刷。
按F5进入笔刷设置界面
官方文档的介绍可以看这里：[官方文档](https://docs.krita.org/zh_CN/user_manual/loading_saving_brushes.html)

这里主要介绍一下如何导入PS abr笔刷的图案

- 在线解析:[https://jlai.github.io/brush-viewer/](https://jlai.github.io/brush-viewer/)

- 手动导出:在ps中按F5 打开笔刷设置，打开画笔设置-纹理-选中纹理-齿轮图标-导出PAT格式，导入最新版的GIMP3.2可以导入PS的PAT格式的图案，导出为PNG即可

![image.png](https://cloudflare-imgbed-f08.pages.dev/file/1768401540719_image.png)

在krita的笔刷设置中选纹理-图案-导入PNG图案即可

![image.png](https://cloudflare-imgbed-f08.pages.dev/file/1768401996872_image.png)

笔刷的具体参数也没有去弄懂，只是根据直觉效果去调参数让其接近PS中的效果，没有100%还原PS中的效果。

![image.png](https://cloudflare-imgbed-f08.pages.dev/file/1768403567345_image.png)

主要调整的地方就是图像的参数、间距、笔尖纹理-图案-选项里面的缩放亮度对比度、效果强度，颜色太淡了调整这些地方有效果

![image.png](https://cloudflare-imgbed-f08.pages.dev/file/1768446907055_image.png)


### 导出krita笔刷

菜单栏-设置-管理资源库-创建资源库

![image.png](https://cloudflare-imgbed-f08.pages.dev/file/1768446449573_image.png)

可以把不同各类的资源打包成一个文件进行分享

![image.png](https://cloudflare-imgbed-f08.pages.dev/file/1768446543300_image.png)