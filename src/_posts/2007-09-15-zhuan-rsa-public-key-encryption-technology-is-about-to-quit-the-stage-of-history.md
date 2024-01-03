---

# [zhuan]RSA公开密钥加密技术即将退出历史舞台
2007-09-15 09:43:02


---


<div class="intro">			两个研究小组各自独立<a target=_blank href="http://technology.newscientist.com/article/mg19526216.700">建造出光量子计算机的初始原型</a>（全文需要付费才能阅读），能够运行量子算法<a target=_blank href="http://en.wikipedia.org/wiki/Shor%27s_algorithm">Shor's algorithm</a>（Shor算法）。两个团队一支由澳大利亚昆士兰大学的Andrew White（<a target=_blank href="http://arxiv.org/pdf/0705.1398">论文预印本</a>）领导，另一支则是来自合肥的中国科技大学，由<a target=_blank href="http://lixy.ustc.edu.cn/detail.php?siteid=996&amp;tplset=schoolc1&amp;postid=15927">陆朝阳</a>（<a target=_blank href="http://arxiv.org/pdf/0705.1684">论文预印本</a>）领导。<i>1994年，贝尔实验室计算机科学家Peter Shor发表了一种快速进行因数分解的方法，就是现在被命名为Shor算法的量子算法。对任意大的整数快速做因数分解，可以大大降低目前普遍使用的RSA公开密钥加密技术的破解时间。《新科学家》<a target=_blank href="http://it.slashdot.org/it/07/09/13/1720251.shtml">的文章夸张的描述</a>道，“出现能运行Shor算法的量子计算机具有极为深远的意义。这意味着由量子计算带来的最为可怕的威胁即将成为现实——它能轻松的破解保护我们银行帐号，商业和电子商业数据使用的密码。更糟糕的是实现它的不是一个而是两个独立的研究团队。”</i>《新科学家》上的<a target=_blank href="http://www.newscientist.com/blog/technology/2007/09/how-quantum-computer-factorises-numbers.html">另一篇blog</a>则向我们介绍了Shor算法的原理：		</div>			<div class="full">			Shor算法是利用数论发现了快速寻找质因数的一条捷径。“周期”在其中起着非常重要的重要，它与数字分解因数相关。这里举15为例说明：<br />
首先，寻找一个与15（可分解为3和5）没有公因数(1除外)的数，我们选择11。<br />
然后，<br />
11被15除得0，余数11；<br />
11的平方是121；<br />
121被15除得8，余数1；<br />
11的立方是1331；<br />
1331被15除得88，余数11；<br />
继续.....；<br />
你发现了什么了吗?11的任意次幂被15除，余数是11或1，因此在这里周期就是2。<br />
11加上1或减去1得到两个数，10和12；<br />
你很快会发现10与15，12与15，两对数之间有公分母，前者是5后者是3，它们都是15的因数。<br />
数论里面有很多类似的有趣的东西。可惜我丢给老师了：)。		</div>