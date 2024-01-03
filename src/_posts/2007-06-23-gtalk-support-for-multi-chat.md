---

# gtalk 支持 multi-chat
2007-06-23 23:49:37


---


// Generated .IDL file (by the OLE/COM Object Viewer)<br />
// <br />
// typelib filename: googletalk.exe<br />
<br />
[<br />
&nbsp; uuid(7B29C130-826A-4070-BA18-EC01E703D244),<br />
&nbsp; version(1.0),<br />
&nbsp; helpstring("Google Talk API 1.0 Type Library"),<br />
&nbsp; custom(DE77BA64-517C-11D1-A2DA-0000F8773CE9, 100663657),<br />
&nbsp; custom(DE77BA63-517C-11D1-A2DA-0000F8773CE9, 1167684000),<br />
&nbsp; custom(DE77BA65-517C-11D1-A2DA-0000F8773CE9, Created by MIDL version 6.00.0361 at Mon Jan 01 12:39:59 2007<br />
)<br />
<br />
]<br />
library GoogleTalkAPILib<br />
{<br />
&nbsp;&nbsp;&nbsp; // TLib :&nbsp;&nbsp;&nbsp;&nbsp; // TLib : OLE Automation : {00020430-0000-0000-C000-000000000046}<br />
&nbsp;&nbsp;&nbsp; importlib("stdole2.tlb");<br />
<br />
&nbsp;&nbsp;&nbsp; // Forward declare all types defined in this typelib<br />
&nbsp;&nbsp;&nbsp; interface ITalkAPI;<br />
&nbsp;&nbsp;&nbsp; interface <span style="font-weight: bold;">IMUCTalkAPI</span>;<br />
&nbsp;&nbsp;&nbsp; interface IChatRoom;<br />
&nbsp;&nbsp;&nbsp; interface IMUCTalkPlugin;<br />
&nbsp;&nbsp;&nbsp; interface IChatRoomContact;<br />
&nbsp;&nbsp;&nbsp; interface ITalkFriend;<br />
&nbsp;&nbsp;&nbsp; interface ITalkPlugin;<br />
&nbsp;&nbsp;&nbsp; interface ITalkTunnelExp;<br />
<br />
&nbsp;&nbsp;&nbsp; [<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; odl,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uuid(4A1527F6-C11F-4131-82BC-FE891D4E3B70),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; helpstring("ITalkAPI Interface"),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dual,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oleautomation<br />
&nbsp;&nbsp;&nbsp; ]<br />
&nbsp;&nbsp;&nbsp; interface ITalkAPI : IUnknown {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010000)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT RegisterPlugin(<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR plugin_guid, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR plugin_name, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR plugin_description, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR plugin_url, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR capability, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [out, retval] BSTR* token);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010001)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT UnregisterPlugin(BSTR plugin_guid_or_progid);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010002)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT SendMessage(<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR token, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR user_id, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] SAFEARRAY(unsigned char) data);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010003)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT SendTextMessage(<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR token, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR user_id, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR message);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010004)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT GetFriends(<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR token, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [out, retval] SAFEARRAY(VARIANT)* friends);<br />
&nbsp;&nbsp;&nbsp; };<br />
<br />
&nbsp;&nbsp;&nbsp; [<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; odl,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uuid(7A9D1480-C6A1-11DA-95AB-00E08161165F),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; helpstring("IMUCTalkAPI Interface"),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dual,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oleautomation<br />
&nbsp;&nbsp;&nbsp; ]<br />
&nbsp;&nbsp;&nbsp; interface IMUCTalkAPI : ITalkAPI {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60020000)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT OpenChatRoom(<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR room_jid, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR user_nickname, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR user_resource, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR user_app_capability, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR user_app_presence, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [out, retval] IChatRoom** chatroom_interface);<br />
&nbsp;&nbsp;&nbsp; };<br />
<br />
&nbsp;&nbsp;&nbsp; [<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; odl,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uuid(74C992C7-BA13-4E6A-A469-B43AE8FD557A),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; helpstring("IChatRoom Interface"),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dual,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oleautomation<br />
&nbsp;&nbsp;&nbsp; ]<br />
&nbsp;&nbsp;&nbsp; interface IChatRoom : IUnknown {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010000)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT GetContacts([out, retval] SAFEARRAY(VARIANT)* contacts);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010001)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT SetUserNickname([in] BSTR nickname);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010002)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT SetUserPresenceState(<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR capability, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR presence);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010003)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT LeaveRoom();<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010004)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT BroadcastMessage(<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR token, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] SAFEARRAY(unsigned char) data);<br />
&nbsp;&nbsp;&nbsp; };<br />
<br />
&nbsp;&nbsp;&nbsp; [<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; odl,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uuid(4C9DC108-C73F-11DA-95AB-00E08161165F),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; helpstring("IMUCTalkPlugin Interface"),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dual,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oleautomation<br />
&nbsp;&nbsp;&nbsp; ]<br />
&nbsp;&nbsp;&nbsp; interface IMUCTalkPlugin : IUnknown {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010000)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT OnNewContact([in] IChatRoomContact* chatroom_contact);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010001)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT OnDeleteContact([in] IChatRoomContact* chatroom_contact);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010002)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT OnPresenceUpdate([in] IChatRoomContact* chatroom_contact);<br />
&nbsp;&nbsp;&nbsp; };<br />
<br />
&nbsp;&nbsp;&nbsp; [<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; odl,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uuid(2C876D28-FB0C-11DA-9804-B622A1EF5492),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; helpstring("IChatRoomContact Interface"),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dual,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oleautomation<br />
&nbsp;&nbsp;&nbsp; ]<br />
&nbsp;&nbsp;&nbsp; interface IChatRoomContact : IUnknown {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010000)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT GetNickname([out, retval] BSTR* nickname);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010001)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT GetResource([out, retval] BSTR* resource);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010002)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT GetCapability([out, retval] BSTR* capability);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010003)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT GetPresenceState([out, retval] BSTR* presence);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010004)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT GetRoomJid([out, retval] BSTR* room_jid);<br />
&nbsp;&nbsp;&nbsp; };<br />
<br />
&nbsp;&nbsp;&nbsp; [<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; odl,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uuid(38FDD2C4-9164-4EAF-8C74-24D764FF613E),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; helpstring("ITalkFriend Interface"),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dual,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oleautomation<br />
&nbsp;&nbsp;&nbsp; ]<br />
&nbsp;&nbsp;&nbsp; interface ITalkFriend : IUnknown {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010000)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT GetName([out, retval] BSTR* name);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010001)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT GetUserId([out, retval] BSTR* user_id);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010002)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT GetCapabilities([out, retval] SAFEARRAY(BSTR)* capabilities);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010003)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT GetStatus([out, retval] unsigned long* status);<br />
&nbsp;&nbsp;&nbsp; };<br />
<br />
&nbsp;&nbsp;&nbsp; [<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; odl,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uuid(5A9FF74C-53D0-4513-9481-0F61EDEEFFE2),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; helpstring("ITalkPlugin Interface"),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dual,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oleautomation<br />
&nbsp;&nbsp;&nbsp; ]<br />
&nbsp;&nbsp;&nbsp; interface ITalkPlugin : IUnknown {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010000)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT OnReceiveMessage(<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] IUnknown* talk_friend, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] SAFEARRAY(unsigned char) data);<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010001)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT OnDropDataOverFriend(<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] IUnknown* talk_friend, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR token);<br />
&nbsp;&nbsp;&nbsp; };<br />
<br />
&nbsp;&nbsp;&nbsp; [<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; odl,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uuid(65D12388-C5E9-468C-83B9-60AEA2E658DF),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; helpstring("ITalkTunnelExp Interface"),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dual,<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oleautomation<br />
&nbsp;&nbsp;&nbsp; ]<br />
&nbsp;&nbsp;&nbsp; interface ITalkTunnelExp : IUnknown {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [id(0x60010000)]<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HRESULT RelayUrl(<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR token, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR user_id, <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [in] BSTR url);<br />
&nbsp;&nbsp;&nbsp; };<br />
<br />
&nbsp;&nbsp;&nbsp; [<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uuid(0507EEDE-3AE7-49C7-BF37-0EB4A62D8638),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; helpstring("TalkAPI Class")<br />
&nbsp;&nbsp;&nbsp; ]<br />
&nbsp;&nbsp;&nbsp; coclass TalkAPI {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [default] interface IMUCTalkAPI;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; interface ITalkAPI;<br />
&nbsp;&nbsp;&nbsp; };<br />
<br />
&nbsp;&nbsp;&nbsp; [<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uuid(D33F3CED-D7D5-44F1-A9FE-6927DABB1934),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; helpstring("ChatRoom Class")<br />
&nbsp;&nbsp;&nbsp; ]<br />
&nbsp;&nbsp;&nbsp; coclass ChatRoom {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [default] interface IChatRoom;<br />
&nbsp;&nbsp;&nbsp; };<br />
<br />
&nbsp;&nbsp;&nbsp; [<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uuid(33B07FD4-5917-43E1-968D-4C79231836BF),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; helpstring("ChatRoomContact Class")<br />
&nbsp;&nbsp;&nbsp; ]<br />
&nbsp;&nbsp;&nbsp; coclass ChatRoomContact {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [default] interface IChatRoomContact;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; interface ITalkTunnelExp;<br />
&nbsp;&nbsp;&nbsp; };<br />
<br />
&nbsp;&nbsp;&nbsp; [<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uuid(A8F086C3-2497-4229-82FE-586F2D326F95),<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; helpstring("TalkFriend Class")<br />
&nbsp;&nbsp;&nbsp; ]<br />
&nbsp;&nbsp;&nbsp; coclass TalkFriend {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [default] interface ITalkFriend;<br />
&nbsp;&nbsp;&nbsp; };<br />
};<br />
<br />
