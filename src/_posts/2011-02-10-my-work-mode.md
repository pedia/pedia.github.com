---

# 我的工作模式
2011-02-10 15:03

[samba, synergy2, gyp]
---


我有两台计算机，一台是 Windows XP，另外一台是 32bit Ubuntu。 设置了一些环境，让工作顺畅一些。

Samba 共享 Ubuntu 下的工作目录，Windows 共享访问
-------------------------------------------------
好处： 代码只有一份，一次修改，两个地方同时生效。通常在 linux 下操作文件、代码库，需要写大量代码时才会使用 windows。<br />

</div>在 windows 下把 linux下的工作目录映射为一个逻辑盘<br />
<img border="0" height="156" src="/pic/windows_share.png" width="200" />

Samba 配置 /etc/samba/smb.conf 内容大致为

```
[global]
server string = xxx
dns proxy = no
encrypt passwords = true
passdb backend = tdbsam
obey pam restrictions = yes
unix password sync = yes
passwd program = /usr/bin/passwd %u
passwd chat = *Enter\snew\s*\spassword:* %n\n *Retype\snew\s*\spassword:* %n\n *password\supdated\ssuccessfully* .
map to guest = bad user
usershare allow guests = no

[w]
comment = a shared directory
path = /path/to/shared
guest ok = no
write list=username
create mask = 0600
```

[Synergy2](http://synergy2.sf.net)，一套键盘鼠标控制两(多)台计算机
-------------------------------------------------------------------
一般使用 linux 作为主机，其配置也是相当的简单
```
section: screens
 linux-name:
 windows-name:
end
section: links
 windows-name:
 right = linux-name
 linux-name:
 left = windows-name
end
```

windows 下的 Synergy2 有设置界面。apt-get 安装的版本可能稍微旧了一些。

GYP，编译系统
--------------------
同时支持 Makefile 和 Visual Studio 的 .vcproj 工程文件，出自 Google 的 Chrome http://code.google.com/p/gyp/

其中 gyp 内容一般为：<br />
```
{
 'targets': [
 {
  'target_name': 'foo',
  'type': 'executable'
  'dependencies': [
   'xyzzy',
   '../bar/bar.gyp:bar',
  ],
  'defines': [
   'DEFINE_FOO',
   'DEFINE_A_VALUE=value',
  ],
  'include_dirs': [
   '..',
  ],
  'sources': [
   'file1.cc',
   'file2.cc',
  ],
 },
 ],
}
```

<span style="color: #6aa84f;">gyp -fmake foo.gyp</span> 能产生 Makefile<br />
<span style="color: #6aa84f;">gyp -fmsvs foo.gyp</span> 产生 foo.vcproj 以及 foo.sln

其编译速度通常比 cmake, scons 快很多。管理大型工程是非常的合适。<br />
其实还能生成 Mac 下的 xcode 项目文件，可惜我没有 Mac 系统。

使用 Visual Studio 写代码比 vi 能快不少。<br />
<img border="0" height="250" src="/pic/vs.png" width="320" />