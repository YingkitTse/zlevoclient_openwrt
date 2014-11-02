	Release Time
	20141102 0240 UTC +0800

	Release Version
	1.0

READ ME		
使用Attitude Adjustment版SDK编译	
编译开始前，请将staging_dir/target-XXXX/usr/下的include和lib文件夹拷贝到staging_dir/toolchain-XXXX/usr下，追加到原来的两个文件夹中	
把这个repo放在Package文件夹里面，改名为zlevoclient，	
并使用su安装ccache	
安装完成后，在SDK主目录打开终端	
make V=s	
最后会提示出错，错误信息大概为“find no rule to make install"	
然后就可以在build_dir/target-XXXX/zlevoclient下找到zlevoclient程序文件	
复制到路由器/root/usr/bin下，即可在shell中直接使用zlevoclient命令启动程序	

THANK		
zlevoclient原作者apt-blog.net
