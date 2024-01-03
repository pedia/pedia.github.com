---

# zt:WikiPedia 技术架构学习分享
2007-11-04 19:09:09


---


<h2 class="entry-title"><a target=_blank class="entry-title-link" target="_blank" href="http://www.dbanotes.net/opensource/wikipedia_arch.html">WikiPedia 技术架构学习分享<img src="http://www.google.com/reader/ui/2412528845-go-to.gif" class="entry-title-go-to" alt="" height="18" width="18"></a></h2><div class="entry-author"><span class="entry-source-title-parent">from <a target=_blank href="http://www.google.com/reader/view/feed/http%3A%2F%2Ffeeds.feedburner.com%2Fdbanotes" class="entry-source-title" target="_blank">DBA notes</a></span> by <span class="entry-author-name">Fenng</span></div><p>&amp;copy作者：<a target=_blank target="_blank" href="http://www.dbanotes.net/">Fenng</a>  发布在 <a target=_blank target="_blank" href="http://www.dbanotes.net/">dbanotes.net</a></p>
<p>维基百科(<a target=_blank target="_blank" href="http://www.wikipedia.org/">WikiPedia.org</a>)位列世界十大网站，目前排名第八位。这是开放的力量。</p>
<p>来点直接的数据：<br />
</p>
<ul><li>峰值每秒钟3万个  HTTP 请求</li><li>每秒钟 3G<strong>bit </strong>流量, 近乎<strong>375MB</strong></li><li>350 台 PC 服务器</li>(<a target=_blank target="_blank" href="http://www.nedworks.org/%7Emark/presentations/san/Wikimedia%20architecture.pdf">数据来源</a>)</ul><p>架构示意图如下：<br />
<span><img alt="WikiPedia_arch.png" src="http://www.dbanotes.net/Images/WikiPedia_arch.png" style="margin: 0pt auto 20px; text-align: center; display: block;" height="357" width="593"> Copy @Mark Bergsma</span></p>
<h4><a target=_blank target="_blank" href="http://www.caraytech.com/geodns/">GeoDNS</a></h4><p>在我写的这些网站架构的 Blog 中，GeoDNS 第一次出现，这东西是啥? "A 40-line patch for BIND toadd geographical filters support to the existent views in BIND",把用户带到最近的服务器。GeoDNS 在 WikiPedia 架构中担当重任当然是由 WikiPedia的内容性质决定的--面向各个国家，各个地域。</p>
<h4>负载均衡：LVS</h4><p>WikiPedia 用 <a target=_blank target="_blank" href="http://www.linuxvirtualserver.org/">LVS</a> 做负载均衡,  是章文嵩博士发起的项目,也算中国人为数不多的在开源领域的骄傲啦。LVS 维护的一个老问题就是监控了，维基百科的技术人员用的是 <a target=_blank target="_blank" href="http://svn.wikimedia.org/viewvc/mediawiki/trunk/pybal/">pybal</a>.</p>
<h4>图片服务器:Lighttpd</h4><p>Lighttpd 现在成了准标准图片服务器配置了。不多说。</p>
<h4>Wiki 软件: MediaWiki</h4>对 MediaWiki 的应用层优化细化得快到极致了。用开销相对比较小的方法定位代码热点，参见<a target=_blank target="_blank" href="http://noc.wikimedia.org/cgi-bin/report.py">实时性能报告</a>，瓶颈在哪里，看这样的<a target=_blank target="_blank" href="http://flake.defau.lt/pics/mediawiki.png">图树展示</a>一目了然。另外一个十分值得重视的经验是，尽可能抛弃复杂的算法、代价昂贵的查询，以及可能带来过度开销的 MediaWiki 特性。<h4>Cache! Cache! Cache!</h4><p>维基百科网站成功的第一关键要素就是 Cache 了。CDN(其实也算是 Cache) 做内容分发到不同的大洲、Squid 作为反向代理.数据库 Cache 用 Memcached，30 台，每台 2G 。对所有可能的数据尽可能的Cache，但他们也提醒了 Cache的开销并非永远都是最小的，尽可能使用，但不能过度使用。 </p>
<h4>数据库: MySQL</h4><p>MediaWiki 用的DB 是 MySQL. MySQL 在 Web 2.0 技术上的常见的一些扩展方案他们也在使用。 复制、读写分离......应用在 DB 上的负载均衡通过 <a target=_blank target="_blank" href="http://dev.fckeditor.net/browser/MediaWiki/trunk/includes/LoadBalancer.php">LoadBalancer.php</a> 来做到的，可以给我们一个很好的参考。</p>
<p>运营这样的站点，WikiPedia 每年的开支是 200 万美元，技术人员只有 6 个，惊人的高效。</p>
<p>参考文档：<br />
</p>
<p><a target=_blank target="_blank" href="http://www.nedworks.org/%7Emark/presentations/san/Wikimedia%20architecture.pdf">Wikimedia architecture （PDF)</a><br />
<a target=_blank target="_blank" href="http://highscalability.com/wikimedia-architecture">Todd Hoff 的文章</a></p>
