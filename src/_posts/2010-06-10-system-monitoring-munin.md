---

# 系统监控 Munin
2010-06-10 09:44

[sysadmin]
---


在系统监控方面，有很多选择，如 ganglia, nagios, cacti, monit等等，各有所长。<br />
ganglia 在集群监控上优势很大，对系统管理员非常有价值，但是对于服务开发者－程序员来说远远不够，监控项目太少了，二次开发，定制比较困难。

munin 对内存的监控项目如下<br />

<img border="0" height="335" src="/pic/munin-memory-day.png" width="400" /><br />

应该是非常详尽了的。<br />

munin 的特点
----------------
<ul><li>扩展<br />
munin 的 <a href="http://munin-monitoring.org/wiki/HowToWritePlugins">plugin</a> 编写比 ganglia 简单很多<br />
ganglia 需要实现约定接口，最麻烦的是需要配置文件对输出结果进行自定义。统计項复杂时，几乎不可接受。<br />
并且一个Plugin只能汇报一个值(统计项)，如果要在 rrdtool 中汇聚了多个值，出图又成问题。<br />
munin 的扩展编写只需要脚本即可，如下：<br />
```
echo a.value 100
```
并且一个独立的脚本就可以控制：出图，出值，配置信息<br />

其<a href="http://munin-monitoring.org/wiki/Debugging_Munin_plugins">调试</a>过程也很容易,运行 munin-run load, munin-run load config 就能看到脚本是否正确<br />
远程使用 telnet host 4949 也能进行测试<br />

对于程序员，可以把程序内部的计数器，如函数调用次数，内部状态等汇报至监控系统。<br />
</li>

<li>性能<br />
ganglia 本身轻量级很多，应该是主机向集群节点主动推送的机制 ?<br />
munin 是中心节点定时去主机那里获取信息<br />
munin-node 的执行开销比 gmond 的执行开销要大。可以通过禁用掉不太有价值的 plugin 来降低 load<br />
</li>

<li>系统容量<br />
munin 能监控的主机数目完全受中心节点系统资源限制，如果 5 分钟内没有办法遍历一次所有主机就成问题了，munin 支持并发更新<br />
其 Web 支持静态文件和 <a href="http://munin-monitoring.org/wiki/CgiHowto">CGI 方式</a><br />
静态方式每次都要产生 png 和 html</li>

<li>还有，munin 能使用 nagios 报警</li>
</ul>
安装方式
```
yum -y install munin
yum -y install munin-node
```
如果失败，可以尝试配置 dag 的 yum repos<br />
```
[dag]
name=Dag RPM Repository for Red Hat Enterprise Linux
baseurl=http://apt.sw.be/redhat/el5/en/$basearch/dag
gpgcheck=1
gpgkey=http://dag.wieers.com/rpm/packages/RPM-GPG-KEY.dag.txt
enabled=1
```
其他系统安装见<a href="http://munin-monitoring.org/wiki/LinuxInstallation">这儿</a>