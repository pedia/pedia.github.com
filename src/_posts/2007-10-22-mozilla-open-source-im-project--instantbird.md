---

# Mozilla的开源IM项目 -- InstantBird
2007-10-22 12:49


---


软件: Instabird—整合即时通讯，包括QQ<br />
matrix 发表于 2007年10月20日 19时00分 星期六 Printer-friendly   Email story<br />来自version-0.1部门<br />Mozilla<br />49city 写道 
>
> "Mozilla 家族迎来了它的最新成员Instabird，一个支持多种即时消息服务的客户端程序，目前支持：AIM、Gadu-Gadu、Google Talk、ICQ、MSN、QQ、XMPP和Yahoo!
> 通过它你可以同时连接到你所有的即时通信账户！这个项目目前还是Beta版本，但是那些喜欢冒险 的用户，现在可以尝试编译一个属于自己的版本了！
> 注意，没错是“编译”一个。当然开源软件么，你可以按照自己的意愿使用，分发和修改。
> 下载包有13.1M 大小，对于宽带用户来说这不算什么，安装过程称不上漂亮，需时约45秒左右且设置起来比较费力。界面边缘仍是有点粗糙，既然是早期测试版，就原谅它了。
> 就像其它mozilla产品，也有插件接口，可以不断的添加各式的插件到产品中。
> Instabird 还支持另外10多款名不见经传的即时通讯服务，但遗憾的是Skype目前还不被支持。"
>

首先这个名字很酷, InstantBird 即时鸟？<br /><br /><a href="http://www.instantbird.com">InstantBird</a> 的确是在<a href="http://pidgin.im">Pidgin</a>基础上做的，界面使用了XUL技术。<br />  把Pidgin提供的功能封装成XPCOM,如IAccount,IBuddy, IConversation, IMessage等接口<br />  使用XUL脚本编写的界面?<br /><br />我之前以为XUL太重量级了，无法作出比较轻量级的IM软件，看来我错了。<br /><br />其<a href="http://www.instantbird.org/">Roadmap</a>摘要:<br />0.15版加入proxy<br />0.2版可能会把Pigin的每个协议做为一个extension<br />0.3版把消息改为HTML格式，加入irc,...<br />0.4版加入whiteboard ...<br />1.0等同Pidgin<br /><br /><a href="http://www.instantbird.com/contact.html">现在</a>专职开发只有两人，一个技术，一个UI，都是法国人。<br /><br /><br />
不要问俺Pidgin,XUL是什么