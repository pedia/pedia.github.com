---

# [转载]怎样访问被封杀了的几个网站|How to Visit the Banned Websites
2007-03-30 13:58

[gfw]
---


原文地址：http://my.opera.com/fermi/blog/2007/03/29/how-to-visit-the-banned-websites<br />
之前写到过<a href="http://my.opera.com/fermi/blog/2007-03-22-how-to-visit-the-banned-blogspot" target="_blank">如何利用脚本来访问被封杀的BlogSpot</a>（现已解封，万望愤青勿骂），看到还<a href="http://blogsearch.google.com/blogsearch?hl=en&amp;q=fermi+zhang+blogspot&amp;btnG=Search+Blogs" target="_blank">蛮多人回应和转载</a>的，原来大家都受大防火墙之苦这么深啊？呵呵。现在除了BlogSpot之外，我继续分享一下如何利用脚本访问被封杀的<a href="http://en.wikipedia.org/" target="_blank">Wikipedia</a>，<a href="http://fermi.wordpress.com/" target="_blank">WordPress</a>，<a href="http://huangjiahua.livejournal.com/" target="_blank">LiveJournal</a>（注：上述链接仅供测试）。同样的，打开记事本，写入以下内容：<br />
<pre>function FindProxyForURL(url,host){
if(dnsDomainIs(host, ".blogspot.com")){
return "PROXY 72.14.219.190:80";
}
if(dnsDomainIs(host, ".wikipedia.org")){
return "PROXY 66.230.200.101:80";
}
if(dnsDomainIs(host, ".wordpress.com")){
return "PROXY 72.232.101.41:80";
}
if(dnsDomainIs(host, ".livejournal.com")){
return "PROXY 204.9.177.19:80";
}
return "DIRECT";
}</pre>另 存为proxy.pac，随便放到什么地方，不一定是C盘啊，也不一定是根目录，只要在设置的时候填写对路径就对了，这个没有关系。这里以C盘根目录为 例，打开Firefox，依次点击Tools-&gt;Options-&gt;Advanced-&gt;Network-&gt; Settings...-&gt;选中Automatic proxy configuration URL，在下面填写：<br />
<pre>file:///C:/proxy.pac</pre>再点Reload，再点Ok，跟上次一样，如法炮制。上面的网站基本就可以访问了。需要注意的是，中文的维基百科依然无法用上述方法访问，关键是大防火墙对URL（超链接）做了过滤，zh.wikipedia.org这样的字眼应该是不能出现在URL里的，不过可以用<a href="https://wiki.biti.org.cn/" target="_blank">wiki.biti.org.cn</a>代替，这是加密的HTTPS，甚至可以无碍的浏览一些敏感字条。<br />
<br />
再 者，十分不推荐IE浏览器，包括以IE做内核的什么Maxthon啊，什么腾讯TT啊，还有其他乱七八糟的，都不推荐。主要是因为：一，IE在代理设置上 十分的不友好，设置一个脚本都要把ADSL和LAN区别对待；二，IE对于HTTPS协议的网页浏览器来特别的不方便，最不安全的IE繁琐的程序并不会让 你有更好的体验。推荐Firefox或者Opera。Opera设置proxy.pac这样的脚本十分的方便，直接打开Options里的 Advanced选项，里面再选择Networking，然后点上面的Proxy就可以设置了。Opera和Firefox的区别是，Opera是直接写 C:\proxy.pac这样的路径的，不用带“file:///”这样的前缀。其他的非文字浏览器比如Safari，Netscape， Konqueror都可以以此类推。<br />
<br />
很多人想要用这个方式访问<a href="http://www.technorati.com/" target="_blank">Technorati</a>， 抱歉我没有找到没有被封杀的Technorati的IP，现在只能是用一个你自己觉得快的代理，在脚本中自己添加Technorati的部分了，冒号前面 的是代理的IP地址，冒号后面就是对应的端口，我想对于试图突破大防火墙的朋友们，代理服务器是一点都不陌生的。我看到有朋友说，直接用代理服务器比脚本 方便，其实不然，脚本保证了你除了被封杀的这些网站之外其他的网站都是直接浏览，速度上有了挺高的保障，安全上也比之用代理要好一些。原理其实一看就明白 了，不是吗？<br />
<br />
还有一个遗憾的就是我喜欢的Vox.com不能浏览，可惜了，不过typepad.com似乎没问题了，解封了，希望大家帮忙验证一下。还有，大家一人一信写信给Technorati的头头，让丫多买几台服务器吧，或者，实在不行，就用<a href="http://blogsearch.google.com/" target="_blank">Google的BlogSearch</a>？