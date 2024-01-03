---

# lighttpd 完了
2008-07-30 11:20:26


---


最近突然看到 lighttpd 重大事件：<br />
&nbsp;主要开发者离开了，可能去 MySQL了<br />
&nbsp;接任的开发者准备<a target=_blank href="http://redmine.stbuehler.de/wiki/lighttpd-sandbox/Plans_for_2_0">重写</a>某些部分<br />
<br />
<ul><li>Rewritten almost from scratch</li><li>Throughout the entire source, glib is used</li><li>Parsers are generated using ragel state machines <a target=_blank class="external" href="http://research.cs.queensu.ca/%7Ethurston/ragel/">http://research.cs.queensu.ca/~thurston/ragel/</a></li><li>libev for events <a target=_blank class="external" href="http://software.schmorp.de/pkg/libev.html">http://software.schmorp.de/pkg/libev.html</a></li><li>Switch from SVN to Bazaar as version control system</li></ul><br />
俺非常不赞成这样无谓的改动。<br />
