---

# 流氓插件和Firefox
2007-12-26 11:16:38


---


为什么没有什么流氓插件傍上Firefox呢？<br />
<br />
Firefix和ie都支持plugin和extension，并且安装方式都有些类似：都是下载一个zip格式的包，执行安装脚本；启动时、打开某些网页时载入plugin。<br />
<br />
<table border="1"><tbody><tr><td style="width: 100px; height: 23px;"><br />
</td><td style="width: 100px; height: 23px;">安装包</td><td style="width: 100px; height: 23px;">安装脚本</td><td style="width: 100px; height: 23px;">载入机制</td><td style="width: 100px; height: 23px;">安装</td><td style="width: 100px; height: 23px;">卸载</td></tr><tr><td style="width: 100px;">firefox</td><td style="width: 100px;">xpi(zip format)</td><td style="width: 100px;">js + chrom + xpinstall</td><td style="width: 100px;">xpt</td><td style="width: 100px;">提示</td><td style="width: 100px;">extension 提供超级控制<br />
plugin 似乎没有卸载支持</td></tr><tr><td style="width: 100px;">ie</td><td style="width: 100px;">cab(zip format)</td><td style="width: 100px;">inf</td><td style="width: 100px;">com</td><td style="width: 100px;">提示</td><td style="width: 100px;">一般，受安装方式限制，采用非一般安装ie根本卸载不了</td></tr></tbody></table><br />
流氓时代(互联网泡沫时期)大量的插件都是extension的形式，通过非法手段导致ie卸载方式失效，ie7似乎也没有改进这种问题。firefox 的控制可谓非常严格：一般用户肯定能卸载、禁用一个extension。<br />
<br />
以前还写过一个ie插件：只要安装上了该插件，浏览一下某个页面会通过js控制下载安装包、执行安装(可以成为任何东西：extension，service...)。<br />
<br />
我最近在看如何写Firefox的Plugin，发现firefox远比我想象的脆弱，plugin方式和ie一样容易被植入流氓软件，甚至都没有卸载(能从界面上卸载flash插件吗？)。<br />
<br />
如果firefox的市场占有率上来了，结果可能会和ie一样？plugin能翻身成为extension吗？<br />
<br />
<br />
