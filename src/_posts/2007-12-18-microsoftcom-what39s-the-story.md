---

# Microsoft.com: What&#39;s the story?
2007-12-18 23:00:52


---


<h5 class="posthead pageTitle"><b style="color: black; background-color: rgb(255, 255, 102);">Microsoft</b>.<b style="color: black; background-color: rgb(255, 255, 102);">com</b>: <b style="color: black; background-color: rgb(160, 255, 255);">What's</b> the <b style="color: black; background-color: rgb(153, 255, 153);">story</b>? </h5><p><font face="Segoe UI" size="2">If you've ever wondered how </font><a target=_blank href="http://www.microsoft.com/"><font face="Segoe UI" size="2"><b style="color: black; background-color: rgb(255, 255, 102);">microsoft</b>.<b style="color: black; background-color: rgb(255, 255, 102);">com</b></font></a><font face="Segoe UI" size="2"> uses our technology then read on.&nbsp; I recently came across some good information from the folks over at the </font><a target=_blank href="http://blogs.technet.com/mscom/default.aspx"><font face="Segoe UI" size="2">Operations team</font></a><font face="Segoe UI" size="2"> at <b style="color: black; background-color: rgb(255, 255, 102);">Microsoft</b>.<b style="color: black; background-color: rgb(255, 255, 102);">com</b>.&nbsp; The thread basically talks about how we use IIS, Firewalls and Windows Server 2008.&nbsp; I think as we come up to launch next year it's a really good and quick insight into what they do and how they do it.&nbsp; So enjoy the reading and let me know what you think..Pretend I've asked about how they protect our sites...</font></p>
<p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><font face="Segoe UI"><span style="background: yellow none repeat scroll 0%; font-size: 10pt; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; color: black;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US">At this point we still don't use firewalls for MS.COM sites and don't have any plans on the books to put them in place.</span><span style="font-size: 10pt; color: black;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US">&nbsp; Here is the short answer as to why:</span></font></p>
<ol><li><div class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: 10pt; color: black;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI">1 We don't handle HBI data so we don't have the need for external logging capabilities.&nbsp; If we did handle HBI, we'd have firewalls.</font></span></div></li><li><div class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: 10pt; color: black;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI">2 We have <b>~650GB/day of IIS logs</b> just for <font color="#000000"><a target=_blank href="http://www.microsoft.com/" target="_blank">www.<b style="color: black; background-color: rgb(255, 255, 102);">microsoft</b>.<b style="color: black; background-color: rgb(255, 255, 102);">com</b></a></font> and </font><a target=_blank href="http://update.microsoft.com/"><font face="Segoe UI">update.<b style="color: black; background-color: rgb(255, 255, 102);">microsoft</b>.<b style="color: black; background-color: rgb(255, 255, 102);">com</b></font></a><font face="Segoe UI"> (not including the <strong>6GB/hour</strong> for each download server).&nbsp; Just IIS logs are a challenge without trying to parse another <strong>~650GB</strong> of firewall logs.&nbsp; </font></span></div></li><li><div class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: 10pt; color: black;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"></span><span style="font-size: 10pt; color: black;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI">3 5+ years ago, there wasn't a firewall solution that would scale to our needs and this forced us to focus on network, host, and application security.&nbsp; Based on the success of that work, we've not looked further at firewalls even though there are solutions that I believe (haven't tested) would handled the traffic load (our non-download based web traffic alone can be in the <strong>8-9 Gbps</strong> range and ~30 total for internal hosted traffic).</font></span></div></li><li><div class="MsoNormal" style="margin: 0cm 0cm 0pt;">4 <span style="font-size: 10pt; color: black;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"></span><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI">We also used NLB for load balancing exclusively up until July 2006 and the micro segmentation of networks required by that solution made firewalls an expensive and very complex solution.&nbsp; Again, especially at the scalability that used to be available.</font></span></div></li><li><div class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"></span><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI">5 Application security is critical since a firewall is likely going to allow traffic on the correct port and protocol through to the web servers so IIS/ASP.NET/Applications must deal with these requests gracefully.&nbsp; I realize there are other options/features of firewalls/IPS that provide other options.</font></span></div></li></ol><p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI"><br />
In terms of how we protect the sites, we utilize (starting at the outside edge of the network and working in):<br />
<br />
 </font></span></p>
