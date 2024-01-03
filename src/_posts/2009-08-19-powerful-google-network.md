---

# 强大的Google的网络
2009-08-19 11:25:22


---


<p>最近据说由于海底光缆故障，很多国外网站访问非常慢，周围的同学都在抱怨&ldquo;google上不去了&rdquo;，&ldquo;gmail访问不了了&rdquo;。<br />
 但是我发现我的机器访问google速度很快，几乎感觉不到变慢。<br />
     <br />
 查看了一下，原因是我的机器的 /etc/hosts 有<br />
 72.14.203.83 mail.google.com google.com www.google.com<br />
     <br />
 更有意思的事情出现了<br />
 1 我在上面这行后面加入 docs.google.com<br />
 2 然后我在firefox里访问 https://docs.google.com，提示 <br />
 The Connection is Untrusted<br />
 The certificate is only valid for mail.google.com<br />
     <br />
 也就是说我访问的机器 72.14.203.83 本是提供 gmail 功能的机器<br />
 3 我添加例外信任此证书后，能正常访问 docs.google.com<br />
     <br />
 之前就知道能通过google任何一台机器都能访问google提供的所有服务，现在通过证书能验证某个ip提供的缺省服务还是不同的<br />
     <br />
 很强大的GWS,貌似nginx也能做到这点<br />
     <br />
 server&nbsp; {</p>
<p>&nbsp; server_name mail.google.com;<br />
 &nbsp;&nbsp; # 提供mail的服务<br />
 }<br />
     <br />
 server {<br />
 &nbsp; server_name *.google.com;</p>
<p>&nbsp; proxy_pass $scheme://$host:$server_port/;<br />
 }<br />
     <br />
 当然从内网能解析到能提供服务的 *.google.com</p>
<p>&nbsp;</p>
<p>是这样么？欢迎拍砖</p>
