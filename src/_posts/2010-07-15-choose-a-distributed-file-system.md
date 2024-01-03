---

# Choose a Distributed File System
2010-07-15 14:42


---


This is how I choose a DFS:<br />
<br />
1 Fault Tolerance<br />
2 No SPOF<br />
3 Data Node add/remove easy<br />
4 <span id="goog_1765811814"></span><span id="goog_1765811815"></span>Application develop easy<br />
5 POSIX semantics <span></span>file system interface<br />
6 Monitor and tools ...<br />
<br />
There is a full list In <a href="http://en.wikipedia.org/wiki/List_of_file_systems#Distributed_fault-tolerant_file_systems">wikipedia</a>.<br />
For situation 1, Disk, file, machine, network failure should be consider.<br />
No SPOF and HA is most important for a&nbsp; robust system.<br />
<br />
At last I choose <a href="http://en.wikipedia.org/wiki/Moose_File_System">Moose File System</a>, it's much like <a href="http://labs.google.com/papers/gfs.html">GFS</a> and it is great. Thanks to them.