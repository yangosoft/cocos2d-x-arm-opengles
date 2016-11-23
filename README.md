

#Cocos2d-x port to ARM OpenglES


**Warning: still is not finished but it runs.**

This is a port of Cocos2d-x 3.10 https://github.com/cocos2d/cocos2d-x for a custom ARM IMX6 board.

It uses SDL1.3 and OpenglES2.


Some sources are not compiled, 3D support is not completed. Javascript bindings are missing and Lua too. 


**Basic instructions**
Set SDK path in Makefile.lib and Makefile.gamelink
Set specific flags for your ARM board.


Gstreamer is not needed so you can remove it.






