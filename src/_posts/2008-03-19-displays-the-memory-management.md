---

# 显示内存管理
2008-03-19 11:03:37


---


当满足一些条件时:<br />
频繁操作内存,导致效率成为瓶颈<br />
内存使用量会达到很大的级别时,分配可能会失败,甚至可能导致机器挂掉<br />
可能必须对内存做显示管理,同意否?<br />
<br />
1 专门提供内存服务的memcached,使用slabs管理内存,没有仔细查看一些<a target=_blank target="_blank" href="http://hi.baidu.com/jabber/blog/item/c46bb8512778311c367abeb3.html">分析文档</a>.<br />
<br />
2 我之前写过一个类似memcached的程序,使用boost::asio, lock free,速度虽然超快,但是最终这个项目失败告终.<br />
&nbsp; 原因是没有对内存做管理,而是对缓存条目做了数量限制,估算有误导致内存过载.<br />
&nbsp; 当然启动类似memcached的项目就是一个错误.<br />
<br />
3 <a target=_blank target="_blank" href="http://google-ctemplate.googlecode.com/svn/trunk/">google-ctemplate</a>代码写得非常经典,因为本身就是管理大量字符串,程序提供了内存管理工具Arena<br />
class UnsafeArena : public BaseArena{<br />
public:<br />
&nbsp;char* Alloc(const size_t size);<br />
&nbsp;void Free(void* memory, size_t size);<br />
&nbsp;char* Shrink(char* s, size_t newsize);<br />
};<br />
<br />
每个需要频繁操作内存的对象Dictionary都拥有Arena<br />
<br />
4 stl的<a target=_blank target="_blank" href="http://www.sgi.com/tech/stl/Allocators.html">allocator</a>控制<br />
&nbsp;basic_string&lt;charT, traits, Alloc&gt;整个程序提供特殊定义的string,使用自己的Alloc?<br />
<br />
5 <a target=_blank target="_blank" href="http://www.boost.org/libs/pool/doc/index.html">boost::pool</a>?<br />
<br />
6 前一篇<a target=_blank target="_blank" href="http://blog.xiaonei.com/GetEntry.do?id=276694955&amp;owner=227366242">日志</a>提到的方法?<br />
<br />