<p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"></span></p>
<ol><li><div class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI">1 Cisco Guards for DoS detection and automated response</font></span></div></li><li><div class="MsoNormal" style="margin: 0cm 0cm 0pt;">2 <span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"></span><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI">Router ACLs are in place to block unnecessary ports</font></span></div></li><li><div class="MsoNormal" style="margin: 0cm 0cm 0pt;">3 <span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"></span><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI">NetScalers for <font color="#0000ff"><a target=_blank href="http://www.microsoft.com/" target="_blank">www.<b style="color: black; background-color: rgb(255, 255, 102);">microsoft</b>.<b style="color: black; background-color: rgb(255, 255, 102);">com</b></a></font> and MSDN/TechNet (NLB still for update.<b style="color: black; background-color: rgb(255, 255, 102);">microsoft</b>.<b style="color: black; background-color: rgb(255, 255, 102);">com</b>) and those also provide DoS protection inherently as well as providing a few other knobs we can turn when required.</font></span></div></li><li><div class="MsoNormal" style="margin: 0cm 0cm 0pt;">4 <span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI">Windows and IIS...<strong>rock solid and secure!</strong>&nbsp; </font><a target=_blank href="http://www.microsoft.com/" target="_blank"><font color="#0000ff" face="Segoe UI">www.<b style="color: black; background-color: rgb(255, 255, 102);">microsoft</b>.<b style="color: black; background-color: rgb(255, 255, 102);">com</b></font></a><font face="Segoe UI"> is on Windows Server 2008/IIS7, MSDN/TechNet are migrating to Win2k8/IIS7, and update.<b style="color: black; background-color: rgb(255, 255, 102);">microsoft</b>.<b style="color: black; background-color: rgb(255, 255, 102);">com</b> is on Windows Server 2003/IIS6.&nbsp; We do all the normal shut-off-unused-services practices that line up with MS published security guidance and we utilize GFS images to ensure standardized builds of systems.</font></span></div></li><li><div class="MsoNormal" style="margin: 0cm 0cm 0pt;">5 <span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"></span><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI">Automated Netmon/Perfmon captures for attack analysis on NLB systems when SYN floods occur (event trigger).&nbsp; We've not yet done this for NetScaler systems, but we are noodling on how in our copious spare time :).</font></span></div></li><li><div class="MsoNormal" style="margin: 0cm 0cm 0pt;">6 <span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"></span><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI">We do run AV on our servers when we can.&nbsp; At times product adoption means we don't install it, but we do normally run AV.</font></span></div></li><li><div class="MsoNormal" style="margin: 0cm 0cm 0pt;">7 <span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"></span><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI">Application security as mentioned.&nbsp; ACE is very good resource for this aspect.&nbsp; ACE is an internal team that does threat modelling for applications.</font></span></div></li></ol><p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI"><br />
So there you have it.&nbsp; I think this is a good insight into how we run our own internet properties today.&nbsp; What do you think?&nbsp; Have you got any feedback for the boys over at our MSCOM Operations team?</font></span></p>
<p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"></span></p>
<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:03ecc2a4-e585-46f6-97b0-b5e6a7aab6c0" style="margin: 0px; padding: 0px; display: inline;">Technorati Tags: <a target=_blank href="http://technorati.com/tags/IIS" rel="tag">IIS</a>,<a target=_blank href="http://technorati.com/tags/Windows%20Server%202008" rel="tag">Windows Server 2008</a></div><p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"></span></p>
<p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span style="font-size: 10pt;" tahoma?,?sans-serif?;="" mso-ansi-language:="" en-us?="" lang="EN-US"><font face="Segoe UI">Cheers, Jeffa</font></span></p>