---

# Mozilla的开源IM项目 -- InstantBird
2007-10-22 13:26:44


---


<p></p>
<div class="article"><div class="generaltitle">	<div class="title">		<h3>			<a target=_blank href="http://software.solidot.org/">软件</a>: Instabird—基于Mozilla的即时通讯平台					</h3>	</div></div>	<div class="details">				<a target=_blank href="http://solidot.org/">matrix</a>  发表于 2007年10月20日 19时00分 星期六		 			&nbsp;&nbsp;<a target=_blank href="http://solidot.org/print.pl?sid=07/10/20/113229"><img src="http://solidot.org/images/print.gif" alt="Printer-friendly" height="11" width="15"></a>							&nbsp;&nbsp;<a target=_blank href="http://solidot.org/email.pl?sid=07/10/20/113229"><img src="http://solidot.org/images/email.gif" alt="Email story" height="14" width="20"></a>		<br />
		<strong>来自<b>version-0.1</b>部门</strong>	</div>	<div class="body">		 		<div class="topic">										<a target=_blank href="http://solidot.org/search.pl?tid=29">					<img src="http://solidot.org/images/topics/topicmozilla.gif" alt="Mozilla" title="Mozilla" height="64" width="80">				</a>								</div>		<div class="intro">			<a target=_blank href="http://www.49city.net/">49city</a> 写道 "Mozilla 家族迎来了它的最新成员<a target=_blank href="http://www.instantbird.com/">Instabird</a>，一个支持多种即时消息服务的客户端程序，目前支持：AIM、Gadu-Gadu、Google Talk、ICQ、MSN、QQ、XMPP和Yahoo!通过它你可以同时连接到你所有的即时通信账户！这个项目目前还是Beta版本，但是那些喜欢冒险的用户，现在可以尝试编译一个属于自己的版本了！注意，没错是“编译”一个。当然开源软件么，你可以按照自己的意愿使用，分发和修改。<i><a target=_blank href="http://www.instantbird.com/download.html">下载包</a>有13.1M大小，对于宽带用户来说这不算什么，安装过程称不上漂亮，需时约45秒左右且设置起来比较费力。界面边缘仍是有点粗糙，既然是早期测试版，就原谅它了。就像其它mozilla产品，也有插件接口，可以不断的添加各式的插件到产品中。Instabird 还支持另外10多款名不见经传的即时通讯服务，但遗憾的是Skype目前还不被支持。"</i>		</div>			</div></div><br />
<br />
首先这个名字很酷, InstantBird 即时鸟？<p>InstantBird 的确是在Pidgin基础上做的，界面使用了XUL技术。<br />
&nbsp; 把Pidgin提供的功能封装成XPCOM,如IAccount,IBuddy, IConversation, IMessage等接口<br />
&nbsp; 使用XUL脚本编写的界面?</p>
<p><br />
我之前以为XUL太重量级了，无法作出比较轻量级的IM软件，看来我错了。</p>
<p><br />
其Roadmap摘要:<br />
0.15版加入proxy<br />
0.2版可能会把Pigin的每个协议做为一个extension<br />
0.3版把消息改为HTML格式，加入irc,...<br />
0.4版加入whiteboard ...<br />
1.0等同Pidgin</p>
<p>现在专职开发只有两人，一个技术，一个UI，都是法国人。</p>
<p><br />
[不要问俺Pidgin,XUL是什么]</p>
