---

# Nexus Update 4.0.4(IMM761)
2012-05-11 10:00

 
---

我没有参考什么攻略，直接看[Google Nexus Images的文档](https://developers.google.com/android/nexus/images)，
然后下载 [yakju](https://developers.google.com/android/nexus/images#yakju)，

然后解开压缩包
```
tar zxf yakju-imm76i-factory-8001e72f.tgz
```

然后执行
```
cd yakju-imm76i
sudo ./flash-base.sh
```

最后
```
yakju-imm76i $ sudo fastboot -w update image-yakju-imm76i.zip
archive does not contain 'boot.sig'
archive does not contain 'recovery.sig'
archive does not contain 'system.sig'
--------------------------------------------
Bootloader Version...: PRIMELA03
Baseband Version.....: I9250XXLA2
Serial Number........: 0--------------2
--------------------------------------------
checking product... OKAY
checking version-bootloader... OKAY
checking version-baseband... OKAY
sending 'boot' (4148 KB)... OKAY
writing 'boot'... OKAY
sending 'recovery' (4478 KB)... OKAY
writing 'recovery'... OKAY
sending 'system' (316111 KB)... OKAY
writing 'system'... OKAY
erasing 'userdata'... OKAY
erasing 'cache'... OKAY
```

系统重新启动，成功   
<img src="/pic/nexus.png" width="360" />
