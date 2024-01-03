---

# nc and tar play nice then
2011-11-08 09:20


---

Convenience transfer file with nc, just like:<br />
receiver:
``` bash
 nc -l -p 2000 > filename
```

sender:
``` bash
 cat filename | nc 192.168.1.1 2000
```

It is working fine for single file.

Tar archiving also convenience too. <br />
pack:
``` bash 
 tar c .
```

extract:
``` bash 
 tar x
```

Combine them together, seem not work fine.<br />
receiver
``` bash 
 nc -l -p 2000 | tar x
```

sender
``` bash
 tar c .  | nc 192.168.1.1 2000
```

I think the reason is tar result is block by block, and there is 
nothing mean EOF, so tar x never know when to close the pipe.

I also found #1 use cpio, tar - even not work fine.
I tried rsync -e, either not work.

A geek nearby provide a solution: tar -ix<br />
in man tar:
``` man
-i, --ignore-zeros
             ignore blocks of zeros in archive (normally mean EOF)
```

It work perfect.<br />
receiver
``` bash 
 nc -l -p 2000 | tar -ix
```

sender
``` bash
 tar c .  | nc 192.168.1.1 2000
```

TODO: read source code of tar, find out what zero blocks really mean.

[1] http://ask.metafilter.com/133905/Why-did-tar-and-nc-not-play-nice
