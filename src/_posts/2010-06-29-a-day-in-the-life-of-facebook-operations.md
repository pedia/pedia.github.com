---

# A Day in the Life of Facebook Operations
2010-06-29 11:14

[facebook]
---


How big Facebook is?
---------------------
<img border="0" src="http://2.bp.blogspot.com/_CZ0niZQI8-o/TClZ1kgIbBI/AAAAAAAAFWs/IjkL-G9uAF8/s320/fb_1.png" />

<img border="0" src="http://2.bp.blogspot.com/_CZ0niZQI8-o/TClZ4ntQCYI/AAAAAAAAFW0/QlyO87wEsN4/s320/fb_2.png" />

<img border="0" src="http://3.bp.blogspot.com/_CZ0niZQI8-o/TClZ5yksdII/AAAAAAAAFW8/jkR4A1lyiWI/s320/fb_3.png" />

<img border="0" src="http://3.bp.blogspot.com/_CZ0niZQI8-o/TClZ9ev6egI/AAAAAAAAFXE/CLzrJntOp78/s320/fb_4.png" />

and servers, 60K?

<img border="0" src="http://3.bp.blogspot.com/_CZ0niZQI8-o/TClgijuptCI/AAAAAAAAFYE/NiiQcWNYOFk/s320/fb_6_server.png" />

Rapid Growth
----------------

<img border="0" src="http://1.bp.blogspot.com/_CZ0niZQI8-o/TClZ-e2wyMI/AAAAAAAAFXM/okv4H7W76hc/s320/fb_5_growth.png" /><br />
<br />
正在俄勒冈建立第3个数据中心<br />
<img border="0" src="http://3.bp.blogspot.com/_CZ0niZQI8-o/TClc1HhX4sI/AAAAAAAAFXU/h_oapa2Vhgs/s320/fb_7_DC.png" />

architect
---------
<img border="0" src="http://3.bp.blogspot.com/_CZ0niZQI8-o/TClc6OOnkyI/AAAAAAAAFXk/hCkCJ5voqFM/s320/fb_arch.png" /><br />
<br />
Hiphop for PHP<br />

<img border="0" src="http://2.bp.blogspot.com/_CZ0niZQI8-o/TClc5G1-dZI/AAAAAAAAFXc/G9FOgaK-xhs/s320/fb_7_php.png" />memcached 300+TB live data in RAM<br />
<img border="0" src="http://2.bp.blogspot.com/_CZ0niZQI8-o/TClhFwKDqiI/AAAAAAAAFYM/O3U3lWEkvH8/s320/fb_9_memcached.png" />
<img border="0" src="http://1.bp.blogspot.com/_CZ0niZQI8-o/TClhG_ySqCI/AAAAAAAAFYU/OZpWZkhxUDY/s320/fb_10_services.png" />All services are independent.<br />

<img border="0" src="http://1.bp.blogspot.com/_CZ0niZQI8-o/TClc7h6bXII/AAAAAAAAFXs/li-GVSNKLKg/s320/fb_arch2.png" />

Configure Managment
--------------------
use CFengine 3<br />
<img border="0" src="http://3.bp.blogspot.com/_CZ0niZQI8-o/TClc-5zkzjI/AAAAAAAAFX0/YVEFJjhzHuc/s320/fb_cfengine.png" /><br />
Deployment

we focus on web push.<br />
Use BitTorrent to deploy source code, It's very fast. <br />

<img border="0" src="http://1.bp.blogspot.com/_CZ0niZQI8-o/TCldGKDdrmI/AAAAAAAAFX8/wnZ86Su-m_g/s320/fb_webpush.png" /><br />
<br />
<br />
<br />
一般开发模式可能是 Engineering/QA/Operations，但是我们没有QA，因为沟通成本太高<br />
我们的Engineers write,and deploy their own code, 能够快速关注性能问题，流量等<br />
运营人员‘embedded’ int oengineering teams，来更好的做好架构决策，更好的理解产品<br />

<img border="0" src="http://3.bp.blogspot.com/_CZ0niZQI8-o/TCliNPdHmKI/AAAAAAAAFYc/3AL0JQhaVC8/s320/fb_14_engineering.png" /><br />
<br />
Change logging<br />
所做的操作都记录在案，大部分更新时间都在凌晨1点<br />

<img border="0" src="http://3.bp.blogspot.com/_CZ0niZQI8-o/TCliT9U0O9I/AAAAAAAAFYk/ZuHLLt1i4Vs/s320/fb_15_change_logging.png" /><br />

Monitor and Metrics
-------------------

Ganglia is very Fast.<br />
<img border="0" src="http://3.bp.blogspot.com/_CZ0niZQI8-o/TClig79cXfI/AAAAAAAAFYs/aqbI5QkF19Q/s320/fb_16_monitor.png" />
<img border="0" src="http://1.bp.blogspot.com/_CZ0niZQI8-o/TClijJ3VlGI/AAAAAAAAFY0/5bnB2jPKn4A/s320/fb_17_monitor2.png" /><br />
another graph tool ODS <br />

<img border="0" src="http://3.bp.blogspot.com/_CZ0niZQI8-o/TCli2cVKxqI/AAAAAAAAFZE/Xdr4OLpD_AI/s320/fb_19_ods2.png" /><br />

<img border="0" src="http://3.bp.blogspot.com/_CZ0niZQI8-o/TCliltk5tNI/AAAAAAAAFY8/sdOJjgKLg8Q/s320/fb_18_ganglia.png" /><br />
We basically use Nagios.<br />

Aggregation
------------

<img border="0" src="http://4.bp.blogspot.com/_CZ0niZQI8-o/TCli_LG0kDI/AAAAAAAAFZM/HSfWEp8m_PU/s320/fb_20_alarm.png" /><br />
<br />
How we do it
----------------
Constant Growth<br />
Constant Failure<br />
Logical Units<br />
servers, racks, clusters, datacenters<br />
Constant Communication<br />
Everyone use IRC<br />

<img border="0" src="http://2.bp.blogspot.com/_CZ0niZQI8-o/TCljJ21jt4I/AAAAAAAAFZU/wj7EoG2iIOE/s320/fb_21_communiction.png" /><br />

Small Teams
----------------
<img border="0" src="http://2.bp.blogspot.com/_CZ0niZQI8-o/TCljTPe2YwI/AAAAAAAAFZc/e61xS_fRftI/s320/fb_22_users.png" /><br />
<br />
Recap<br />

<img border="0" src="http://2.bp.blogspot.com/_CZ0niZQI8-o/TCljZRhB8mI/AAAAAAAAFZk/vGW1HOEeN94/s320/fb_23_recap.png" /><br />
screenshot from [youtube.](http://www.youtube.com/watch?v=T-Xr_PJdNmQ&amp;feature=player_embedded#%21)