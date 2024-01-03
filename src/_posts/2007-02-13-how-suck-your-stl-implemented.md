---

# How suck your STL implemented?
2007-02-13 12:53

[c++, stl, effective]
---


我在vc7中做了一个测试，插入50万条随机生成的记录到hash_map中，结果令我大吃一惊。

随机字符串生成：字符串长度为1-12个小写字母(50万个字符串中大概只有34万个不重复)

插入的速度
<table border="1" cellpadding="10" cellspacing="10"><tbody><tr><td></td><td>vc7 STL</td><td>stlport 4.62</td></tr>
<tr><td>前25万条</td><td>350ms/万条</td><td>200ms/万条</td></tr>
<tr><td>后25万条</td><td>进程没有反应</td><td>200ms/万条</td></tr>
</tbody></table>


查询速度也有较大的差异，VC7 STL最差的命中查询在10ms。

VC7自带的stl的效率差得让人吃惊。

并且hash_map::resize等方法也没有提供(在bucket容量超过75%时hash表的效率一般会降低，不能调用resize扩充bucket容量了)。