---

# 手机网站的终极优化
2011-05-10 11:34

[mobile, optimization]
---


在中国特殊国情下，手机网络速度低下，大部分还是GPRS，每个请求几乎都要2s :-(。<br />
并且手机浏览器能同时建立的连接数也低一些

<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody>
<tr><td></td><td>Connections Per Hostname</td><td>Max Connections</td></tr>
<tr><td>Android 2</td><td>4</td><td>4</td></tr>
<tr><td>Android 3</td><td>6</td><td>35</td></tr>
<tr><td>iPhone 3</td><td>6</td><td>55</td></tr>
<tr><td>iPhone 4</td><td>4</td><td>30</td></tr>
<tr><td>Nokia 97</td><td>7</td><td>7</td></tr>
<tr><td>Opera Mobile 10</td><td>2</td><td>4</td></tr>
<tr><td>Opera Mobile 11</td><td>2</td><td>5</td></tr>
</tbody></table>

下图是一个典型的手机访问的 waterfall<br />
![waterfall](/pic/1_waterfall.png "mobile waterfall")

还有手机对cache的支持也比较有限<br />
<img border="0" height="220" src="/pic/mobile-cache.png" width="400" />

显然减少每个页面连接数是非常非常有价值的。
<a href="http://en.wikipedia.org/wiki/Data_URI_scheme">Data URI</a>技术非常适合用在这个地方，支持的浏览器也还是不少的。<br />
<ul><li>&nbsp; &nbsp; Firefox 2+</li>
<li>&nbsp; &nbsp; Opera 7.2+ &nbsp;data URIs must not be longer than 4100 characters</li>
<li>&nbsp; &nbsp; Chrome (all versions)</li>
<li>&nbsp; &nbsp; Safari (all versions)</li>
<li>&nbsp; &nbsp; Internet Explorer 8+ data URIs must be smaller than 32k</li>
<li>&nbsp; &nbsp; Internet Explorer 9 does not have 32KiB limitation and allowed in broader elements</li>
</ul>

手机浏览器<b>可能</b>不支持的有
<ul><li>IE Mobile all 6.12-8.12</li>
<li>Nokia 51/66/71/82/95</li>
<li>PlayStation Portable 2.00</li>
<li>Samsung SGHI560</li>
<li>WebPilot 8.7</li>
<li>Obigo 7</li>
<li>Opera 5/6/7 不支持</li>
<li>Blackberry 6/8330/8520/9300/9700</li>
</ul> 

以上未列出的系统应该都支持，如：Nokia 后期的系统，IE 8/9，Android，iPhone。

3g.renren.com 上的Logo的HTML代码为
```
&lt;img alt="renren" src="http://a.xnimg.cn/wap/logo.gif" /&gt;
```

用Data URI代码如下：
```
<img alt="renren" src="data:image/gif;base64,R0lGODlhTAAWANUAAJXA4ou63ht1u9nq+L3Y7VGXzKBSZeTx+8z
i83Os1u5ANuPu+Pr8/mun1TeHxMfe8ACGytzr93uw2NLm9v3+//7+/63O6ff7/i6BwcdGS+v0+wB8xefy+gBptUCMxu72/Pz
9/vT5/Q9vuNbp+PH4/KDH5d3s+Ch/wA9ttfH3/Pr7/gBerNzr+bDR6+/1+gB0vh94vF2f0PT6/UyTymCf0Nbn9jxdlKnM5gB
jsABuuwBhr1pYhNfq+Nfp+ABms////yH5BAAAAAAALAAAAABMABYAAAb/wJ9wSCwaj8ikcnlkQCAVCqXCrFqv1UrlsoGAvlr
KbxotT6Vnshl91pbDb3SYLIXLo3cQF8JQMb5fGgEYHkI+BSWAICWEQh4YiYqSID4SihSSHh6SEj6en54iloAhLxAXF35+DzC
ehT+fHhoPGK6OnhgPDLu7Kn4Elby9wyIevrydEsrLEiI+wiQ5EDIhqBcPzrawnw4CsbehD9bjwBLj5xc+HuedMxwNHjcXMbX
jHx0QKSQhIQet39s8ZTAA0AMoDNT4KQTgowG/hApD1PABI2KITj5mZLvxKQQ1GRrwffhAIgVGgJ92KFBgQ5tBUABK6tMXw4c
ImSRK5iTB0AcB/30lO9Ws9KnmTBIcfEDQoGHkP5SeDKwkqA4ct5FYTVD0AQCr1w8YWsXw2mmCpw/tOrlwMfIADggcOGiIAMp
TAiG1fKxUkEFbgbo+mApu4MOCCBERBAsu4SOBAx8tBCdobPexCMKKF+iAcOAABwuASwih4WmvArtCAgCOGxe0u8kOWMcdIAL
GANAiBsSd7COss1rOZC9YAWHBggOg65oQwljvXk8IhGit2xn54RqdaznAfqBGLQudCcMgcGCyCAsWHIio8a/6ARPEF5gwwaI
ujR8uhLTa2/dV/pefmIAAYSK0wAILJhDgjAAtBOBMAPMheIJNARCGIH0ESBDAYxGyMP8AcfMNMMCEoeQXQHTASKWAASJEZ4F
oJmSjzgAInMCgiDgScMIJCPwVAI4i9lggYUCOGAqQPaywAY48qGZTdC7AUABzNqyEgmg/eACDEMn5UAIPPCCAgIg8DABmkCI
SUOSZYxJQAplmtlBCCWOWOUANSpI5wggnYBDdD6R5yaUBBjyQmicSCIEADA6MwEMPPjjgQE0OEHZIA4dJIIAIPYnwJQKPVRp
pT5440MOjPUyg5KmoInDBoaEQIIQLDDAHCpYXINDDrod0YpADBXSCKQDdnPBYCZX2UAKPkLYgqQMMteDDrruqugGrp/YwQAh
/1RXAB9qiBVgCJAxALaQIMBaVQwMFNMBYA6Y6cEIDqvXQgLslCMCrs5IyNsK01Kr6gqOoUltCAd74cEIMBJxLQAwknoDIubz
u+lhD7jZkKgDeEGYvpshGSimxjEF6rsCs8jACxSsXTPGuj7r8cg+OZjuzzDRTjPPJOLyQcswzU7ty0DivPHTNRAet884TdOA
ztUArPfTNLxu9K9JUKw21zCpPkMMGQQAAOw==" />
```

是有点长，效果为<img alt="renren" src="data:image/gif;base64,R0lGODlhTAAWANUAAJXA4ou63ht1u9nq+L3Y7VGXzKBSZeTx+8zi83Os1u5ANuPu+Pr8/mun1TeHxMfe8ACGytzr93uw2NLm9v3+//7+/63O6ff7/i6BwcdGS+v0+wB8xefy+gBptUCMxu72/Pz9/vT5/Q9vuNbp+PH4/KDH5d3s+Ch/wA9ttfH3/Pr7/gBerNzr+bDR6+/1+gB0vh94vF2f0PT6/UyTymCf0Nbn9jxdlKnM5gBjsABuuwBhr1pYhNfq+Nfp+ABms////yH5BAAAAAAALAAAAABMABYAAAb/wJ9wSCwaj8ikcnlkQCAVCqXCrFqv1UrlsoGAvlrKbxotT6Vnshl91pbDb3SYLIXLo3cQF8JQMb5fGgEYHkI+BSWAICWEQh4YiYqSID4SihSSHh6SEj6en54iloAhLxAXF35+DzCehT+fHhoPGK6OnhgPDLu7Kn4Elby9wyIevrydEsrLEiI+wiQ5EDIhqBcPzrawnw4CsbehD9bjwBLj5xc+HuedMxwNHjcXMbXjHx0QKSQhIQet39s8ZTAA0AMoDNT4KQTgowG/hApD1PABI2KITj5mZLvxKQQ1GRrwffhAIgVGgJ92KFBgQ5tBUABK6tMXw4cImSRK5iTB0AcB/30lO9Ws9KnmTBIcfEDQoGHkP5SeDKwkqA4ct5FYTVD0AQCr1w8YWsXw2mmCpw/tOrlwMfIADggcOGiIAMpTAiG1fKxUkEFbgbo+mApu4MOCCBERBAsu4SOBAx8tBCdobPexCMKKF+iAcOAABwuASwih4WmvArtCAgCOGxe0u8kOWMcdIALGANAiBsSd7COss1rOZC9YAWHBggOg65oQwljvXk8IhGit2xn54RqdaznAfqBGLQudCcMgcGCyCAsWHIio8a/6ARPEF5gwwaIujR8uhLTa2/dV/pefmIAAYSK0wAILJhDgjAAtBOBMAPMheIJNARCGIH0ESBDAYxGyMP8AcfMNMMCEoeQXQHTASKWAASJEZ4FoJmSjzgAInMCgiDgScMIJCPwVAI4i9lggYUCOGAqQPaywAY48qGZTdC7AUABzNqyEgmg/eACDEMn5UAIPPCCAgIg8DABmkCISUOSZYxJQAplmtlBCCWOWOUANSpI5wggnYBDdD6R5yaUBBjyQmicSCIEADA6MwEMPPjjgQE0OEHZIA4dJIIAIPYnwJQKPVRppT5440MOjPUyg5KmoInDBoaEQIIQLDDAHCpYXINDDrod0YpADBXSCKQDdnPBYCZX2UAKPkLYgqQMMteDDrruqugGrp/YwQAh/1RXAB9qiBVgCJAxALaQIMBaVQwMFNMBYA6Y6cEIDqvXQgLslCMCrs5IyNsK01Kr6gqOoUltCAd74cEIMBJxLQAwknoDIubzu+lhD7jZkKgDeEGYvpshGSimxjEF6rsCs8jACxSsXTPGuj7r8cg+OZjuzzDRTjPPJOLyQcswzU7ty0DivPHTNRAet884TdOAztUArPfTNLxu9K9JUKw21zCpPkMMGQQAAOw==" />

花了点时间用 Python 120 行代码实现了个代理，没有一个img请求。

附上BrowserScope的关于浏览器的特性
<img border="0" height="400" src="/pic/browser-scope-data-uri.png" width="186" />