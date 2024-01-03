---

# The story behind Google Chrome
2008-09-04 13:14:40


---


<h2 class="entry-title">Google 05年已经开始了Chrome的开发<br />
</h2><h2 class="entry-title"><br />
</h2><h2 class="entry-title"><a target=_blank class="entry-title-link" target="_blank" href="http://www.niallkennedy.com/blog/2008/09/google-chrome.html">The story behind Google Chrome<img src="http://www.google.com/reader/ui/2412528845-go-to.gif" class="entry-title-go-to" alt="" width="18" height="18"></a></h2><div class="entry-author"><span class="entry-source-title-parent">from <a target=_blank href="http://www.google.com/reader/view/feed/http%3A%2F%2Fwww.niallkennedy.com%2Fblog%2Findex.atom" class="entry-source-title" target="_blank">Niall Kennedy's Weblog</a></span> </div><div class="entry-body"><div><div class="item-body"><div><div style="text-align: center;"><a target=_blank target="_blank" href="http://flickr.com/photos/niallkennedy/2822210793/"><img alt="Ben Goodger and Google Chrome" src="http://farm4.static.flickr.com/3017/2822210793_7270a7d96b.jpg" width="430" height="238"></a></div><p>Google released its second web browser yesterday afternoon, addingadditional headroom for web applications stretching the limits of whatit's possible to accomplish within a web browser. The <a target=_blank target="_blank" href="http://www.google.com/chrome">Google Chrome</a>team assembled domain experts in various fields over the past sixyears, both through direct hires and acquisitions, to create a newbrowser and its critical components from scratch. GMail and Google Mapspushed the Web to its limits, taking advantage of browser technologiesinvented in Redmond but left dormant for far too long. Contributing toFirefox's core, writing browser extensions, and championing <abbr title="Hypertext Markup Language">HTML</abbr>could only take the $150 billion company so far: they needed to own thefull browser to push their Web efforts forward at full speed.</p>
<ol><li><a target=_blank target="_blank" href="http://www.niallkennedy.com/blog/#frustrations">Growing Frustrations</a></li><li><a target=_blank target="_blank" href="http://www.niallkennedy.com/blog/#acquisitions">Acquisition Boost</a></li><li><a target=_blank target="_blank" href="http://www.niallkennedy.com/blog/#scratch">A New Browser from Scratch</a></li><li><a target=_blank target="_blank" href="http://www.niallkennedy.com/blog/#v8">Rev your  Engines</a></li><li><a target=_blank target="_blank" href="http://www.niallkennedy.com/blog/#team">Meet the Team</a></li><li><a target=_blank target="_blank" href="http://www.niallkennedy.com/blog/#chrome-summary">Summary</a></li></ol><h3>Growing Frustrations</h3><p>Brian Rakowski joined Google in July 2002 as the company's firstassociate product manager. His first assignment? Launch GMail withfeatures and responsiveness to rival desktop mail clients. Gmail tappedinto relatively dormant browser features such as XMLHttpRequest,sockets, prefetch, and more to create a web applications stretching thelimits of what was possible inside web browsers of 2004. Today's Gmailcontinues to run into a browser's limits, setting <a target=_blank target="_blank" href="http://gmailblog.blogspot.com/2007/10/code-changes-to-prepare-gmail-for.html" title="Gmail 2.0 browsers">minimum requirements of Internet Explorer 7+ and Firefox 2+</a>. Google web <abbr title="applications">apps</abbr>teams such as Maps and Mail continually bump their heads against thelatest capabilities of web browsers and in some cases invent their ownruntimes.</p>
<p><a target=_blank target="_blank" href="http://ian.hixie.ch/">Ian Hickson</a> firstlearned the inner workings of web browsers while an intern at Netscape.After working on Opera for a few years and creating tests for FirefoxIan joined Google to continue his work on new browser features. <a target=_blank target="_blank" href="http://www.w3.org/html/wg/html5/">HTML5</a> and <a target=_blank target="_blank" href="http://www.acidtests.org/">browser compliance "acid" tests</a> are significant attempts by Ian and others to redefine Web browsers through <abbr title="specifications">specs</abbr>,test, and implementations but until now Google could only offerdevelopment help and browser extensions such as Gears to acceleratebrowser capabilities.</p>
<p>Google extended what it could not immediately add to the browser core. <a target=_blank target="_blank" href="http://gears.google.com/">Gears</a> for new application functionality on multiple browsers. <a target=_blank target="_blank" href="http://www.google.com/tools/firefox/browsersync/">Browser Sync</a> to synchronize browser settings and data across multiple computers. <a target=_blank target="_blank" href="http://www.google.com/tools/firefox/safebrowsing/">Safe Browsing</a> to create more web trust. Teams from each of these extensions are now working on Google Chrome.</p>
<h3>Acquisition Boost</h3><p>Google released its first official Web browser on August 18, 2008 with <a target=_blank target="_blank" href="http://android-developers.blogspot.com/2008/08/announcing-beta-release-of-android-sdk.html">the beta release of the Android mobile operating system</a>.Google acquired Android in August 2005 to establish a foot-hold on thefastest growing computer (and Web) market: mobile handsets. Androidhighlights Google's web properties through its <a target=_blank target="_blank" href="http://webkit.org/">WebKit</a>-based browser and dependent applications. <a target=_blank target="_blank" href="http://www.financialpost.com/story.html?id=c4f6f084-d72f-43ea-8a82-affe38df3830&amp;k=58579">Google acquired Ottawa-based Reqwireless</a>and its mobile web browser in the summer of 2005 to team up with theAndroid team on its web interface. Web views are an integral part ofAndroid and Google Chrome shares much of Android's code, including itsgraphics engine.</p>
<p>Google Chrome and Android both take advantage of the Skia vectorgraphics library developed by a small company in North Carolina <a target=_blank target="_blank" href="http://localtechwire.com/business/local_tech_wire/news/story/1126258/" title="Google Skia acquisition">Google acquired in 2005</a>. The Skia team formerly worked on Openwave's popular mobile browser's graphics engine. <a target=_blank target="_blank" href="http://src.chromium.org/viewvc/chrome/trunk/src/skia/">Google Chrome browser includes Skia</a> graphics engine ports for Windows, Mac, and Linux.</p>
<p>Google acquired application security company <a target=_blank target="_blank" href="http://www.greenborder.com/">GreenBorder</a>in May 2007. GreenBorder technology automatically sandboxes web codeand network traffic by creating a bridge between applications. TheGreenBorder technology isolated Internet Explorer or Firefox instancesinto a "sandbox" inside virtual machine instances. These sandboxes formthe code isolation layers of Google Chrome, protecting other tabs andthe parent operating system from the code executing on each web page.</p>
<h3>A New Browser from Scratch</h3><p>Ben Goodger, Google Chrome's <abbr title="technology">tech</abbr> lead, is best known for assembling the <a target=_blank target="_blank" href="http://www.mozilla.com/firefox/">Firefox web browser</a> out of <a target=_blank target="_blank" href="http://www.seamonkey-project.org/">Mozilla's SeaMonkey application suite</a>. <a target=_blank target="_blank" href="http://bengoodger.com/work-resources/secretprojects/manticore/">Manticore</a>, <a target=_blank target="_blank" href="http://www.caminobrowser.org/">Camino</a>, and later Firefox were all <a target=_blank target="_blank" href="http://weblogs.mozillazine.org/ben/archives/009698.html">attempts in 2001 to rethink the Web browser for the modern age</a>.Browsing took center stage away from a communications suite, userinterfaces reimagined for Web efficiency, and (some) legacy crufttossed to the side. Google hired Ben in 2005 to strengthen its ownbrowser contributions and eventually fully rearchitect a web browserfor the modern Web.</p>
<p>Google hired top Firefox developers in 2005 and 2006 such as DarinFisher, Pam Greene, and Brian Ryner. In Spring 2006 the team began workon a new browser prototype built on top of WebKit designed forbroadband-connected, always-on, web applications such as Gmail orGoogle Maps. Could the browser experts give web apps some breathingroom?</p>
<p>Modern computers feature multi-core multi-gigahertz <acronym title="Central Processing Unit">CPU</acronym>s,gigabytes of memory, megabits of bandwidth, and bulky hard drives. Ourweb browsers should separate browser tabs into their own processes,multi-thread all communications with the operating system, boost cachesizes, and not be afraid to command more bandwidth when available.Internet Explorer 8, Firefox 3.1, and Apple Safari are taking freshapproaches to web browsers for modern machines but Google Chrome hasthe advantage of a fresh start to achieve some features not currentlypossible in other browser architectures.</p>
<p>Features such as tab-isolation and task monitoring are difficulttasks to add inside an existing browser architecture of sharedrun-times and window models (<a target=_blank target="_blank" href="http://ejohn.org/blog/google-chrome-process-manager/">as John Resig mentioned</a>). Internet Explorer 8's Loosely Coupled <acronym title="Internet Explorer">IE</acronym> partially abstracts browser tab instances and the industry is generally headed in this direction.</p>
<p>Web application-specific resource monitoring should motivate morewebsites to reduce their browser bloat now that they've beenidentified. Individual users can also compare web application resourceusage directly with their desktop counterparts.</p>
<h3>Rev your  Engines</h3><p>Lars Bak and his team in Århus, Denmark have spent many yearswriting virtual machines: the run-times that translate programming codeinto machine code. Lars wrote Sun's Java <acronym title="Virtual Machine">VM</acronym>, HotSpot, and later slimmed down the <acronym>VM</acronym> for <abbr title="Java 2 Micro Edition">J2ME</abbr> (<acronym title="Connected Limited Device Configuration">CLDC</acronym> <acronym title="HotSpot Implementation">HI</acronym> <a target=_blank target="_blank" href="http://java.sun.com/products/cldc/wp/ProjectMontyWhitePaper.pdf" title="Sun CLDC HI project Monty">project Monty</a>).A few years ago Lars and his team in Denmark began work on a newinterpreted  engine optimized for x86 and ARM architectures.</p>
<p><a target=_blank target="_blank" href="http://code.google.com/apis/v8/design.html">The V8 engine</a>is specifically tuned for recursive  tasks, optimizingcommonly used components of your application. V8 is multi-threaded,opening up new parallel processing on multiple computing cores. V8guesses how you might use your  code, and backtracks over anyfaulty assumptions. It's just one of the new engines we'll see insideour web browsers by the end of 2008.</p>
<p>Google Chrome could have used the same  interpreter as its WebKit rendering engine (<a target=_blank target="_blank" href="http://webkit.org/projects//">JavaScriptCore</a>, <a target=_blank target="_blank" href="http://webkit.org/blog/189/announcing-squirrelfish/">SquirrelFish</a>) but the team had an opportunity, and the funding, to rewrite an interpreter from scratch for desktop and mobile runtimes.</p>
<p>The V8 engine enables new feature sets for Google's web applicationssuch as Gmail and Google Maps. Web application developers avoid addingfeatures that visibly slow down browsers or cause processing pauses inyour application experience. New speed in new areas adds functionalityto existing <abbr>apps</abbr>. Google programmers should create moreefficient code, tested against multiple interpreters, and optimized formodern computers as a result of V8. Even if Google Chrome gains nosignificant browser market share I still expect it will be the bestsingle-site browser for Google web applications.</p>
<p>Google Chrome adds additional  functionality through <a target=_blank target="_blank" href="http://gears.google.com/" title="Gears project">Gears</a>.Gears is bundled with every Chrome install, adding new features to theweb browser faster than previous plugins. The Gears libraries includesupport for new local cache structures, local databases, location data,background tasks, and file handling. Chrome boosts the available Gearsfootprint for web developers, including Google's own <abbr>apps</abbr>such as Google Reader and Google Docs (and my blog). The current Gearscode included in Chrome replicates V8 and sqlite code already presentin the browser, a bolt-on that will hopefully be integrated in the nearfuture.</p>
<p>Chrome, V8, and Gears will be a new testing ground for Google's <abbr>HTML</abbr>5 efforts, winning a new seat at the table as an implementor with upstream standards groups such as <abbr title="World Wide Web Consortium">W3C</abbr>.</p>
<h3>Meet the Team</h3><div style="text-align: center;"><a target=_blank target="_blank" href="http://flickr.com/photos/niallkennedy/2823089966/"><img alt="Google Chrome team leads" src="http://farm4.static.flickr.com/3067/2823089966_94be776a92.jpg" width="430" height="156"></a></div><p>I am tracking at least 20 people involved in the Google Chrome project across Google. I'm sure <a target=_blank target="_blank" href="http://code.google.com/chromium/">Chromium</a> commit logs will reveal even more, but below is a quick summary of Chrome staff.</p>
<dl><dt><span>Brian Rakowski</span>, <span>Lead Product Manager</span></dt><dd>Brian was Google's first associate product manager in 2002, assigned to Gmail. He later worked on the <a target=_blank target="_blank" href="http://www.google.com/tools/firefox/browsersync/">Google Browser Sync</a> Firefox plugin.</dd><dt><span>Ben Goodger</span>, <span>Software Engineer</span></dt><dd>Ben is the former Firefox 1.0 project lead. He also authored the Firefox extensions system. He joined Google as 2005.</dd><dt><span>Mike Pinkerton</span>, <span>Technical Lead</span></dt><dd>Mike is one of the Google team members responsible for bringingChrome to the Mac. Mike worked at Netscape before co-founding theCamino project. He formerly worked at Apple computer on the WebKitteam. Mike joined Google in September 2005 and continues to lead Caminodevelopment.</dd><dt><span>Darin Fisher</span>, <span>Software Engineer</span></dt><dd>Darin was a frequent contributor to the Firefox codebase. He specialized in network libraries, cookies and permissions, and the <a target=_blank target="_blank" href="http://www.mozilla.org/projects/nspr/">Netscape Portable Runtime</a>. Darin joined Google in 2005.</dd><dt><span>Lars Bak</span>, <span>Software Engineer</span>, <span>V8</span></dt><dd>Lars was the core developer on Java HotSpot <acronym>VM</acronym> and Monty <acronym>VM</acronym> in <abbr>J2ME</abbr>for Sun. He co-founded object-oriented VM companies for embeddeddevices before joining Google. Lars worked on V8 from a farm in Århus,Denmark before moving the team to university offices.</dd><dt><span>Kasper Lund</span>, <span>Software Engineer</span>, <span>V8</span></dt><dd>Kasper shares a long history with Lars Bak working on virtual machines.</dd><dt><span>Brian Ryner</span>, <span>Software Engineer</span></dt><dd>Brian is a former contributor to Firefox where he added mousewheelsupport, tweaked the Gecko rendering engine core, password management,and Linux installers.</dd><dt><span>Pam Greene</span>, <span>Software Engineer</span></dt><dd>Pam is a long time Firefox contributor. She added OpenSearch to thebrowser and contributed to full-text search in Places/AwesomeBar.</dd><dt><span>Ian Fette</span>, <span>Product Manager</span></dt><dd>Ian is a former Firefox contributor who worked on anti-phishing, anti-malware, spelling correction, and the <a target=_blank target="_blank" href="http://code.google.com/apis/safebrowsing/">Safe Browsing <acronym>API</acronym></a>.</dd><dt><span>Arnaud Weber</span>, <span>Software Engineer</span></dt><dd>Arnaud is a former Director of Research and Development at Netscapeand Borland before joining Google to work on a "secret project" inSeptember 2006.</dd><dt><span>Brett Wilson</span>, <span>Software Engineer</span></dt><dd>Brett formerly worked on the Google Toolbar. He contributed to Firefox history and bookmarks functionality.</dd><dt><span>Mike Beishe</span>, <span>Software Engineer</span></dt><dt><span>Huan Ren</span>, <span>Software Engineer</span></dt><dd>Huan works on network flow control, negotiating browser interactions with network resources. Huan formerly worked at Microsoft.</dd><dt><span>Erik Kay</span>, <span>Software Engineer</span></dt><dd>Erik formerly worked on the <a target=_blank target="_blank" href="http://avantgo.com/">AvantGo</a> browser, <a target=_blank target="_blank" href="http://qurb.com/products/antispam.php">Qurb anti-spam software</a> for Outlook and Outlook Express.</dd><dt><span>Glen Murphy</span>, <span>Software Engineer</span></dt><dd>Glen specializes in user interface design. He previously worked onuser interface. Firefox extensions. Google Browser Sync, Google BlogSearch</dd><dt><span>Evan Martin</span>, <span>Software Engineer</span></dt><dd>Evan writes automated testing tools for Chrome and the Web.</dd><dt><span>John Abd-El-Malek</span>, <span>Software Engineer</span></dt><dd>John is part of the Windows specialist team at Google bringing Google Desktop, Google Talk , and <a target=_blank target="_blank" href="http://code.google.com/p/google-breakpad/">Breakpad</a> onto Windows XP and Windows Vista.</dd><dt><span>Amanda Walker</span>, <span>Software Engineer</span></dt><dd>Amanda is one of the people responsible for Chrome's upcoming Mac version.</dd><dt><span>Mark Mentovai</span>, <span>Software Engineer</span></dt><dd>Mark was heavily involved in moving Firefox for Mac to its currentIntel-based architecture. He has worked on the Breakpad project andmany levels of Chrome's code.</dd><dt><span>Carlos Pizano</span>, <span>Software Engineer</span></dt><dd>Carlos formerly worked on GreenBorder and continues to work on Chrome sandboxing.</dd><dt><span>Mark Larson</span>, <span>Program Manager</span></dt><dd>Mark is also formerly of GreenBorder and its sandboxing specialties.</dd><dt><span>Aaron Boodman</span>, <span>Software Engineer</span>, <span>Gears</span></dt><dd>Aaron improves user experience with . He's best known for his work on Gmail, <a target=_blank target="_blank" href="https://addons.mozilla.org/firefox/addon/748">Greasemonkey</a>, and <a target=_blank target="_blank" href="http://gears.google.com/">Gears</a>.</dd></dl><h3>Summary</h3><p><img alt="Google Chrome logo" src="http://static.niallkennedy.com/blog/img/google-chrome.png" width="128" height="128">Google's business depends on the speed and availability of Web accessto search, advertising, and applications. Chrome is Google's secondattempt to better control the front-door to its content with fullapplications optimized for its heavy <abbr>apps</abbr>. Google Chromebuilds on top of the work of Android by adding individual applicationsto already popular operating systems. Google has flirted with the ideaof its own web browser for many years but has only recently releasedworking implementations of its own full browser applications.</p>
<p>Android, Chrome, and Gears will continue to grow in unison andextend individual pieces into established operating systems. Google isbuilding a new suite of application extraction layers that should havestrong leverage across Windows, Mac, and Linux to directly control thecompany's destiny on these platforms.</p>
<p>It's an exiting time for new browser technologies as InternetExplorer, Firefox, and WebKit each compete over standardsimplementations and performance. Officially adding Google Chrome to thebrowser space only strengthens Google's position strengthening thefuture web and delivers strong single site browsing experiences fortheir core web applications.</p>
</div></div></div></div>