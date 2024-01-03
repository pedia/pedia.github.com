---

# Googler use c++?
2007-02-27 21:41

[open source, c++, boost, Google]
---


最近发现<a href="http://code.google.com/hosting/">Google code</a>上多了<a href="http://code.google.com/hosting/search?q=label%3AGoogle+&amp;btn=Search+Projects">好多</a>Google的开源项目，比较有意思的项目有：

<a href="http://code.google.com/p/airbag/">airbag - Crash reporting</a>

An open-source multi-platform crash reporting system

exception_handler能在Windows下生成dmp文件，processor 能直接分析出崩溃地址详细信息：

```
Crash reason:  EXCEPTION_ACCESS_VIOLATION

Crash address: 0x45

Thread 0 (crashed)
0  test_app.exe!`anonymous namespace'::CrashFunction [test_app.cc : 58 + 0x3]
1  test_app.exe!main [test_app.cc : 65 + 0x4]
2  test_app.exe!__tmainCRTStartup [crt0.c : 327 + 0x11]
3  kernel32.dll!BaseProcessStart + 0x22
```

注意：processor 并不依赖Windows就能识别dmp文件格式，非常适合于在服务器上做自动分析，然后生成报表。

* <a href="http://code.google.com/p/google-gen/">google-gen - A system for learning generative models of relational data.</a>

这样的项目都能开源，太有意思了。真是目标远大

* <a href="http://code.google.com/p/google-ctemplate/">google-ctemplate - A simple but powerful template language for C++</a>

我估计(感觉而已)Google的搜索结果不是用这套代码实现的。模版功能非常强。

* <a href="http://code.google.com/p/gnscd/">gnscd - New nscd daemon</a>

不知道干什么用的。

* <a href="http://code.google.com/p/libjingle/">libjingle - Google Talk Voice, File Sharing, and P2P Interoperability Library</a>

Gtalk的核心，代码写得非常不错，但是有过度设计之嫌。

* [gpo - Google Pose Optimizer](http://code.google.com/p/gpo/)

* [google-perftools](http://code.google.com/p/google-perftools/) 

Fast, mutli-threaded malloc() and nifty performance analysis tools

* <a href="http://code.google.com/p/google-sparsehash/">google-sparsehash - An extremely memory-efficient hash_map implementation</a>

  sparsehash 支持两种模式：效率优先，内存占用优先。

* <a href="http://code.google.com/p/google-oaf/">google-oaf - Google Open Automation Framework</a>

没有刻意去找寻Google的所有开源项目，但是发现使用C++要多一些，并且大都很重的使用了STL，没有使用[Boost](http://www.boost.org/),
但是几个项目(google-breakpad, ctemplate)都实现了[scoped_ptr](www.boost.org/libs/smart_ptr/scoped_ptr.htm)，也直接使用了

``` c++
#include <hash>
```

在Bjarne Stroustrup's homepage上有这么句话
>
> [February 21: Google (Mountainview): "Initalization in C++0x".](http://www.research.att.com/~bs/) 
>

似乎Google 请 Bjarne Stroustrup 去 talk，可见 Google 对 C++ 的重视程度。

个人认为：Google做出了一个代表，**应用开发的首选语言应该是C++，而不是C**。