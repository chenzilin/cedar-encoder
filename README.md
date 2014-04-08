cedar-encoder
=============

Proof of concept hardware encoder based on Allwinner examples (available here http://dl.cubieboard.org/software/common/linux_codec_gnueabihf_20140327.tar.gz). 


It is not working very well yet. Some color problems.



Steps
----

1. linux-sunxi kernel with sunxi_mem driver. 
2. Recent sunxi-armhf libcedarv libs (http://dl.cubieboard.org/software/common/A20-sunxi.rar, thanks to Huang Benn) at your LD_LIBRARY_PATH.
3. make (remember to change the resolution, currently hardcoded)
4. ./encDemo input output




