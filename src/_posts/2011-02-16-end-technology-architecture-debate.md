---

# 终结技术架构争论
2011-02-16 18:17

[python, web]
---


Quora.com 是facebook CTO离开后的创业项目，现在已经有不小成就，在美国流量排名已经达到634名<br />
<img border="0" src="http://traffic.alexa.com/graph?&amp;w=400&amp;h=220&amp;o=f&amp;c=1&amp;y=r&amp;b=ffffff&amp;n=666666&amp;r=2y&amp;u=quora.com&amp;" />&nbsp;作为成就了Facebook技术体系的人，又有机会从头构建技术体系，其选择必然有所参考价值。<br />

Quora并没有继续沿用 PHP
-----------------------
<a href="http://www.quora.com/What-are-the-crawling-horrors-of-PHP">PHP 某些糟糕的语言特性</a><br />
<a href="http://www.quora.com/Do-Facebook-engineers-enjoy-programming-in-PHP">Facebook 工程师喜欢PHP么</a><br />

而是<a href="http://www.quora.com/Why-did-Quora-choose-Python-for-its-development">选择了 Python</a>
-------------------------------------------------------------------------------------------------------
> Python was a language that Charlie and I both knew reasonably well  (though I know it a lot better now than I did when we started). We also  briefly considered C#, Java, and Scala. The biggest issues with Python  are speed and the lack of typechecking.<br />
>
> We decided that Python was fast enough for most of what we need to do  (since we push our performance-critical code to backend servers written  in C++ whenever possible). As far as typechecking, we ended up writing  very thorough unit tests which are worth writing anyway, and achieve  most of the same goals. We also had a lot of confidence that Python  would continue to evolve in a direction that would be good for the life  of our codebase, having watched it evolve over the last 5 years.<br />
> 
> So  far, we've been pretty happy with the choice. There's a small selection  bias, but all of the employees who'd been working with other languages  in the past have been happy to transition to Python, especially those  coming from PHP. Since starting the following things have happened:
>

<ul><li>Python  2.6 got to the point where enough of the libraries we used were  compatible with it, and we made a very easy transition to it.</li>
<li><span class="qlink_container"><a href="http://www.quora.com/Tornado-web-framework">Tornado (web framework)</a></span>&nbsp;was released as open source, and we moved our live updating web service to that.</li>
<li><span class="qlink_container"><a href="http://www.quora.com/PyPy">PyPy</a></span>&nbsp;got to the point where it looks like it will eventually be usable and will give us a significant speedup.</li>
<li>Python data structures map well to JavaScript data structures so  marshaling data between the browser and the server is straightforward  and easy. &nbsp;This is really nice since Quora involves a lot of  interactions between the client and server that aren't page loads.</li>
<li>Python  code tends to be very readable and since we wanted to be able to work  on the site with a bunch of people, this was important.</li>
<li>There  are lots of other libraries that are written in Python so its easy to  incorporate things like custom mail servers, task queues, etc. into the  rest of our codebase.</li>
</ul>

为何没有选择Java
-----------------
>
> For a lot of little reasons, Java programs end up being longer and more  painful to write than the equivalent Python programs. It's also harder  to interoperate with non-Java stuff.&nbsp;Scala had a lot of the downsides of  Java and the JVM, although it wasn't quite as bad. The language seemed a  little too new and like it would bring some unnecessary risk (for  example, who knows how good will support be in 10 years).
>

没有选择 C#
--------------
> C# seemed pretty promising. As a programming language, it's great, but:<br />
> * We  didn't want to be on the Microsoft stack. We were up for learning  something new, and MS SQL Server actually seemed pretty good, but we  knew we'd need to integrate with lots of open source code that has only  second-class support for .NET, if it supports it at all. Also, most of  the best engineers these days are used to open source stuff.
> * We  didn't want to take the risk of being on Mono (an open source  implementation of C#/.NET). It's not clear how long funding will be  around for that project, and I'd heard of various performance problems.  Plus, it seemed like everything else in the C# ecosystem would assume we  were on the Microsoft stack.
>

数据库选择 MySQL
------------------
使用 Memcache 作为数据库前面的cache<br />
据说Quora实现了两个 C++ 的服务，采用 Thrift 作为远程调用和语言粘合剂<br />
Pylons 为 web framework<br />
Tornado 实现 Long Polling(Comet)<br />
采用 JQuery 为 Javascript 基础库，还有 JQuery UI<br />
HAProxy Load-Balancing<br />
Nginx as reverse-proxy server<br />

-------感言分割线------------<br />
有很多人说“选择什么语言都一样”，是的，我很赞成，这话我也常说。但是选择语言后，之后的影响是深远的，乃至于思维理念、人都会不一样。这是一句空话。<br />
至此在我内心关于架构的争论结束了。