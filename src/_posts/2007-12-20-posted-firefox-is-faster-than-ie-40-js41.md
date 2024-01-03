---

# 转贴:Firefox的确比IE快&#40;JS&#41;
2007-12-20 22:52:21


---


<h2 class="entry-title"><a target=_blank class="entry-title-link" target="_blank" href="http://www.codinghorror.com/blog/archives/001023.html">The Great Browser  Showdown<img src="http://www.google.com/reader/ui/2412528845-go-to.gif" class="entry-title-go-to" alt="" height="18" width="18"></a></h2><div class="entry-author"><span class="entry-source-title-parent">from <a target=_blank href="http://www.google.com/reader/view/feed/http%3A%2F%2Ffeeds.feedburner.com%2Fcodinghorror%2F" class="entry-source-title" target="_blank">Coding Horror</a></span> </div><p>In <a target=_blank target="_blank" href="http://www.codinghorror.com/blog/archives/000509.html">The Day Performance Didn't Matter Any More</a>, I found that <b>the performance of  improved a hundredfold between 1996 and 2006</b>. If Web 2.0 is built on a backbone of , it's largely possible only because of those crucial <a target=_blank target="_blank" href="http://www.codinghorror.com/blog/archives/000741.html">Moore's Law performance improvements</a>. </p>
<p>But have we hit a performance wall? <b>Is it possible for browsers to run  significantly faster than they do today?</b>I've always thought that just-in-time optimizing (or even compiling) was an unexplored frontier in browser technology. And nowthe landscape has shifted:</p>
<ol><li>Apple's WebKit team <a target=_blank target="_blank" href="http://webkit.org/blog/152/announcing-sunspider-09/">just announced</a> a great new  benchmark, SunSpider.</li><li>The browser market is <a target=_blank target="_blank" href="http://www.codinghorror.com/blog/archives/001006.html">more competitive than it has been in years</a>, with Opera 9.5, Firefox 3, Safari 3, and IE 8 all vying for the coveted default browser position.</li></ol><p>Perhaps browser teams will begin to consider  performance a competitive advantage.  The <a target=_blank target="_blank" href="http://www.codinghorror.com/blog/archives/000509.html">last time</a> I looked for common  benchmarks, I came away deeply disappointed. That's why I'm particularly excited by <a target=_blank target="_blank" href="http://webkit.org/perf/sunspider-0.9/sunspider.html">the SunSpider benchmark</a>: it's remarkably well thought out, easy to run, and comprehensive.</p>
<p></p>
<blockquote>It's <b>based on real code that does interesting things</b>;both things that the web apps of today are doing, and more advancedcode of the sorts we can expect as web apps become more advanced. Veryfew of the tests could be classed as microbenchmarks. <p>It's <b>balanced between different aspects of the  language</b>-- not dominated by just a small handful of different things. In fact,we collected test cases from all over the web, including from otherbenchmarks. But at the same time, we avoided DOM tests and stuck to thecore  language itself. </p>
<p>It's super <b>easy to <a target=_blank target="_blank" href="http://webkit.org/perf/sunspider-0.9/sunspider.html">run in the browser</a></b> or from the command line, so you can test both pure engine performance, and the results you actually get in the browser. </p>
<p>We included <b>statistical analysis</b> so you can see how stable the results you're getting really are. </p>
</blockquote><p>It's the best  benchmark I've seen, something we desperately need in an era where <a target=_blank target="_blank" href="http://www.codinghorror.com/blog/archives/000857.html"> is the Lingua Franca of the web</a>. I was so excited, in fact, that I ran some quick benchmarks to compare the four major players in the browser market:</p>
<p></p>
<ul><li>Windows Vista 32-bit</li><li>4 GB RAM</li><li>dual-core 3.0 GHz Core 2 Duo CPU</li><li>all browser extensions disabled (clean install)</li></ul><p><img alt="Browser  performance graph, result totals by browser" src="http://www.codinghorror.com/blog/images/browser--performance-graph-totals-1.png" border="0" height="271" width="776"></p>
<p>What surprised me here is that Firefox is substantially slower than IE,once you factor out that wildly anomalous string result. I had to use abeta version of Opera to get something other than invalid (NaN) resultsfor this benchmark, which coincidentally summarizes my opinion ofOpera. Great when it works! I expected Opera to do well; it was handilywinning  benchmarks <a target=_blank target="_blank" href="http://www.codinghorror.com/blog/archives/000211.html">way back in 2005</a>.The new kid on the block, Safari, shows extremely well particularlyconsidering that it is running outside its native OS X environment.Kudos to Apple. Well, except for <a target=_blank target="_blank" href="http://www.codinghorror.com/blog/archives/000884.html">that whole font thing</a>.</p>
<p>If you're curious how each browser stacked up in each benchmark area, I broke that down, too:</p>
<p><img alt="Browser  performance graph, breakdown by test area" src="http://www.codinghorror.com/blog/images/browser--performance-graph-breakdown.png" border="0" height="262" width="940"></p>
<p>If you need greater detail-- including variances-- you can <a target=_blank target="_blank" href="http://www.codinghorror.com/blog/files/sunspider-09-benchmark-results.txt">download my complete set of SunSpider 0.9 results as a text file</a>.</p>
<p>If I've learned anything from the computer industry, it's that competition benefits everyone. Here's hoping that <b>a great  browser performance showdown</b> spurs the browser teams on to better performance in this increasingly crucial area. </p>
<p></p>
[advertisement] The new <a target=_blank target="_blank" href="http://www.axosoft.com/?gad=CJ7Ymu4CEgg7vGiG48xTJBjw16__AyC-n7An">Axosoft OnTime 2008</a>:it's a bug tracker, project wiki, requirements manager, and help deskincident tracker. It's backed by a guarantee, a community, a weeklypodcast, and smart support. Installed or hosted -- <a target=_blank target="_blank" href="http://www.axosoft.com/?gad=CJ7Ymu4CEgg7vGiG48xTJBjw16__AyC-n7An">Free single-user licenses and 30-day team trials</a>.