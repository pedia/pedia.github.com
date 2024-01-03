---

# 能知道究竟是那个进程使用了swap吗？
2011-02-15 12:40:40


---


<p>昨天有同学问了这个问题<br />
我查了一下：<br />
top 显示关于内存的信息<br />
Mem:&nbsp;&nbsp; 1984888k total,&nbsp;&nbsp; 867772k used,&nbsp; 1117116k free,&nbsp;&nbsp;&nbsp; 88520k buffers<br />
Swap:&nbsp; 7201788k total,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0k used,&nbsp; 7201788k free,&nbsp;&nbsp; 295756k cached<br />
     <br />
其中 swap 信息来自于 /proc/meminfo<br />
SwapTotal:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7201788 kB<br />
SwapFree:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7201788 kB<br />
     <br />
是 kernel 内页使用情况的真实反映：<br />
mm/swapfile.c:1710: val-&gt;totalswap = total_swap_pages + nr_to_be_unused;<br />
     <br />
top 貌似也能显示每个进程的 SWAP 信息：<br />
其值来自（402为进城id）：<br />
/proc/402/task/402/stat or /proc/402/statm<br />
数值分别是:<br />
size, resident, share, trs, lrs, drs, dt<br />
     <br />
     <strong>其值不可能是真实的swap信息</strong>，计算方式是<br />
case P_SWP:<br />
&nbsp; MKCOL(scale_num(PAGES_TO_KB(p-&gt;size - p-&gt;resident), w, s));<br />
&nbsp; break;<br />
     <br />
     <span style="color: rgb(128,128,128);">我想如果内核的mm模块不报告page的进程信息，那么压根就没有地方能准确得到&ldquo;那个进程使用了swap&rdquo;信息，后来在 htop 的faq 里找到了佐证： http://htop.sourceforge.net/index.php?page=faq</span></p>
<p>[update]<br />
不知为何，我机器上的代码居然是2006年的，那时还没有以下方法呢</p>
<p>2008年在 /proc/pid/smaps 添加了 Swap 信息(account swap entries)<br />
最早的实现方法是遍历了所有的page, 如果 is_swap_pte, 就记录为 swap<br />
     <br />
还有一个更精确的计算是/proc/pid/pagemap，但是是二进制的</p>
<p>&nbsp;* /proc/pid/pagemap - an array mapping virtual pages to pfns<br />
&nbsp;*<br />
&nbsp;* For each page in the address space, this file contains one 64-bit entry<br />
&nbsp;* consisting of the following:<br />
&nbsp;*<br />
&nbsp;* Bits 0-55&nbsp; page frame number (PFN) if present<br />
&nbsp;* Bits 0-4&nbsp;&nbsp; swap type if swapped<br />
&nbsp;* Bits 5-55&nbsp; swap offset if swapped<br />
&nbsp;* Bits 55-60 page shift (page size = 1&lt;&lt;page shift)<br />
&nbsp;* Bit&nbsp; 61&nbsp;&nbsp;&nbsp; reserved for future use<br />
&nbsp;* Bit&nbsp; 62&nbsp;&nbsp;&nbsp; page swapped<br />
&nbsp;* Bit&nbsp; 63&nbsp;&nbsp;&nbsp; page present</p>
