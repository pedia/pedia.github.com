---

# about DSEL
2010-02-08 15:06

[c++, dsel]
---


最近开始看一本老书(2004年版的): __C++ Template Metaprogramming: Concepts, Tools, and Techniques from Boost and Beyond__, 
[in amazon](http://www.amazon.com/Template-Metaprogramming-Concepts-Techniques-Beyond/dp/0321227255/ref=sr_1_1?ie=UTF8&amp;s=books&amp;qid=1265611847&amp;sr=1-1)
我看的是中文版 __C++模板元编程__(2010年版), in <a href="http://www.amazon.cn/gp/product/B002WB1J0U/ref=ox_ya_os_product"> amazon.cn</a><br />

之所以想到要看这本书，是因为对模板一直有些疑问，希望籍此解决模板方面的认知错误。<br />
看到第一章，就被其讲述的[Domain Specific Language](http://en.wikipedia.org/wiki/Domain-specific_language)吸引了，这是我的另外一个心病。<br />

其中一句话：
>
> 最成功的DSLs通常是申诉式(declarative)语言，它为我们提供了用来描述 "what" 而不是 "how" 的符号。
>

并讲述了一个例子: Make语言，一般的Make语法都支持<br />
``` make
OBJECTS = main.o kbd.o command.o
edit: $(OBJECTS)
main.o: main.cpp defs.h
kbd.o: kbd.cpp defs.h command.h
```

其省略了how, 如
``` makefile
main.o: main.cpp defs.h
    c++ -c main.cpp
```
这几乎接近DSEL的一个理想：<b>允许一个问题仅仅个哦能通过描述可以得到解决</b>。