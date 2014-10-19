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