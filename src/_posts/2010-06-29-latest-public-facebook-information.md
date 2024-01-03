---

# Facebook最新公开信息
2010-06-29 11:32:06


---


<p>今年Velocity上的<a href="http://www.youtube.com/watch?v=T-Xr_PJdNmQ&feature=player_embedded#%21" target="_blank">视频</a>，部分信息的截屏.</p>
<p>A Day in the Life of Facebook Operations</p>
<p>    <strong>Facebook有多大？</strong>     <br />
     <img src="http://fmn.xnimg.cn/fmn038/20100629/1115/b_large_SucK_7406000142de2d14.jpg" alt=""></p>
<p>    <br />
     <img src="http://fmn.xnimg.cn/fmn036/20100629/1120/b_large_QsDV_74060001430a2d14.jpg" alt=""><br />
     <br />
     <img src="http://fmn.xnimg.cn/fmn044/20100629/1120/b_large_acdX_7406000143142d14.jpg" alt=""><br />
     <br />
     <img src="http://fmn.xnimg.cn/fmn038/20100629/1120/b_large_2cXE_7408000206ed2d14.jpg" alt=""><br />
     <br />
Growth<br />
     <img src="http://fmn.xnimg.cn/fmn043/20100629/1120/b_large_D8KY_7408000207022d14.jpg" alt=""></p>
<p>服务器数量，去年公布的3万台，估计今年应该到了6万。<br />
     <img src="http://fmn.xnimg.cn/fmn038/20100629/1120/b_large_z2oG_74060001434e2d14.jpg" alt=""></p>
<p>正在俄勒冈建立第3个数据中心 http://facebook.com/prinevilledatacenter</p>
<p>    <img src="http://fmn.xnimg.cn/fmn041/20100629/1120/b_large_j6vq_740a00030d622d14.jpg" alt=""><br />
     <br />
架构<br />
     <img src="http://fmn.xnimg.cn/fmn041/20100629/1120/b_large_9Ws4_740a00030db72d14.jpg" alt=""></p>
<p>    <br />
     <img src="http://fmn.xnimg.cn/fmn036/20100629/1120/b_large_JVQ9_74080002082a2d14.jpg" alt=""><br />
     <br />
     <img src="http://fmn.xnimg.cn/fmn040/20100629/1120/b_large_muIa_74080002083b2d14.jpg" alt=""><br />
     <br />
     <img src="http://fmn.xnimg.cn/fmn043/20100629/1120/b_large_6xhI_740a00030e2b2d14.jpg" alt=""><br />
     <br />
     <img src="http://fmn.xnimg.cn/fmn044/20100629/1120/b_large_5VCR_740a00030e462d14.jpg" alt=""><br />
     <br />
Configure Managment 在fb有举足轻重的地位，使用 CFengine 3 管理集群<br />
     <img src="http://fmn.xnimg.cn/fmn038/20100629/1120/b_large_nwRq_7408000208ab2d14.jpg" alt=""><br />
     <br />
     <strong>Deployment</strong>     <br />
we focus on web push first.<br />
     <img src="http://fmn.xnimg.cn/fmn040/20100629/1120/b_large_YvSK_7408000208d12d14.jpg" alt=""><br />
这可能是最有意思的细节了<br />
Use BitTorrent to deploy source code, It's very fast.</p>
<p>    <strong>开发</strong>     <br />
一般开发模式可能是 Engineering/QA/Operations，但是我们没有QA，因为沟通成本太高<br />
我们的Engineers write,and deploy their own code, 能够快速关注性能问题，流量等<br />
运营人员&lsquo;embedded&rsquo; int oengineering teams，来更好的做好架构决策，更好的理解产品<br />
     <img src="http://fmn.xnimg.cn/fmn042/20100629/1125/b_large_4ylZ_740000002be82d14.jpg" alt=""><br />
     <br />
     <strong>Change logging</strong>     <br />
所做的操作都记录在案，大部分更新时间都在凌晨1点<br />
     <img src="http://fmn.xnimg.cn/fmn042/20100629/1125/b_large_4BYL_7406000144bc2d14.jpg" alt=""></p>
<p>    <strong>Monitor and Metrics</strong>     <br />
     <img src="http://fmn.xnimg.cn/fmn040/20100629/1125/b_large_EN7v_740a00030fcd2d14.jpg" alt=""><br />
     <br />
     <img src="http://fmn.xnimg.cn/fmn045/20100629/1125/b_large_fnFB_740a00030feb2d14.jpg" alt=""><br />
     <br />
Ganglia is very Fast.<br />
     <img src="http://fmn.xnimg.cn/fmn043/20100629/1125/b_large_V4MZ_740a000310092d14.jpg" alt=""><br />
     <br />
another graph tool ODS <br />
     <img src="http://fmn.xnimg.cn/fmn040/20100629/1125/b_large_sDRe_7406000145182d14.jpg" alt=""><br />
     <br />
     <img src="http://fmn.xnimg.cn/fmn045/20100629/1125/b_large_mAUt_740a000310732d14.jpg" alt=""><br />
     <br />
basically use Nagios.<br />
     <br />
     <strong>Aggregation</strong>     <br />
     <img src="http://fmn.xnimg.cn/fmn045/20100629/1125/b_large_oVLk_740200005c2c2d14.jpg" alt=""><br />
     <br />
     <strong>How we do it</strong>     <br />
Constant Growth<br />
Constant Failure<br />
Logical Units<br />
servers, racks, clusters, datacenters<br />
Constant Communication<br />
     <img src="http://fmn.xnimg.cn/fmn043/20100629/1125/b_large_ZFCK_740a000310fa2d14.jpg" alt=""><br />
这个也很有意思，每个员工都在使用IRC<br />
     <br />
     <strong>Small Teams</strong>     <br />
这是fb最引以为豪的事情<br />
     <img src="http://fmn.xnimg.cn/fmn038/20100629/1125/b_large_2rRN_7406000145862d14.jpg" alt=""></p>
<p>Recap<br />
     <img src="http://fmn.xnimg.cn/fmn041/20100629/1125/b_large_i1UM_740a000311842d14.jpg" alt=""></p>
