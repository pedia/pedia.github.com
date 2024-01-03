---

# 内存分配问题
2008-03-19 10:20:39


---


之前有人说掌握的技术足够了，然后昨晚吃错了药怎么也睡不着，遂想了几个题目：<br />
class X {<br />
public:<br />
&nbsp; void * operator new(size_t size);<br />
&nbsp; void operator delete(void *);<br />
};<br />
Q1: 为何operator new参数是size_t<br />
<br />
Q2: 对于 delete[] x; 会执行 operator delete 吗？<br />
<br />
Q3: 下面代码能编译通过么? 需要如何更改X的实现呢?<br />
void g(Arena &amp; arena) {<br />
&nbsp; new(arena)X;<br />
}<br />
<br />
<br />
<br />
奖品：一个酸奶<br />
条件: 自觉不使用编译器测试<br />
