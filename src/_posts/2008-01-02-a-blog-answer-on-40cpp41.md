---

# 上一篇日志答案&#40;c++&#41;
2008-01-02 14:18:16


---


原文地址：<br />
http://herbsutter.spaces.live.com/Blog/cns!2D4327CC297151BB!378.entry<br />
作者是 herb sutter，不用怀疑权威性吧，哈～，<font size="-1">Secretary of the ISO/ANSI C++ Standards Committee<br />
</font>-------------------正文开始--------------------------------------------------<br />
<p>A friend recently asked me whether Example 1 below is legal, and ifso what it means. It led to a nice discussion I thought I'd post here.Since it was in close to <a target=_blank target="_blank" href="http://www.gotw.ca/gotw/">GotW</a>style already, I thought I'd do another honorary one after all theseyears... no, I have not made a New Year's Resolution to resume writingregular GotWs. :-)<br />
<br />
 </p>
<h2>JG Questions</h2> <h3>Q1: Is the following code legal C++?</h3> <blockquote> <p>// Example 1 </p>
<p>string f() { return "abc"; } </p>
<p>void g() {<br />
&nbsp; <strong>const string&amp; s</strong> = f();<br />
&nbsp; cout &lt;&lt; s &lt;&lt; endl;&nbsp;&nbsp;&nbsp; // can we still use the "temporary" object?<br />
}</p>
</blockquote> <h3>A1: Yes.</h3> <p>This is a C++ feature… the code is valid and does exactly what it appears to do.  </p>
<p>Normally,a temporary object lasts only until the end of the full expression inwhich it appears. However, C++ deliberately specifies that binding atemporary object to a reference <em>to const</em> lengthens thelifetime of the temporary to the lifetime of the reference itself, andthus avoids what would otherwise be a common dangling-reference error.In the example above, the temporary returned by f() lives until theclosing curly brace. </p>
<p>Does this work in practice? Yes, it works on all compilers I tried (except <a target=_blank target="_blank" href="http://digitalmars.com/download/freecompiler.html">Digital Mars</a>, so I just sent a bug report to Walter to rattle his cage :-) ).  </p>
<h3>Q2: What if we take out the const... is Example 2 still legal C++?</h3> <blockquote> <p>// Example 2 </p>
<p>string f() { return "abc"; } </p>
<p>void g() {<br />
&nbsp; <strong>string&amp; s</strong> = f();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // still legal?<br />
&nbsp; cout &lt;&lt; s &lt;&lt; endl;<br />
}</p>
</blockquote> <h3>A2: No.</h3> <p>The"const" is important. The first line is an error and the code won'tcompile portably with this reference to non-const, because f() returnsa temporary object (i.e., rvalue) and only lvalues can be bound toreferences to non-const. </p>
<p>Note: Visual C++ does allow Example 2but emits a "nonstandard extension used" warning by default. Aconforming C++ compiler can always allow otherwise-illegal C++ code tocompile and give it some meaning -- hey, it could choose to allowinline COBOL if some kooky compiler writer was willing to implementthat extension, maybe after a few too many Tequilas. For some kinds ofextensions the C++ standard requires that the compiler at least emitsome diagnostic to say that the code isn't valid ISO C++, as thiscompiler does. </p>
<p>I once heard <a target=_blank target="_blank" href="http://erdani.org/">Andrei Alexandrescu</a> give a talk on <a target=_blank target="_blank" href="http://www.ddj.com/cpp/184403758">ScopeGuard</a> where he used this C++ feature and called it "the most important <strong>const</strong>I ever wrote." And this brings us to the Guru Question, whichhighlights the additional subtlety that Andrei's code deftlyleveraged... </p>
 <p> </p>
<h2><br />
Guru Question</h2> <h3>Q3: When the reference goes out of scope, which destructor gets called?</h3> <h3>A3: The same destructor that would be called for the temporary object. It's just being delayed.</h3> <p>Corollary: You can take a const Base&amp; to a Derived temporary and it will be destroyed <em>without virtual dispatch on the destructor call</em>.  </p>
<p>This is nifty. Consider the following code:  </p>
<blockquote> <p>// Example 3  </p>
<p>Derived factory(); // construct a Derived object  </p>
<p>void g() {<br />
&nbsp; const Base&amp; b = factory(); // calls Derived::Derived here<br />
&nbsp; // … use b …<br />
} // <b>calls Derived::~Derived directly here</b> -- not Base::~Base + virtual dispatch!</p>
</blockquote> <p>Doesthis work in practice on real compilers? Yes: Every compiler I haveaccess to calls the correct Derived destructor, including even ancientBorland 5.5 and Visual C++ 6.0 (and Digital Mars, though DM calls thedestructor at the wrong time, as noted above). </p>
Andrei leveragesthis subtlety (of course) in his ScopeGuard implementation to avoidmaking the implementation classes' destructors virtual at all, which isokay in that case because those classes otherwise have no need for one.<img src="http://c.services.spaces.live.com/CollectionWebService/c.gif?cid=3261494312968475067&amp;page=RSS%3a+GotW+%2388%3a+A+Candidate+For+the+%22Most+Important+const%22&amp;referrer=" alt="" border="0" height="1" width="1"><br />
