zlevoclient_openwrt
edit_time:20141019 10:54 UTC +0800
===================
update time 201410191054 UTC +0800
联想天工802.1X山寨客户端，fork自googlecode，openwrt下编译暂未完成，暂未写makefile
初步认为是交叉编译环境问题。研究中。
有一份zdcclient在同一环境下编译通过
以zdcclient为蓝本，移植ing

update time 201410191324 UTC +0800
仿照zdcclient的makefile文件编写了zlevoclient的makefile文件
编写了openwrt的描述文件
今天将会在Openwrt Backfire的SDK上测试该版本代码

update time 20141022
19日在sdk上编译失败，原因未知

update time 201410230057 UTC +0800
终于了解原因!使用了x64系统编译！！
这是出错原因吗？目前转换x86系统中，稍后测试编译！！
【更新】本文件从Readme.md改为updatelog.md
因为看起来这里我写更多的是编译过程遇到的问题和解决方案，灵感

update time 201411020217 UTC +0800
经过测试的确是64位系统有问题？碰巧撞上了？
更换位x86之后使用SDK编译，环境正常，初次编译的时候SDK遇到了各种问题
链接库位置不对等等，需要自己小心寻找位置，或者在Makefile中修改参数
一直不停更换、更改Makefile的内容，网上有牛人提示编译会因为没有安装ccache的关系出错，所以编写了另外一个Makefile，就是现在old版的Makefile，但是一直编译不过，提示链接库位置出错
然后我想装了ccache会不会就好了呢？
在本机apt-get install ccache之后，使用zlevoclient原作者编写的Makefile效果就出来了，但提示libiconv.a的位置出错，直接把这文件复制到它要找的地方就算了，懒得改LINK参数！
（所以就是Makefile文件又更新了！）
在今天凌晨的编译中，程序出来了，但是没有打包成Openwrt的包文件
程序出来就好，其他不管了
稍后更新zlevoclient的Makefile
我实在忍不住装了ccache，然后编译就成功了
【目前正在测试：eht0（wan）在固定IP的状态下，如何叠加pppoe拨号】
网上寻找到在Openwrt-Shell环境中直接使用pppd拨号的方法
