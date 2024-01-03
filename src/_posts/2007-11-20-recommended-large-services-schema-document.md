---

# 推荐 大型服务架构文档
2007-11-20 18:01:10


---


<span style="font-weight: bold;">EBay</span><br />
&nbsp;The eBay platｆｒｏｍ handle 5 billion <span style="font-weight: bold;">API </span>call per month;<br />
&nbsp;1 billion pageview per day.<br />
&nbsp;&gt; 44 Billion SQL executions/day!<br />
&nbsp;Roll 10,000+ lines of code every two weeks.<br />
&nbsp;<br />
推荐其 Architectural Strategies:<br />
1 Partition Everything:Database, Application Tier, Search<br />
2 Async Everywhere<br />
3 Automate Everything<br />
4 Remember Everything Fails<br />
<br />
<span style="font-weight: bold;">Yahoo!</span><br />
Shared Components<br />
–Network, Data Center, NAS<br />
–Centrally managed by infrastructure<br />
team<br />
• Load Balancing<br />
–DSR is preferred model<br />
–Proxy load balancing only where<br />
necessary<br />
<br />
<span style="font-weight: bold;">Second Life</span><br />
15,400 simulator processes<br />
956 square kilometers = 8X San Francisco<br />
~100 TB (over 1bn files) of user-created content<br />
30 million concurrent ｓｃｒｉｐｔs<br />
<br />
SL (the software) has two primary<br />
components: Viewer and Simulator<br />
惊爆：sl viewers居然用udp和服务器(simulator,userserver)<br />
<br />
<a target=_blank href="http://fm261.img.xiaonei.com/blog/20071120/17/50/A225466253767HEI.png" target="_blank"><img src="http://fm261.img.xiaonei.com/blog/20071120/17/50/A225466253767HEI.png" alt="slcomm.png"></a><br />
<br />
他们以后希望改为http通讯。<br />
<br />
The Second Life software is built and maintained by a 50-person developer team.<br />
The Second Life infrastructure is built and maintained by a 12-person operations team.<br />
<br />
原文<a target=_blank target="_blank" href="http://qcon.infoq.com/sanfrancisco/tracks/show_track.jsp?trackOID=70">地址</a>：http://qcon.infoq.com/sanfrancisco/tracks/show_track.jsp?trackOID=70<br />
<br />
<br />
文档下载地址 \\10.2.0.42\xntech\tmp\*.pdf<br />
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pv&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sql&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sql/pv<br />
-----------------------------------------------<br />
ebay&nbsp;&nbsp;&nbsp; 1b&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 44b&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 44<br />
xn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.2b&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.7b&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9<br />
<br />
so in efficiency: xn &gt; ebay