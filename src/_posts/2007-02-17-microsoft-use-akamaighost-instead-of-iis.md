---

# Microsoft use AkamaiGHost
2007-02-17 08:50


---


我在下载<a href="http://download.microsoft.com/download/a/7/e/a7e58606-58a3-429b-afc0-50159db5bc13/wmplayer10sdk.exe">这个</a>SDK时发现微软没有使用IIS,下面是FlashGet的记录:

```
Sat Feb 17 08:46:14 2007 GET /download/a/7/e/a7e58606-58a3-429b-afc0-50159db5bc13/wmplayer10sdk.exe HTTP/1.1
Sat Feb 17 08:46:14 2007 Host: download.microsoft.com
Sat Feb 17 08:46:14 2007 Accept: */*
Sat Feb 17 08:46:14 2007 Referer: http://msdn2.microsoft.com/en-us/windowsmedia/bb190309.aspx
Sat Feb 17 08:46:14 2007 Cookie: WT_FPC=id=221.219.255.114-3846253312.29778178:lv=1171644320531:ss=1171643843218; A=I&amp;I=AxUFAAAAAAB5BwAAzWBDaZxLTb8z0M28E40cWA!!; MC1=GUID=c025e1ab595f3b46b505a7d54bbe8a95&amp;HASH=abe1&amp;LV=200610&amp;V=3; MC1=GUID=bb20393f61eed14d90553f3648656f90&amp;HASH=3f39&amp;LV=200611&amp;V=3; WT_FPC=id=221.219.252.32-3181831376.29764394:lv=1171403908421:ss=1171403908421; A=I&amp;I=AxUFAAAAAAAxCQAA2A4XjltHcqzQjqy9aMqJ3w!!
Sat Feb 17 08:46:14 2007 User-Agent: Mozilla/4.0 (compatible; MSIE 5.00; Windows 98)
Sat Feb 17 08:46:14 2007 Pragma: no-cache
Sat Feb 17 08:46:14 2007 Cache-Control: no-cache
Sat Feb 17 08:46:14 2007 Connection: close
Sat Feb 17 08:46:15 2007 HTTP/1.1 500 Internal Server Error
Sat Feb 17 08:46:15 2007 Server: AkamaiGHos
Sat Feb 17 08:46:15 2007 Mime-Version: 1.0
Sat Feb 17 08:46:15 2007 Content-Type: text/html
Sat Feb 17 08:46:15 2007 Content-Length: 283
Sat Feb 17 08:46:15 2007 Expires: Sat, 17 Feb 2007 00:46:14 GMT
Sat Feb 17 08:46:15 2007 Sat, 17 Feb 2007 00:46:14 GMT
Sat Feb 17 08:46:15 2007 Connection: close
```

