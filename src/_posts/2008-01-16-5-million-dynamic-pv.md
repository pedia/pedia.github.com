---

# 500万动态PV
2008-01-16 23:07:29


---


<pre>转：<br />
<br />
豆瓣的第二台应用服务器终于投入了使用。Hongqn 忙了一晚上就完成了部署。第一台服务器支撑到 500 万动态PV/天，服务 On Demand 即时分布式部署......</pre><p>500 万 PV , 还是动态 PV, 是个很惊人的数字。因为，如果都能达到一台机器支撑 500 万，那么国内稍有点规模的网站(就说动态PV 上亿的吧)，只需要 20 台 Web 服务器就够了。事实上，即使比较强调技术的网站怕也要上百台 Web 服务器的规模。</p>
<p>我们知道豆瓣用 Lighttpd 做 Web 服务器。 从侦测到的数据看，目前线上有两个版本。<br />
<br />
</p>
<pre>$ curl -I http://www.douban.com<br />
HTTP/1.1 200 OK<br />
.....(无关内容略)<br />
Server: <strong>lighttpd/1.4.15</strong></pre><p>另外一个版本：</p>
<pre>$ curl -I http://www.douban.com/people/ahbei/<br />
HTTP/1.1 200 OK<br />
.....(无关内容略)<br />
Server: <strong>lighttpd/1.4.18<br />
<br />
</strong></pre><p>其实豆瓣服务器还有个更为惊人的性能数字。从这个 <a target=_blank target="_blank" href="http://trac.lighttpd.net/trac/wiki/PoweredByLighttpd">Powered by Lighttpd</a> 的列表来看，豆瓣在一台 Gentoo 服务器上的记录是 1200 万/天的点击量。这应该是动、静态页面混合情况下的吧。</p>
<p>有同事对这个数据有些好奇，问我到底豆瓣是用啥做的服务器，其实这个问题我也问过阿北，他们就是自己攒的 PC 服务器，然后把性能发挥到极致。阿北也表示过，即使现在豆瓣流量激增个十倍啥的性能也不会是问题。这也是从起始就考虑扩展性的收益吧。</p>
<p>这里这位老兄用 <a target=_blank target="_blank" href="http://shanti.railsblog.com/how-7-mongrels-handled-a-550k-pageview-digging">七台 Mongrels 跑了 55 万 PV</a> 就蛮自豪的，所以豆瓣的一台跑了"500 万动态 PV" 的确非常惊人。<br />
<br />
-------------------------------------------------------------------------<br />
</p>
<p>ｊａｖａ前台能搞定吗？有达人知否？<br />
</p>
<p><br />
</p>
<p>up豆瓣只有两台应用服务器？<br />
5000000/3600=1388.8&nbsp; <br />
<br />
up上面算错了<br />
应该是 5000000/(24*3600) = 57.87<br />
谢谢黄晶<br />
<br />
<br />
</p>
