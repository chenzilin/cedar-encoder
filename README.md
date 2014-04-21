cedar-encoder
=============

Proof of concept hardware encoder based on Allwinner examples (available here http://dl.cubieboard.org/software/common/linux-codec-release-V1.2.rar). 


It is not working very well yet. Some color problems.



Steps
----

1. linux-sunxi kernel with sunxi_mem driver (see https://github.com/juanfont/linux-sunxi and, specifically, https://github.com/juanfont/linux-sunxi/commit/e8937b50bc749cf1069b6881e0189831381d342b). 
2. Recent sunxi-armhf libcedarv libs (http://dl.cubieboard.org/software/common/A20-sunxi.rar, thanks to Huang Benn) at your LD_LIBRARY_PATH.
3. Headers from include/ folder from http://dl.cubieboard.org/software/common/linux-codec-release-V1.2.rar
4. make (remember to change the resolution, currently hardcoded)
5. ./encDemo input output




