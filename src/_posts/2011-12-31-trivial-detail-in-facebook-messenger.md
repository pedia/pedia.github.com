---

# trivial detail in facebook messenger
2011-12-31 11:23


---


I download [facebook messenger](https://www.facebook.com/help/messenger-for-windows) from [here](https://fbcdn_dragon-a.akamaihd.net/cfs-ak-ash4/84995/940/FacebookMessengerSetup.exe). After install I found something interest.

First it's a C++ managed CLR program. I [think](http://stackoverflow.com/questions/7457371/why-is-winrt-unmanaged) running on Win8 is their main purpose.

Then I noticed it use a several open source library almost all from Google.

-  omaha: Google open source for [auto update](http://code.google.com/p/omaha), a complicate weapon.
-  breakpad: [crash report and dump analytics tools from Google](http://code.google.com/p/google-breakpad/), I really love it.
-  gtest: [Google unit test library](http://code.google.com/p/googletest). Unit test is rarely seen in windows applications, I believe It's high quality
-  gecko: core of firefox from [mozilla.org](http://mozilla.org/), It's a wise choice.

about certification signing:

- FacebookMessenger.exe not signed.
- FacebookUpdate.exe signed.
- FacebookCrashHandler.exe signed.

Sadly, I never saw the interface, because it(verion 2.0.4373.0) keep quit abnormally on my winxp.
![facebook main window preview](/pic/facebook-messenger-for-windows-done-716270.png)

Whatever, it's absolutely above average in Windows application technology.