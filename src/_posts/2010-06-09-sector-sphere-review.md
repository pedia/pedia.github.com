---

# Sector/Sphere Review
2010-06-09 09:36

[Distributed file system]
---


Sector/Sphere 是一个分布并行计算系统，用来存储、计算天文信息。Sector 是文件系统，Sphere 是并行计算平台。<br />
其[性能](http://sector.sourceforge.net/benchmark.html)超过了 Hadoop 一倍多。性能评测结果 <br />
其分布指分布在几个州的 rack，使用 udt 通讯。<br />


特性
-----
* Master 能多份，好像得手工同步一些信息。
  Master和Node能随时添加、删除
* Sector automatically replicates files to different nodes to provide high reliability and availability. In addition, this strategy favors read-intensive scenarios since clients can read from different replicas.
* 不对大文件切分，但是每个 dataset 还是可以由多个物理文件组成，切分是application的职责。
* 流量：When Sector is running on 120 nodes, the aggregate network IO is greater than 60 Gb/s, while for Hadoop the number is only 15 Gb/s.

开发了 3 年，开始并没有模仿 GFS，HDFS 等。发布了一些 Paper，最近一次发布在 2 月，SVN 在几天前也有更新。作者貌似是一个中国人。


其他
------
有 Python,Java binding<br />
测试代码较少，几乎没有<br />
C++，有严重 Java 痕迹，不算优雅，结构还过得去，能写成这样已算不错。<br />
不能跨平台<br />
有 fuse 实现<br />
管理工具可能比较少