---

# 垃圾堆的故事 [转]
2009-01-08 23:23:00


---


<h2>垃圾堆的故事</h2><p>     <span>from 屋顶上的木帷幕 </span> by <span>mvm</span> </p>
<p>我 们组的code base已经有五六年了，虽然比不上Windows或Office，但也有年头了。经年累月的加功能，一拨拨人走，一拨拨人来。我们平时总是戏称自己是在 一个垃圾堆上建一个更大的垃圾堆，而且还要保证这个垃圾堆不会倒掉。像我们做online service的，老的代码是无论如何丢不掉的。一旦第一个版本进了production以后，以后只能incremental的改动。如果要重起炉灶， 光是那些数据就让人受不了，都是轮TB来的，单单做一遍replication都不知道要做上几天，如果数据库的schema都改了，再好的dev也不敢 保证他的migration code能处理所有的老数据、脏数据，再好的test也不敢保证他的test能把所有的老数据脏数据给cover了。所以，越到后来，越没人敢动数据库。 从另一个角度深深的体会到，v1的产品不是那么可以随心所欲做的。v1时候的疏忽或者幼稚，将来是要付出很大代价的。</p>
<p>&nbsp;</p>
<p>看以前人的code是一种特别有趣的感觉，好像是在和以前的一个dev在对话，跨越时空的，有点像下围棋的人打古谱，那是一种跨越千年的心灵和心智 的交流，我跨得少了点，只跨了五年而已。上半年的时候看了一块多线程的代码，是一个后台console application的，把Mutex、AutoResetEvent、ManualResetEvent、WaitHandle运用的非常华丽。看了 那块code以后发现自己对多线程的理解又上了一个台阶。最近在看一段五年前的C++的code，注释相对少一些，不过因为代码写得比较 straightforward，所以看起来不吃力。那些注释大部分都是解释code的，但中间有一个地方有这么一行注释：</p>
<pre>     <p>         <span style="color: #008000;">//</span><span style="color: #008000;"> do I need to close before Open?</span>     </p>
 </pre><p>看的我大笑，看来真的是没有全能的developer，每个dev都有自己精通的东西，都有自己不懂的东西。很少有dev能够通吃managed code、unmanaged code、network、win32和SQL database的。很好的C#的程序员有可能设计出来的SQL database的性能是很差的。巧的是，我看得这两块代码的两个作者都跑去Google了。</p>
<p>&nbsp;</p>
<p>一个online service的系统，做到五年，做v1的dev和test基本上就剩不了几个了。我们组也不例外。现在有很多很老的feature，好好的已经跑了四五 年了没人动过，突然需要re-write，就很吃力。文档是肯定找不到的了，就算能找到，也是不up to date的。最让人挠头的是test automation都没有了。当初的很多test都是manual的，等到SDE/T慢慢多起来可以有人有时间做test automation了，那些最老的feature就已经稳定了，所以也就没人去automate那些manual test cases了。现在要re-write，没有test automation做最后一道防线，不免让人非常心里发毛。但也不得不做，只能硬着头皮上，尽量think through一点，实在不行，只能在production里面打hotfix了。希望不要有太多hotfix。//cross fingers</p>
<p>&nbsp;</p>
<p>说到文档，大家都在喊文档的重要性，说developer要写implementation spec。其实，坦白说，in practice，文档是一种很昂贵的手段，单写一份spec还好，但要保证这份spec一直和code保持一致，那就是件代价很高昂的事情，很得不偿失 的。从我们组现在的开发实践的体会来看，最好的documentation的方式是：<strong>一，把代码写得容易读一些，多写注释；二，把test case维护好，并且尽量做到automated。</strong> 以前曾经看到过这么一种说法：it&rsquo;s the test case that finally shapes the product。非常有道理的。从这点来说，我很同意scrum/xp里面所说的less document is better。</p>
 <!--XN_AntiSpam_Robot 2009-06-16-->