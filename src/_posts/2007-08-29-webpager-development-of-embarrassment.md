---

# 尴尬的webpager开发
2007-08-29 16:14:02


---


很久(3年)没有写js了，动真格的开发似乎有点吃力，很多写法都很陌生了。花了很长时间写了一版，中间碰到的问题太多，需要各方支援的细节太多了：ice连接，黑名单有bug，诡异的消息格式，奇异的换行符。。。<br />
不过还是让我觉得找到了点感觉，完成后问题不少：<br />
&nbsp;yui.tabview 的布局和俺们的界面设计不匹配，略显重量级<br />
&nbsp;css混乱了一点<br />
<br />
总之聊天不太爽，于是打算重写html界面，这次快多了，耗费了两天时间，不过自己感觉可以用一下了：<br />
&nbsp;支持了一些快捷键：ALT+S, ALT+B Ctrl+Tab(Firefox only)<br />
&nbsp;Shift+Enter 可以自动加高输入框<br />
&nbsp;屏蔽了文件传输、闪屏消息等。<br />
希望能通过，呵呵<br />