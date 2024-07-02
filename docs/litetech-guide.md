---
Title: LiteTech游玩指导
Author: 4rcadia
Co-authors: null
Version: 1.1
Last Updated: 2024-02-08
---

# 1. LiteTech游玩指导

## 1.1. 文档更新

- 添加了Jade
- 添加了Xaero's World Map
- 预留了`!!pb`

## 1.2. 生存服功能

### 1.2.1. MCD Reforged指令

[MCDR](https://mcdreforged.com/zh-CN)是主要由 [@Fallen_Breath](https://space.bilibili.com/4690315) 开发的一款基于Python的服务器管理工具。MCDR的指令由 `!!` 开头。

#### 1.2.1.1. `!!qb` 备份

用于**备份**和**回档**，打出此命令来查看具体使用方式。

为了最好的保护数据安全，并且秉持开放和信任的原则，除了回档之外，其他操作（备份、删除、重命名等）所有玩家均**有权限**执行。

有玩家在线时，服务器每`30分钟`会自动备份，至多保存`7`个最近的备份，最远保留`1天12小时`之前。

有些过时，会尽早使用`!!pb`替换。

#### `!!pb` 备份

**占位符**

#### 1.2.1.2. `!!stats` 计分板

用于构建计分板，打出此命令来查看具体使用方式。

如果计分板不见了，可以使用`!!stats scoreboard show`显示，如果觉得有些遮挡视野，可以使用`!!stats scoreboard hide`隐藏。

部分计分板因为使用了`#all`标签，无法在右侧显示([TISUnion/StatsHelper #11](https://github.com/TISUnion/StatsHelper/issues/11))，可以使用`!!stats rank`来查看数据。

### 1.2.2. Carpet

[Carpet Mod](https://modrinth.com/mod/carpet)是由 [@Gnembon]() 开发的一款工具模组。可以在[这里](https://github.com/gnembon/fabric-carpet/wiki/Current-Available-Settings)查看Carpet的官方文档。

同时，服务器安装了许多Carpet的附属模组:

- Carpet TIS Addition
- Carpet AMS Addition
- Carpet Extra
- Carpet Fixes
- Gugle Carpet Addition
- Plusls Carpet Addition

以下将大致介绍使用Carpet作出的更改，极其常用的功能均**已开启**，不做赘述。

#### 1.2.2.1. 假人相关

假人名称是绿色的，会带有`_bot`后缀，使用命令指定假人时需要包含`_bot`后缀。

Gugle Carpet Addition提供了强大的假人控制，你可以:

- 右键打开并编辑假人背包
- Shift+右键打开并编辑假人末影箱

*Tips: 允许利用假人运输物资*

#### 1.2.2.2. `/where`和`/here`指令

由Carpet AMS Addition提供的功能。

`/here`可以向聊天发送当前坐标和另一维度对应坐标。

`/where`可以用来查询其他玩家的位置，在寻找和确认假人时十分有用。*没有找到兼顾隐私和方便的解决方案，如果需要暂时关闭可以联系 @4rcadia。*

`!!where`和`!!here`效果相同。

#### 1.2.2.3. `/lifetime`指令

由Carpet TIS Addition提供的怪物生成和清除跟踪器，可以用于刷怪塔debug。有些复杂，可以查看[官方文档](https://tisunion.github.io/Carpet-TIS-Addition/zh-Hans/docs/commands#%E5%AD%98%E6%B4%BB%E6%97%B6%E9%97%B4-lifetime)。

#### 1.2.2.4. 其他

1. 对着告示牌按住Shift，并且双手均无物品可以编辑告示牌
2. 珍珠传送、更改红石原件状态、仙人掌扳手均有音效
3. 潜影贝杀死幻翼有5%的概率掉落鞘翅
4. 除非你受到伤害，你的宠物鹦鹉会一直呆在你的肩膀上
5. $y=0$之下的刷石机会生成**深板岩**，上方有蓝冰的熔岩会变为**玄武岩**

### 1.2.3. 其他支持

服务端为其他客户端模组提供了支持。如果需要其他客户端模组支持，欢迎联系 @4rcadia。

#### 1.2.3.1. Viaversion

服务器使用了Viafabric和Viabackwards，因此支持`1.20.*`、`1.18.*`、`1.17.*`客户端连接。需要注意`1.16.*`及以下的客户端会遇到$y=\{h \vert 0\leq h \leq 255\}$之外方块无法交互的问题。

#### 1.2.3.2. Syncmatica

用于共享投影原理图，具体使用方法可以查看对应的[MC百科页面](https://www.mcmod.cn/class/6842.html)。

#### 1.2.3.3. MiniHud/Survex

Survex是masa全家桶较为没有存在感的成员，其为主要为MiniHud提供一些服务端信息。

#### 1.2.3.4. Jade

Jade是一个类似WTHIT的模组，提供一个显示当前指向方块信息的HUD，大概对客户端Jade的准确性有帮助吧。

#### Xaero's World Map

相当好用的小地图模组。在服务端启用可以将地图模式改为“服务器”，总的来说配置会更方便一些。可能会出现自动创建新地图的情况，删掉数据更少的新地图即可。

## 1.3. 创造服功能

记得先`/op`或者`!!op`自己。

为了提供最佳的测试环境，几乎所有指令均可以使用(除了一些危险指令)，配置基本与生存服相同。

### 1.3.1. World Edit 小木斧

相当好用的地形编辑模组，较为复杂，建议查阅[官方文档](https://worldedit.enginehub.org/en/latest/)(英文)，或者[MC插件百科](https://mineplugin.org/WorldEdit)(中文，可能过时)。
