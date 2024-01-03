---

# 分布式文件系统 Ceph
2010-06-11 09:46

[Distributed file system]
---


Ceph 的[优点](http://ceph.newdream.net/about/)写 得很突出
* Striping
* dynamic Meta Server
* object  storage ?

07 年就开始发布paper了，<a href="http://www.newdream.net/%7Esage/">作者</a>貌似只有一人，06 年的Phd毕业生。<br />
系统好像依赖 btrfs, 有人说 btrfs 没有达到 product  级别，Ceph 作者也<a href="http://ceph.newdream.net/2010/05/linux-v2-6-34-is-out/">坦承</a>：
>
> Please note, however, that Ceph is still  **experimental** and is not yet ready for use in a production environment.
>

因为Ceph依赖文件系统，搭建测试会比较费劲<br />
我在初步阅读了服务器端的代码，C++实现, 代码量很大，感觉写得很丑陋，直觉就是不想测试这个分布式系统了。

我没有阅读已经进入 Kernel 的Ceph Client 的代码。

doc<br />
<a href="http://www.ibm.com/developerworks/linux/library/l-ceph/index.html" target="_blank">http://www.ibm.com/developerworks/linux/library/l-ceph/index.html</a><br />
<a href="http://ceph.newdream.net/about/" target="_blank">http://ceph.newdream.net/about/</a>