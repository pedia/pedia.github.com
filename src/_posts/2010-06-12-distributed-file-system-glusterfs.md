---

# 分布式文件系统 GlusterFS
2010-06-12 10:04

[Distributed file system]
---

文档
-----
http://gluster.com/community/documentation/index.php/Gluster_Storage_Platform<br />
http://gluster.com/community/documentation/index.php/GlusterFS_cookbook<br />
最好的文档应该是git中的 user-guide.pdf<br />

代码
-----
git clone git://git.gluster.com/glusterfs.git<br />
貌似在gnu还有一份拷贝，但是似乎两个版本有细微差距<br />
GlusterFS 能使用 libibverbs，下载地址在 http://www.openfabrics.org/downloads/verbs/ <br />

对应于 configure 的结果中的  Infiniband verbs<br />
```
FUSE client        : yes
Infiniband verbs   : no
epoll IO multiplex : yes
argp-standalone    : no
fusermount         : no
```

优点
------
1 结构清晰<br />
* libglusterfs<br />
* glusterfsd<br />
* booter<br />
* glusterfs<br />
* mod_gluster for apache/lighttpd 甚至支持 DAV<br />

各司其职，每个模块功能都做到极致

2 支持多种 signal 控制<br />
 object dump<br />
 latency 评测<br />
 崩溃后会输出 backtrace(有可能不准确)<br />
 log rotate<br />
功能不是很突出，但是这种编程、思维模式很好。<br />

3 其 Translators 概念非常不错<br />
   号称实现了所有 filesystem operations, 内部有一个比VFS更精细的树状结构:<br />
   cluster/afr 貌似支持 raid1<br />
   type cluster/unify<br />
   type cluster/stripe<br />
   type cluster/dht<br />

都是很有价值的功能<br />

这是我最喜欢的分布式文件系统实现，缺点是卷的配置是固定的，动态添加节点应该是不可能的(至少得改变父节点的配置文件)。