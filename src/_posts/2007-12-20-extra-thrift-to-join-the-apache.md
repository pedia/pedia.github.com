---

# 号外：thrift要加入Apache了
2007-12-20 10:24:54


---


<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">下面是facebook的人讨论的邮件：<br />
<br />
We’re consideringmoving Thrift into the Apache Incubator, which is basically the entrypoint for Apache software projects:</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;"><a target=_blank href="http://incubator.apache.org/" target="_blank">http://incubator.apache.org/</a></span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">&nbsp;</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">There are anumber of reasonsto do this, but the main drivingfactors are:</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">&nbsp;</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">1/ Clear up anygovernanceconcerns in thecommunity around Facebook being thesole ownerof Thrift</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">2/ Enable tighter integrationwith other Apache projects(i.e. HBase/Hadoopcannot really use Thrift if it’s outsideof Apache)</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">3/ Open access to thetrunk for outside committers, etc.</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">&nbsp;</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">Some of the potentialconcerns are:</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">&nbsp;</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">1/ Overhead incurredby Apache processes, might slow down developmentspeedor ability to make tricky changes</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">2/ Risk of dilution of somecore Thrift values:</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">&nbsp; a/ staying super-lightweight, avoiding feature creep</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">&nbsp; b/ mindfully choosing whento err on theside of dumb but <b><span style="font-weight: bold;">faster </span></b>staticconstructs over oh-so-elegant but<b><span style="font-weight: bold;">slower</span></b>dynamic constructs</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">&nbsp;</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">We could make these lists much longer,but I think this is a sufficientsummary.</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">&nbsp;</span></font></p>
<p><font face="Arial" size="2"><span style="font-size: 10pt; font-family: Arial;">It looks to us likethe potentialbenefitsoutweigh theconcerns here, but we’dlike to heareveryone’s opinions on this, so let us know what you think – Reply-to-All is definitely encouraged.</span></font></p>
