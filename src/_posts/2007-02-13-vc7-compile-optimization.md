---

# vc7 compile optimization
2007-02-13 18:12

[c++, speed, optimization, compile]
---


我写Windows程序的编译器一直都是vc7,并且短时间内也不打算迁移到其他版本。

最近开始写一个低内存消耗的程序(对比：<a href="http://www.ttplayer.com" target="_blank">千千静听</a>)，所以测试了一下针对内存的优化效果。

改变了一下程序编译优化设置，运行后使用 <a href="http://www.microsoft.com/technet/sysinternals/utilities/ProcessExplorer.mspx" target="_blank"> <font size="-1">Process Explorer</font></a>查看内存占用量，得到的结果如下：

             最大化速度(/O2)      最小化大小(/O1)
 
 Working Set: 580K      440K             6%
 
 WS Private:  252       240 
 
 WS Sharedable: 328     200
 
 WS Shared:     316     192 

优化最大化大小比最大化速度的 Working Set 低了 6%。

ps: 这篇文章使用gmail<a href="http://help.blogger.com/bin/answer.py?answer=41452&amp;topic=8929">邮件</a>发送.

