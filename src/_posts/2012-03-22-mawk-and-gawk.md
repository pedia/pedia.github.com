---

# mawk and gawk
2012-03-22 15:37


---


今天发现 Debian 里的 awk 是 mawk，过程是发现一台机器上的 awk 执行报错
```
 awk: line 2: function strftime never defined
```

然后发现此 awk 原来是 mawk

Debian 可能有足够的原因：
>
> mawk is a very fast AWK implementation by Mike Brennan based on a byte code interpreter.
>

引入 mawk 代替gawk，但是由于这两个版本的细微差别，肯定会困扰一些人。

还有一个类似的例子是 dash, 无数次以为脚本写错后，才把习惯改为 !/bin/bash。

竞争固然是好，这些批着同一件皮的东西有着这样、那样的差别，会让每个人都经历一次或多次查错的经验。

WTF!