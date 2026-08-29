game:GetService'Lighting'game:GetService'RunService'local a=game:GetService
'Players'.LocalPlayer game:GetService'UserInputService'local b,c,d,e,f,g,h=game:
GetService'TweenService',game:GetService'TextService',game:GetService'Workspace'
.CurrentCamera,a:GetMouse(),game:GetService'HttpService',game:GetService
'RunService',game:GetService'UserInputService'local i,j=not g:IsStudio()and
table.find({Enum.Platform.IOS,Enum.Platform.Android},h:GetPlatform())~=nil,nil
if game.GameId==5750914919 then j=true end local k,l,m=g.RenderStepped,
protectgui or(syn and syn.protect_gui)or function()end,{Names={'Dark','Darker',
'Amoled','Light','Rose','Arctic'},Dark={Name='Dark',Accent=Color3.fromRGB(96,205
,255),AcrylicMain=Color3.fromRGB(60,60,60),AcrylicBorder=Color3.fromRGB(90,90,90
),AcrylicGradient=ColorSequence.new(Color3.fromRGB(40,40,40),Color3.fromRGB(40,
40,40)),AcrylicNoise=0.9,TitleBarLine=Color3.fromRGB(75,75,75),Tab=Color3.
fromRGB(120,120,120),Element=Color3.fromRGB(120,120,120),ElementBorder=Color3.
fromRGB(35,35,35),InElementBorder=Color3.fromRGB(90,90,90),ElementTransparency=
0.87,ToggleSlider=Color3.fromRGB(120,120,120),ToggleToggled=Color3.fromRGB(42,42
,42),SliderRail=Color3.fromRGB(120,120,120),DropdownFrame=Color3.fromRGB(160,160
,160),DropdownHolder=Color3.fromRGB(45,45,45),DropdownBorder=Color3.fromRGB(35,
35,35),DropdownOption=Color3.fromRGB(120,120,120),Keybind=Color3.fromRGB(120,120
,120),Input=Color3.fromRGB(160,160,160),InputFocused=Color3.fromRGB(10,10,10),
InputIndicator=Color3.fromRGB(150,150,150),Dialog=Color3.fromRGB(45,45,45),
DialogHolder=Color3.fromRGB(35,35,35),DialogHolderLine=Color3.fromRGB(30,30,30),
DialogButton=Color3.fromRGB(45,45,45),DialogButtonBorder=Color3.fromRGB(80,80,80
),DialogBorder=Color3.fromRGB(70,70,70),DialogInput=Color3.fromRGB(55,55,55),
DialogInputLine=Color3.fromRGB(160,160,160),Text=Color3.fromRGB(240,240,240),
SubText=Color3.fromRGB(170,170,170),Hover=Color3.fromRGB(120,120,120),
HoverChange=0.07,TooltipBackground=Color3.fromRGB(32,32,32)},Darker={Name=
'Darker',Accent=Color3.fromRGB(56,109,223),AcrylicMain=Color3.fromRGB(30,30,30),
AcrylicBorder=Color3.fromRGB(60,60,60),AcrylicGradient=ColorSequence.new(Color3.
fromRGB(17,17,17),Color3.fromRGB(18,18,18)),AcrylicNoise=0.94,TitleBarLine=
Color3.fromRGB(65,65,65),Tab=Color3.fromRGB(100,100,100),Element=Color3.fromRGB(
70,70,70),ElementBorder=Color3.fromRGB(25,25,25),InElementBorder=Color3.fromRGB(
55,55,55),ElementTransparency=0.82,DropdownFrame=Color3.fromRGB(120,120,120),
DropdownHolder=Color3.fromRGB(35,35,35),DropdownBorder=Color3.fromRGB(25,25,25),
Dialog=Color3.fromRGB(35,35,35),DialogHolder=Color3.fromRGB(25,25,25),
DialogHolderLine=Color3.fromRGB(20,20,20),DialogButton=Color3.fromRGB(35,35,35),
DialogButtonBorder=Color3.fromRGB(55,55,55),DialogBorder=Color3.fromRGB(50,50,50
),DialogInput=Color3.fromRGB(45,45,45),DialogInputLine=Color3.fromRGB(120,120,
120)},Amoled={Name='Amoled',Accent=Color3.fromRGB(255,255,255),AcrylicMain=
Color3.fromRGB(0,0,0),AcrylicBorder=Color3.fromRGB(20,20,20),AcrylicGradient=
ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0)),AcrylicNoise=1,
TitleBarLine=Color3.fromRGB(25,25,25),Tab=Color3.fromRGB(40,40,40),Element=
Color3.fromRGB(15,15,15),ElementBorder=Color3.fromRGB(0,0,0),InElementBorder=
Color3.fromRGB(40,40,40),ElementTransparency=0.95,ToggleSlider=Color3.fromRGB(40
,40,40),ToggleToggled=Color3.fromRGB(255,255,255),SliderRail=Color3.fromRGB(40,
40,40),DropdownFrame=Color3.fromRGB(20,20,20),DropdownHolder=Color3.fromRGB(0,0,
0),DropdownBorder=Color3.fromRGB(0,0,0),DropdownOption=Color3.fromRGB(40,40,40),
Keybind=Color3.fromRGB(40,40,40),Input=Color3.fromRGB(40,40,40),InputFocused=
Color3.fromRGB(0,0,0),InputIndicator=Color3.fromRGB(60,60,60),
InputIndicatorFocus=Color3.fromRGB(255,255,255),Dialog=Color3.fromRGB(0,0,0),
DialogHolder=Color3.fromRGB(0,0,0),DialogHolderLine=Color3.fromRGB(20,20,20),
DialogButton=Color3.fromRGB(15,15,15),DialogButtonBorder=Color3.fromRGB(30,30,30
),DialogBorder=Color3.fromRGB(27,27,27),DialogInput=Color3.fromRGB(15,15,15),
DialogInputLine=Color3.fromRGB(60,60,60),Text=Color3.fromRGB(255,255,255),
SubText=Color3.fromRGB(170,170,170),Hover=Color3.fromRGB(40,40,40),HoverChange=
0.04},Light={Name='Light',TooltipBackground=Color3.fromRGB(250,250,250),Accent=
Color3.fromRGB(0,103,192),AcrylicMain=Color3.fromRGB(200,200,200),AcrylicBorder=
Color3.fromRGB(120,120,120),AcrylicGradient=ColorSequence.new(Color3.fromRGB(255
,255,255),Color3.fromRGB(255,255,255)),AcrylicNoise=0.96,TitleBarLine=Color3.
fromRGB(160,160,160),Tab=Color3.fromRGB(90,90,90),Element=Color3.fromRGB(255,255
,255),ElementBorder=Color3.fromRGB(180,180,180),InElementBorder=Color3.fromRGB(
150,150,150),ElementTransparency=0.65,ToggleSlider=Color3.fromRGB(40,40,40),
ToggleToggled=Color3.fromRGB(255,255,255),SliderRail=Color3.fromRGB(40,40,40),
DropdownFrame=Color3.fromRGB(200,200,200),DropdownHolder=Color3.fromRGB(240,240,
240),DropdownBorder=Color3.fromRGB(200,200,200),DropdownOption=Color3.fromRGB(
150,150,150),Keybind=Color3.fromRGB(120,120,120),Input=Color3.fromRGB(200,200,
200),InputFocused=Color3.fromRGB(100,100,100),InputIndicator=Color3.fromRGB(80,
80,80),InputIndicatorFocus=Color3.fromRGB(0,103,192),Dialog=Color3.fromRGB(255,
255,255),DialogHolder=Color3.fromRGB(240,240,240),DialogHolderLine=Color3.
fromRGB(228,228,228),DialogButton=Color3.fromRGB(255,255,255),DialogButtonBorder
=Color3.fromRGB(190,190,190),DialogBorder=Color3.fromRGB(140,140,140),
DialogInput=Color3.fromRGB(250,250,250),DialogInputLine=Color3.fromRGB(160,160,
160),Text=Color3.fromRGB(0,0,0),SubText=Color3.fromRGB(40,40,40),Hover=Color3.
fromRGB(50,50,50),HoverChange=0.16},Rose={Name='Rose',Accent=Color3.fromRGB(219,
48,123),AcrylicMain=Color3.fromRGB(35,25,30),AcrylicBorder=Color3.fromRGB(145,35
,75),AcrylicGradient=ColorSequence.new(Color3.fromRGB(65,25,45),Color3.fromRGB(
75,30,50)),AcrylicNoise=0.92,TitleBarLine=Color3.fromRGB(150,65,95),Tab=Color3.
fromRGB(190,85,115),Element=Color3.fromRGB(170,60,90),ElementBorder=Color3.
fromRGB(95,35,55),InElementBorder=Color3.fromRGB(120,50,70),ElementTransparency=
0.87,ToggleSlider=Color3.fromRGB(190,75,105),ToggleToggled=Color3.fromRGB(45,15,
25),SliderRail=Color3.fromRGB(190,75,105),DropdownFrame=Color3.fromRGB(200,95,
125),DropdownHolder=Color3.fromRGB(75,30,45),DropdownBorder=Color3.fromRGB(95,35
,55),DropdownOption=Color3.fromRGB(190,75,105),Keybind=Color3.fromRGB(190,75,105
),Input=Color3.fromRGB(190,75,105),InputFocused=Color3.fromRGB(35,15,20),
InputIndicator=Color3.fromRGB(210,95,125),InputIndicatorFocus=Color3.fromRGB(219
,48,123),Dialog=Color3.fromRGB(75,30,45),DialogHolder=Color3.fromRGB(65,25,40),
DialogHolderLine=Color3.fromRGB(60,20,35),DialogButton=Color3.fromRGB(75,30,45),
DialogButtonBorder=Color3.fromRGB(115,45,65),DialogBorder=Color3.fromRGB(105,40,
60),DialogInput=Color3.fromRGB(85,35,50),DialogInputLine=Color3.fromRGB(200,85,
115),Text=Color3.fromRGB(240,240,240),SubText=Color3.fromRGB(170,170,170),Hover=
Color3.fromRGB(190,75,105),HoverChange=0.04},Arctic={Name='Arctic',Accent=Color3
.fromRGB(64,224,255),AcrylicMain=Color3.fromRGB(10,18,25),AcrylicBorder=Color3.
fromRGB(35,55,70),AcrylicGradient=ColorSequence.new(Color3.fromRGB(15,25,35),
Color3.fromRGB(18,30,40)),AcrylicNoise=0.94,TitleBarLine=Color3.fromRGB(45,70,90
),Tab=Color3.fromRGB(70,110,140),Element=Color3.fromRGB(60,95,120),ElementBorder
=Color3.fromRGB(60,95,120),InElementBorder=Color3.fromRGB(70,110,140),
ElementTransparency=0.88,ToggleSlider=Color3.fromRGB(90,140,180),ToggleToggled=
Color3.fromRGB(15,25,35),SliderRail=Color3.fromRGB(90,140,180),DropdownFrame=
Color3.fromRGB(110,170,220),DropdownHolder=Color3.fromRGB(30,45,60),
DropdownBorder=Color3.fromRGB(60,95,120),DropdownOption=Color3.fromRGB(90,140,
180),Keybind=Color3.fromRGB(90,140,180),Input=Color3.fromRGB(90,140,180),
InputFocused=Color3.fromRGB(10,18,25),InputIndicator=Color3.fromRGB(130,200,255)
,InputIndicatorFocus=Color3.fromRGB(64,224,255),Dialog=Color3.fromRGB(30,45,60),
DialogHolder=Color3.fromRGB(18,30,40),DialogHolderLine=Color3.fromRGB(15,25,35),
DialogButton=Color3.fromRGB(30,45,60),DialogButtonBorder=Color3.fromRGB(45,70,90
),DialogBorder=Color3.fromRGB(40,60,80),DialogInput=Color3.fromRGB(35,55,70),
DialogInputLine=Color3.fromRGB(110,170,220),Text=Color3.fromRGB(240,250,255),
SubText=Color3.fromRGB(180,200,220),Hover=Color3.fromRGB(90,140,180),HoverChange
=0.04}}local n,o={Version='1.2.2',OpenFrames={},Options={},Themes=m.Names,
Windows={},Window=nil,WindowFrame=nil,Unloaded=false,Creator=nil,DialogOpen=
false,UseAcrylic=false,Acrylic=false,Transparency=true,MinimizeKeybind=nil,
MinimizeKey=Enum.KeyCode.LeftControl},(function()local n,o,p,q='en',{'en','vi',
'ru','tr','id'},{en='English',vi='Ti\u{1ebf}ng Vi\u{1ec7}t',ru=
'\u{420}\u{443}\u{441}\u{441}\u{43a}\u{438}\u{439}',tr='T\u{fc}rk\u{e7}e',id=
'Bahasa Indonesia'},{}for r,s in ipairs(o)do q[s]={}end local r,s,t,u,v=n,{},0,{
},{}v.Default=n v.NativeNames=p local function IsSupported(w)if type(w)~=
'string'then return false end for x,y in ipairs(o)do if y==w then return true
end end return false end v.IsSupported=IsSupported local function ResolveIn(w,x)
if type(w)~='table'then return nil end local y=w for z in string.gmatch(x,
'[^%.]+')do if type(y)~='table'then return nil end y=y[z]if y==nil then return
nil end end return y end local function Interpolate(w,x)if x==nil then return w
end return(string.gsub(w,'{([%w_]+)}',function(y)local z=x[y]if z==nil then
return nil end return tostring(z)end))end function v.t(w,x)if type(w)~='string'
or w==''then return''end local y=ResolveIn(q[r],w)if y==nil and r~=n then y=
ResolveIn(q[n],w)end if y==nil then if not u[w]then u[w]=true warn(
'[Fluent] missing localization key: '..w)end return w end if type(y)=='function'
then local z,A=pcall(y,x)if z and type(A)=='string'then return A end return w
end return Interpolate(tostring(y),x)end function v.Get()return r end function v
.GetSupported()return table.clone(o)end function v.GetNativeName(w)return p[w]or
w end function v.Has(w)if type(w)~='string'or w==''then return false end return
ResolveIn(q[r],w)~=nil end local function Fire()for w,x in pairs(table.clone(s))
do pcall(x,r)end end v.Refresh=Fire function v.Set(w)if not IsSupported(w)then
return false end if w==r then return true end r=w Fire()return true end function
v.OnChanged(w)if type(w)~='function'then return function()end end t=t+1 local x=
t s[x]=w return function()s[x]=nil end end local function DeepMerge(w,x)for y,z
in pairs(x)do if type(z)=='table'then if type(w[y])~='table'then w[y]={}end
DeepMerge(w[y],z)else w[y]=z end end end function v.Add(w,x)if not IsSupported(w
)or type(x)~='table'then return false end DeepMerge(q[w],x)if w==r then Fire()
end return true end local w=(type(newproxy)=='function'and newproxy(false))or
'__FluentLocaleTag'function v.tag(x,y)return{[w]=true,Key=tostring(x),Params=y}
end function v.IsTagged(x)return type(x)=='table'and rawget(x,w)==true end
function v.ResolveTag(x)if not v.IsTagged(x)then return nil end return v.t(x.Key
,x.Params)end function v.Text(x)if v.IsTagged(x)then return v.ResolveTag(x)end
return x end function v.Attach(x,y,z)if not v.IsTagged(z)then return function()
end end local A=x and x['Set'..y]if type(A)~='function'then return function()end
end local function Apply()pcall(A,x,v.t(z.Key,z.Params))end Apply()return v.
OnChanged(Apply)end function v.Bind(x,y,z)local A={}for B,C in ipairs{'Title',
'Desc','Placeholder'}do local D=y and y[C]if type(D)=='string'then table.insert(
A,v.Attach(x,C,v.tag(D,z and z[C])))end end return function()for B,C in ipairs(A
)do pcall(C)end table.clear(A)end end return v end)()n.Localization=o o.Add('en'
,{fluent={common={yes='Yes',no='No',done='Done',cancel='Cancel',value='Value'},
close={title='Close',content='Are you sure you want to unload the interface?'},
search={placeholder='Search...'},sidebar={collapse={title='Collapse sidebar',
desc='Shrink the tab strip down to an icon rail'},expand={title='Expand sidebar'
,desc='Show the full tab names again'}}}})o.Add('vi',{fluent={common={yes=
'C\u{f3}',no='Kh\u{f4}ng',done='Xong',cancel='Hu\u{1ef7}',value=
'Gi\u{e1} tr\u{1ecb}'},close={title='\u{110}\u{f3}ng',content=
'B\u{1ea1}n c\u{f3} ch\u{1eaf}c mu\u{1ed1}n \u{111}\u{f3}ng giao di\u{1ec7}n kh\u{f4}ng?'
},search={placeholder='T\u{ec}m ki\u{1ebf}m...'},sidebar={collapse={title=
'Thu g\u{1ecd}n thanh b\u{ea}n',desc=
'Thu d\u{1ea3}i tab l\u{1ea1}i th\u{e0}nh h\u{e0}ng bi\u{1ec3}u t\u{1b0}\u{1ee3}ng'
},expand={title='M\u{1edf} r\u{1ed9}ng thanh b\u{ea}n',desc=
'Hi\u{1ec7}n l\u{1ea1}i t\u{ea}n \u{111}\u{1ea7}y \u{111}\u{1ee7} c\u{1ee7}a c\u{e1}c tab'
}}}})o.Add('ru',{fluent={common={yes='\u{414}\u{430}',no='\u{41d}\u{435}\u{442}'
,done='\u{413}\u{43e}\u{442}\u{43e}\u{432}\u{43e}',cancel=
'\u{41e}\u{442}\u{43c}\u{435}\u{43d}\u{430}',value=
'\u{417}\u{43d}\u{430}\u{447}\u{435}\u{43d}\u{438}\u{435}'},close={title=
'\u{417}\u{430}\u{43a}\u{440}\u{44b}\u{442}\u{44c}',content=
'\u{412}\u{44b} \u{443}\u{432}\u{435}\u{440}\u{435}\u{43d}\u{44b}, \u{447}\u{442}\u{43e} \u{445}\u{43e}\u{442}\u{438}\u{442}\u{435} \u{437}\u{430}\u{43a}\u{440}\u{44b}\u{442}\u{44c} \u{438}\u{43d}\u{442}\u{435}\u{440}\u{444}\u{435}\u{439}\u{441}?'
},search={placeholder='\u{41f}\u{43e}\u{438}\u{441}\u{43a}...'},sidebar={
collapse={title=
'\u{421}\u{432}\u{435}\u{440}\u{43d}\u{443}\u{442}\u{44c} \u{43f}\u{430}\u{43d}\u{435}\u{43b}\u{44c}'
,desc=
'\u{421}\u{436}\u{430}\u{442}\u{44c} \u{43f}\u{43e}\u{43b}\u{43e}\u{441}\u{443} \u{432}\u{43a}\u{43b}\u{430}\u{434}\u{43e}\u{43a} \u{434}\u{43e} \u{437}\u{43d}\u{430}\u{447}\u{43a}\u{43e}\u{432}'
},expand={title=
'\u{420}\u{430}\u{437}\u{432}\u{435}\u{440}\u{43d}\u{443}\u{442}\u{44c} \u{43f}\u{430}\u{43d}\u{435}\u{43b}\u{44c}'
,desc=
'\u{421}\u{43d}\u{43e}\u{432}\u{430} \u{43f}\u{43e}\u{43a}\u{430}\u{437}\u{430}\u{442}\u{44c} \u{43d}\u{430}\u{437}\u{432}\u{430}\u{43d}\u{438}\u{44f} \u{432}\u{43a}\u{43b}\u{430}\u{434}\u{43e}\u{43a}'
}}}})o.Add('tr',{fluent={common={yes='Evet',no='Hay\u{131}r',done='Tamam',cancel
='\u{130}ptal',value='De\u{11f}er'},close={title='Kapat',content=
'Aray\u{fc}z\u{fc} kapatmak istedi\u{11f}inize emin misiniz?'},search={
placeholder='Ara...'},sidebar={collapse={title=
'Kenar \u{e7}ubu\u{11f}unu daralt',desc=
'Sekme \u{15f}eridini simge \u{15f}eridine k\u{fc}\u{e7}\u{fc}lt'},expand={title
='Kenar \u{e7}ubu\u{11f}unu geni\u{15f}let',desc=
'Sekme adlar\u{131}n\u{131} yeniden g\u{f6}ster'}}}})o.Add('id',{fluent={common=
{yes='Ya',no='Tidak',done='Selesai',cancel='Batal',value='Nilai'},close={title=
'Tutup',content='Yakin ingin menutup antarmuka ini?'},search={placeholder=
'Cari...'},sidebar={collapse={title='Ciutkan bilah sisi',desc=
'Perkecil deretan tab menjadi baris ikon'},expand={title='Bentangkan bilah sisi'
,desc='Tampilkan lagi nama tab lengkap'}}}})local function isMotor(p)local q=
tostring(p):match'^Motor%((.+)%)$'if q then return true,q else return false end
end local p={}p.__index=p function p.new(q,r)return setmetatable({signal=q,
connected=true,_handler=r},p)end function p.disconnect(q)if q.connected then q.
connected=false for r,s in pairs(q.signal._connections)do if s==q then table.
remove(q.signal._connections,r)return end end end end local q={}q.__index=q
function q.new()return setmetatable({_connections={},_threads={}},q)end function
q.fire(r,...)for s,t in pairs(r._connections)do t._handler(...)end for s,t in
pairs(r._threads)do coroutine.resume(t,...)end r._threads={}end function q.
connect(r,s)local t=p.new(r,s)table.insert(r._connections,t)return t end
function q.wait(r)table.insert(r._threads,coroutine.running())return coroutine.
yield()end local r={}r.__index=r function r.new(s,t)assert(s,
'Missing argument #1: targetValue')t=t or{}return setmetatable({_targetValue=s,
_velocity=t.velocity or 1},r)end function r.step(s,t,u)local v,w,x=t.value,s.
_velocity,s._targetValue local y=u*w local z=y>=math.abs(x-v)v=v+y*(x>v and 1 or
-1)if z then v=s._targetValue w=0 end return{complete=z,value=v,velocity=w}end
local s={}s.__index=s function s.new(t)return setmetatable({_targetValue=t},s)
end function s.step(t)return{complete=true,value=t._targetValue}end local t,u,v,
w=0.001,0.001,0.0001,{}w.__index=w function w.new(x,y)assert(x,
'Missing argument #1: targetValue')y=y or{}return setmetatable({_targetValue=x,
_frequency=y.frequency or 4,_dampingRatio=y.dampingRatio or 1},w)end function w.
step(x,y,z)local A,B,C,D,E=x._dampingRatio,x._frequency*2*math.pi,x._targetValue
,y.value,y.velocity or 0 local F,G,H,I=D-C,math.exp(-A*B*z),nil,nil if A==1 then
H=(F*(1+B*z)+E*z)*G+C I=(E*(1-B*z)-F*(B*B*z))*G elseif A<1 then local J=math.
sqrt(1-A*A)local K,L,M=math.cos(B*J*z),math.sin(B*J*z),nil if J>v then M=L/J
else local N=z*B M=N+((N*N)*(J*J)*(J*J)/20-J*J)*(N*N*N)/6 end local N if B*J>v
then N=L/(B*J)else local O=B*J N=z+((z*z)*(O*O)*(O*O)/20-O*O)*(z*z*z)/6 end H=(F
*(K+A*M)+E*N)*G+C I=(E*(K-M*A)-F*(M*B))*G else local J=math.sqrt(A*A-1)local K,L
=-B*(A-J),-B*(A+J)local M=(E-F*K)/(2*B*J)local N=F-M local O,P=N*math.exp(K*z),M
*math.exp(L*z)H=O+P+C I=O*K+P*L end local J=math.abs(I)<t and math.abs(H-C)<u
return{complete=J,value=J and C or H,velocity=I}end local x,y=function()end,{}y.
__index=y function y.new()return setmetatable({_onStep=q.new(),_onStart=q.new(),
_onComplete=q.new()},y)end function y.onStep(z,A)return z._onStep:connect(A)end
function y.onStart(z,A)return z._onStart:connect(A)end function y.onComplete(z,A
)return z._onComplete:connect(A)end function y.start(z)if not z._connection then
z._connection=g.RenderStepped:Connect(function(A)z:step(A)end)end end function y
.stop(z)if z._connection then z._connection:Disconnect()z._connection=nil end
end y.destroy=y.stop y.step=x y.getValue=x y.setGoal=x function y.__tostring(z)
return'Motor'end local z=setmetatable({},y)z.__index=z function z.new(A,B)
assert(A,'Missing argument #1: initialValue')assert(typeof(A)=='number',
'initialValue must be a number!')local C=setmetatable(y.new(),z)if B~=nil then C
._useImplicitConnections=B else C._useImplicitConnections=true end C._goal=nil C
._state={complete=true,value=A}return C end function z.step(A,B)if A._state.
complete then return true end local C=A._goal:step(A._state,B)A._state=C A.
_onStep:fire(C.value)if C.complete then if A._useImplicitConnections then A:
stop()end A._onComplete:fire()end return C.complete end function z.getValue(A)
return A._state.value end function z.setGoal(A,B)A._state.complete=false A._goal
=B A._onStart:fire()if A._useImplicitConnections then A:start()end end function
z.__tostring(A)return'Motor(Single)'end local A=setmetatable({},y)A.__index=A
local function toMotor(B)if isMotor(B)then return B end local C=typeof(B)if C==
'number'then return z.new(B,false)elseif C=='table'then return A.new(B,false)end
error(('Unable to convert %q to motor; type %s is unsupported'):format(B,C),2)
end function A.new(B,C)assert(B,'Missing argument #1: initialValues')assert(
typeof(B)=='table','initialValues must be a table!')assert(not B.step,
[[initialValues contains disallowed property "step". Did you mean to put a table of values here?]]
)local D=setmetatable(y.new(),A)if C~=nil then D._useImplicitConnections=C else
D._useImplicitConnections=true end D._complete=true D._motors={}for E,F in
pairs(B)do D._motors[E]=toMotor(F)end return D end function A.step(B,C)if B.
_complete then return true end local D=true for E,F in pairs(B._motors)do local
G=F:step(C)if not G then D=false end end B._onStep:fire(B:getValue())if D then
if B._useImplicitConnections then B:stop()end B._complete=true B._onComplete:
fire()end return D end function A.setGoal(B,C)assert(not C.step,
[[goals contains disallowed property "step". Did you mean to put a table of goals here?]]
)B._complete=false B._onStart:fire()for D,E in pairs(C)do local F=assert(B.
_motors[D],('Unknown motor for key %s'):format(D))F:setGoal(E)end if B.
_useImplicitConnections then B:start()end end function A.getValue(B)local C={}
for D,E in pairs(B._motors)do C[D]=E:getValue()end return C end function A.
__tostring(B)return'Motor(Group)'end local B,C={SingleMotor=z,GroupMotor=A,
Instant=s,Linear=r,Spring=w,isMotor=isMotor},{Registry={},Signals={},
TransparencyMotors={},DefaultProperties={ScreenGui={ResetOnSpawn=false,
ZIndexBehavior=Enum.ZIndexBehavior.Sibling},Frame={BackgroundColor3=Color3.new(1
,1,1),BorderColor3=Color3.new(0,0,0),BorderSizePixel=0},ScrollingFrame={
BackgroundColor3=Color3.new(1,1,1),BorderColor3=Color3.new(0,0,0),
ScrollBarImageColor3=Color3.new(0,0,0)},TextLabel={BackgroundColor3=Color3.new(1
,1,1),BorderColor3=Color3.new(0,0,0),Font=Enum.Font.SourceSans,Text='',
TextColor3=Color3.new(0,0,0),BackgroundTransparency=1,TextSize=14},TextButton={
BackgroundColor3=Color3.new(1,1,1),BorderColor3=Color3.new(0,0,0),
AutoButtonColor=false,Font=Enum.Font.SourceSans,Text='',TextColor3=Color3.new(0,
0,0),TextSize=14},TextBox={BackgroundColor3=Color3.new(1,1,1),BorderColor3=
Color3.new(0,0,0),ClearTextOnFocus=false,Font=Enum.Font.SourceSans,Text='',
TextColor3=Color3.new(0,0,0),TextSize=14},ImageLabel={BackgroundTransparency=1,
BackgroundColor3=Color3.new(1,1,1),BorderColor3=Color3.new(0,0,0),
BorderSizePixel=0},ImageButton={BackgroundColor3=Color3.new(1,1,1),BorderColor3=
Color3.new(0,0,0),AutoButtonColor=false},CanvasGroup={BackgroundColor3=Color3.
new(1,1,1),BorderColor3=Color3.new(0,0,0),BorderSizePixel=0}}}local function 
ApplyCustomProps(D,E)if E.ThemeTag then C.AddThemeObject(D,E.ThemeTag)end end
function C.AddSignal(D,E)local F=D:Connect(E)table.insert(C.Signals,F)return F
end function C.Disconnect()for D=#C.Signals,1,-1 do local E=table.remove(C.
Signals,D)if E.Disconnect then E:Disconnect()end end end C.Themes=m C.Theme=C.
Theme or'Dark'function C.GetThemeProperty(D)local E=C.Themes[C.Theme]if E then
return E[D]end return C.Themes.Dark[D]end function C.UpdateTheme()if not C.
Themes[C.Theme]then C.Theme='Dark'end for D,E in next,C.Registry do for F,G in
next,E.Properties do local H=C.GetThemeProperty(G)if H then D[F]=H end end end
local D=C.GetThemeProperty'ElementTransparency'if D then for E,F in next,C.
TransparencyMotors do F:setGoal(B.Instant.new(D))end end end function C.
AddThemeObject(D,E)local F=#C.Registry+1 local G={Object=D,Properties=E,Idx=F}C.
Registry[D]=G C.UpdateTheme()return D end function C.OverrideTag(D,E)C.Registry[
D].Properties=E C.UpdateTheme()end function C.GetThemeProperty(D)if m[n.Theme][D
]then return m[n.Theme][D]end return m.Dark[D]end function C.New(D,E,F)local G=
Instance.new(D)for H,I in next,C.DefaultProperties[D]or{}do G[H]=I end for H,I
in next,E or{}do if H~='ThemeTag'then G[H]=I end end for H,I in next,F or{}do I.
Parent=G end ApplyCustomProps(G,E)return G end function C.SpringMotor(D,E,F,G,H)
G=G or false H=H or false local I=B.SingleMotor.new(D)I:onStep(function(J)E[F]=J
end)if H then table.insert(C.TransparencyMotors,I)end local function SetValue(J,
K)K=K or false if not G then if not K then if F=='BackgroundTransparency'and n.
DialogOpen then return end end end I:setGoal(B.Spring.new(J,{frequency=8}))end
return I,SetValue end n.Creator=C local D=C.New local E=D('ScreenGui',{Parent=
game:GetService'CoreGui'})n.GUI=E l(E)local function GetScreenSize()local F=E.
AbsoluteSize if F.X<1 or F.Y<1 then return d.ViewportSize end return F end local 
function OnScreenSizeChanged(F)C.AddSignal(d:GetPropertyChangedSignal
'ViewportSize',F)C.AddSignal(E:GetPropertyChangedSignal'AbsoluteSize',F)end
local F,G=i and 6 or 16,Vector2.new(300,240)local function FitSizeToScreen(H)
local I=GetScreenSize()local J,K,L,M=math.max(G.X,I.X-F*2),math.max(G.Y,I.Y-F*2)
,H.X.Offset,H.Y.Offset if L<1 or M<1 then return UDim2.fromOffset(math.min(G.X,J
),math.min(G.Y,K))end local N=math.min(1,J/L,K/M)L=math.min(L*N,J)M=math.min(M*N
,K)return UDim2.fromOffset(math.floor(math.max(L,math.min(G.X,J))),math.floor(
math.max(M,math.min(G.Y,K))))end local function FitTabWidth(H,I,J)H=H or 160 if
not J or J<1 or I>=J then return H end return math.floor(math.clamp(H*(I/J),math
.min(84,H),H))end n.Mobile=i n.GetScreenSize=GetScreenSize function n.
SafeCallback(H,I,...)if not I then return end local J,K=pcall(I,...)if not J
then local L,M=K:find':%d+: 'if not M then return n:Notify{Title='Interface',
Content='Callback error',SubContent=K,Duration=5}end return n:Notify{Title=
'Interface',Content='Callback error',SubContent=K:sub(M+1),Duration=5}end end
function n.Round(H,I,J)if J==0 then return math.floor(I)end I=tostring(I)return
I:find'%.'and tonumber(I:sub(1,I:find'%.'+J))or I end local function map(H,I,J,K
,L)return(H-I)*(L-K)/(J-I)+K end local function viewportPointToWorld(H,I)local J
=game:GetService'Workspace'.CurrentCamera:ScreenPointToRay(H.X,H.Y)return J.
Origin+J.Direction*I end local function getOffset()local H=game:GetService
'Workspace'.CurrentCamera.ViewportSize.Y return map(H,0,2560,8,56)end local H,I=
unpack{viewportPointToWorld,getOffset}local J=Instance.new'Folder'J.Name=
'FluentAcrylicBlur'J.Parent=game:GetService'Workspace'.CurrentCamera local K={}
game:GetService'Workspace':GetPropertyChangedSignal'CurrentCamera':Connect(
function()local L=game:GetService'Workspace'.CurrentCamera if not L then return
end if not pcall(function()J.Parent=L end)then J=Instance.new'Folder'J.Name=
'FluentAcrylicBlur'J.Parent=L end for M in K do task.spawn(M)end end)local L,M,N
,O,P=0.96,0.95,nil,{},false local function startBlurWatchdog()if P then return
end P=true task.spawn(function()while next(O)do task.wait(0.25)for Q in O do Q()
end end P=false end)end local function createAcrylic()local Q=C.New('Part',{Name
='Body',Color=Color3.new(0,0,0),Material=Enum.Material.Glass,Size=Vector3.new(1,
1,0),Anchored=true,CanCollide=false,Locked=true,CastShadow=false,Transparency=
0.95},{C.New('SpecialMesh',{MeshType=Enum.MeshType.Brick,Offset=Vector3.new(0,0,
-1E-6)})})return Q end function AcrylicBlur()local Q=0 local function 
createAcrylicBlur(R)local S={}Q+=1 R=R or(0.001+Q*0.00002)local T,U={topLeft=
Vector2.new(),topRight=Vector2.new(),bottomRight=Vector2.new()},createAcrylic()U
.Parent=J local function updatePositions(V,W)T.topLeft=W T.topRight=W+Vector2.
new(V.X,0)T.bottomRight=W+V end local function render()local V=game:GetService
'Workspace'.CurrentCamera if V then V=V.CFrame end local W=V if not W then W=
CFrame.new()end local X,Y,Z,_=W,T.topLeft,T.topRight,T.bottomRight local aa,ab,
ac=H(Y,R),H(Z,R),H(_,R)local ad,ae=(ab-aa).Magnitude,(ab-ac).Magnitude U.CFrame=
CFrame.fromMatrix((aa+ac)/2,X.XVector,X.YVector,X.ZVector)U.Mesh.Scale=Vector3.
new(ad,ae,0)end local function onChange(aa)local ab=I()local ac,ad=aa.
AbsoluteSize-Vector2.new(ab,ab),aa.AbsolutePosition+Vector2.new(ab/2,ab/2)
updatePositions(ac,ad)task.spawn(render)end local function renderOnChange()local
aa=game:GetService'Workspace'.CurrentCamera if not aa then return end table.
insert(S,aa:GetPropertyChangedSignal'CFrame':Connect(render))table.insert(S,aa:
GetPropertyChangedSignal'ViewportSize':Connect(render))table.insert(S,aa:
GetPropertyChangedSignal'FieldOfView':Connect(render))task.spawn(render)end
local function rebind()for aa,ab in S do pcall(function()ab:Disconnect()end)end
table.clear(S)renderOnChange()end K[rebind]=true U.Destroying:Connect(function()
K[rebind]=nil for aa,ab in S do pcall(function()ab:Disconnect()end)end end)
renderOnChange()return onChange,U end return function(aa)local ab,ac,ad={},
createAcrylicBlur(aa)local ae=C.New('Frame',{BackgroundTransparency=1,Size=UDim2
.fromScale(1,1)})C.AddSignal(ae:GetPropertyChangedSignal'AbsolutePosition',
function()ac(ae)end)C.AddSignal(ae:GetPropertyChangedSignal'AbsoluteSize',
function()ac(ae)end)ab.AddParent=function(R)C.AddSignal(R:
GetPropertyChangedSignal'Visible',function()ab.SetVisibility(R.Visible)end)end
ab.Enabled=true ab.Visible=true ab.Transparency=M local function apply()ad.
Transparency=(ab.Enabled and ab.Visible)and ab.Transparency or 1 end ab.
SetVisibility=function(R)ab.Visible=R and true or false apply()end ab.SetEnabled
=function(R)ab.Enabled=R and true or false apply()end ab.SetTransparency=
function(R)ab.Transparency=math.clamp(tonumber(R)or M,0,L)apply()end local R,S,T
local function refresh(U)if ad.Parent==nil or(not U and ad.Transparency>=1)then
return end local V=game:GetService'Workspace'.CurrentCamera if not V then return
end local W,X,Y=ae.AbsolutePosition,ae.AbsoluteSize,V.CFrame if not U and W==R
and X==S and Y==T then return end R,S,T=W,X,Y ac(ae)end O[refresh]=true
startBlurWatchdog()ad.Destroying:Connect(function()O[refresh]=nil end)ab.Frame=
ae ab.Model=ad ab.Refresh=refresh return ab end end function AcrylicPaint()local
aa,ab=C.New,AcrylicBlur()return function(ac)local ad={}ad.Frame=aa('Frame',{Size
=UDim2.fromScale(1,1),BackgroundTransparency=0.9,BackgroundColor3=Color3.
fromRGB(255,255,255),BorderSizePixel=0},{aa('ImageLabel',{Image=
'rbxassetid://8992230677',ScaleType='Slice',SliceCenter=Rect.new(Vector2.new(99,
99),Vector2.new(99,99)),AnchorPoint=Vector2.new(0.5,0.5),Size=UDim2.new(1,120,1,
116),Position=UDim2.new(0.5,0,0.5,0),BackgroundTransparency=1,ImageColor3=Color3
.fromRGB(0,0,0),ImageTransparency=0.7}),aa('UICorner',{CornerRadius=UDim.new(0,8
)}),aa('Frame',{BackgroundTransparency=0.45,Size=UDim2.fromScale(1,1),Name=
'Background',ThemeTag={BackgroundColor3='AcrylicMain'}},{aa('UICorner',{
CornerRadius=UDim.new(0,8)})}),aa('Frame',{BackgroundColor3=Color3.fromRGB(255,
255,255),BackgroundTransparency=0.4,Size=UDim2.fromScale(1,1)},{aa('UICorner',{
CornerRadius=UDim.new(0,8)}),aa('UIGradient',{Rotation=90,ThemeTag={Color=
'AcrylicGradient'}})}),aa('ImageLabel',{Image='rbxassetid://9968344105',
ImageTransparency=0.98,ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.new(0,128,0,
128),Size=UDim2.fromScale(1,1),BackgroundTransparency=1},{aa('UICorner',{
CornerRadius=UDim.new(0,8)})}),aa('ImageLabel',{Image='rbxassetid://9968344227',
ImageTransparency=0.9,ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.new(0,128,0,
128),Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ThemeTag={
ImageTransparency='AcrylicNoise'}},{aa('UICorner',{CornerRadius=UDim.new(0,8)})}
),aa('Frame',{BackgroundTransparency=1,Size=UDim2.fromScale(1,1),ZIndex=2},{aa(
'UICorner',{CornerRadius=UDim.new(0,8)}),aa('UIStroke',{Transparency=0.5,
Thickness=1,ThemeTag={Color='AcrylicBorder'}})})})local ae if n.UseAcrylic then
ae=ab()ae.Frame.Parent=ad.Frame ad.Model=ae.Model ad.AddParent=ae.AddParent ad.
SetVisibility=ae.SetVisibility ad.SetEnabled=ae.SetEnabled ad.SetTransparency=ae
.SetTransparency ad.Refresh=ae.Refresh else ad.SetEnabled=function()end ad.
SetTransparency=function()end ad.Refresh=function()end end return ad end end N={
AcrylicBlur=AcrylicBlur(),CreateAcrylic=createAcrylic,AcrylicPaint=AcrylicPaint(
)}function N.init()if N.Initialized then return end N.Initialized=true local aa,
ab,ac,ad,ae=game:GetService'Lighting',nil,nil,{},{}local function qualityTooLow(
)local Q,R=pcall(function()local Q=UserSettings():GetService'UserGameSettings'.
SavedQualityLevel return Q~=Enum.SavedQualitySetting.Automatic and Q.Value<8 end
)return Q and R or false end local function shouldBlur()return N.Enabled==true
and not N.QualityTooLow end local function suppressAll()for Q in ad do if Q.
Parent and ae[Q]==nil then ae[Q]=Q.Enabled Q.Enabled=false end end end local 
function restoreAll()for Q,R in ae do if Q.Parent then Q.Enabled=R end ae[Q]=nil
end end local function register(Q)if Q:IsA'DepthOfFieldEffect'and Q~=ab then ad[
Q]=true if shouldBlur()and ae[Q]==nil and Q.Parent then ae[Q]=Q.Enabled Q.
Enabled=false end end end local function createBaseEffect()local Q=Instance.new
'DepthOfFieldEffect'Q.Name='FluentAcrylicDOF'Q.FarIntensity=0 Q.InFocusRadius=
0.1 Q.NearIntensity=1 Q:GetPropertyChangedSignal'Enabled':Connect(function()if
shouldBlur()and not Q.Enabled then Q.Enabled=true end end)Q.AncestryChanged:
Connect(function()if shouldBlur()and Q.Parent~=aa then task.defer(ac)end end)
return Q end function ac()if not shouldBlur()then return end if not ab or not
pcall(function()ab.Parent=aa end)then ab=createBaseEffect()ab.Parent=aa end ab.
Enabled=true suppressAll()end local function refreshQuality()local Q=
qualityTooLow()if Q==(N.QualityTooLow==true)then return end N.QualityTooLow=Q if
not N.Enabled then return end if Q then restoreAll()if ab then pcall(function()
ab.Parent=nil end)end warn
[[[Fluent] Acrylic blur is off while graphics quality is below 8; it returns on its own above that.]]
else ac()end end function N.Enable()N.Enabled=true N.QualityTooLow=
qualityTooLow()if N.QualityTooLow then warn
[[[Fluent] Acrylic needs graphics quality 8+ to show the blur.]]return end ac()
end function N.Disable()N.Enabled=false restoreAll()if ab then pcall(function()
ab.Parent=nil end)end end function N.Refresh()N.QualityTooLow=qualityTooLow()if
N.Enabled then if N.QualityTooLow then restoreAll()if ab then pcall(function()ab
.Parent=nil end)end else ac()end end for Q in O do Q(true)end end for Q,R in aa:
GetChildren()do register(R)end local Q=game:GetService'Workspace'.CurrentCamera
if Q then for R,S in Q:GetChildren()do register(S)end end aa.ChildAdded:Connect(
function(R)register(R)end)pcall(function()local R=UserSettings():GetService
'UserGameSettings'R:GetPropertyChangedSignal'SavedQualityLevel':Connect(
refreshQuality)end)N.Enable()end local aa={Assets={Close=
'rbxassetid://9886659671',Min='rbxassetid://9886659276',Max=
'rbxassetid://9886659406',Restore='rbxassetid://9886659001'}}aa.Tooltip=(
function()local ab,ac,ad,ae,Q,R,S=C.New,nil,240,90,9,Vector2.new(16,18),0.35
local function MeasureWidth(T,U)if type(T)~='string'or T==''then return 0 end
local V,W=pcall(function()return c:GetTextSize(T,U,Enum.Font.Gotham,Vector2.new(
ad,10000))end)return V and W.X or ad end local function Build()local T={Open=
false,Owner=nil}T.TitleLabel=ab('TextLabel',{FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle
.Normal),Text='',TextColor3=Color3.fromRGB(240,240,240),TextSize=13,
TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,AutomaticSize=Enum.
AutomaticSize.Y,Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,LayoutOrder=1,
ThemeTag={TextColor3='Text'}})T.DescLabel=ab('TextLabel',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',Text='',TextColor3=Color3.fromRGB(170
,170,170),TextSize=12,TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,
AutomaticSize=Enum.AutomaticSize.Y,Size=UDim2.new(1,0,0,0),
BackgroundTransparency=1,Visible=false,LayoutOrder=2,ThemeTag={TextColor3=
'SubText'}})T.Root=ab('CanvasGroup',{Name='FluentTooltip',Size=UDim2.fromOffset(
120,0),AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=0.05,
GroupTransparency=1,Visible=false,ZIndex=5000,Parent=E,ThemeTag={
BackgroundColor3='TooltipBackground'}},{ab('UICorner',{CornerRadius=UDim.new(0,6
)}),ab('UIStroke',{Transparency=0.45,ApplyStrokeMode=Enum.ApplyStrokeMode.Border
,ThemeTag={Color='ElementBorder'}}),ab('UIPadding',{PaddingTop=UDim.new(0,Q),
PaddingBottom=UDim.new(0,Q),PaddingLeft=UDim.new(0,Q),PaddingRight=UDim.new(0,Q)
}),ab('UIListLayout',{Padding=UDim.new(0,3),SortOrder=Enum.SortOrder.LayoutOrder
}),T.TitleLabel,T.DescLabel})local U,V=C.SpringMotor(1,T.Root,
'GroupTransparency',true)local W local function Reposition()local X,Y,Z,_=
GetScreenSize(),T.Root.AbsoluteSize,e.X+R.X,e.Y+R.Y if Z+Y.X>X.X-6 then Z=e.X-Y.
X-12 end if _+Y.Y>X.Y-6 then _=e.Y-Y.Y-12 end T.Root.Position=UDim2.fromOffset(
math.max(4,Z),math.max(4,_))end function T.SetContent(X,Y,Z)Y=(Y~=nil)and
tostring(Y)or''Z=(Z~=nil and Z~='')and tostring(Z)or nil T.TitleLabel.Text=Y T.
TitleLabel.Visible=Y~=''T.DescLabel.Text=Z or''T.DescLabel.Visible=Z~=nil local
_=math.max(MeasureWidth(Y,13),MeasureWidth(Z,12))_=math.clamp(_,ae,ad)T.Root.
Size=UDim2.fromOffset(_+Q*2,0)end function T.Show(X,Y,Z)T:SetContent(Y,Z)T.Open=
true T.Root.Visible=true Reposition()V(0)if not W then W=k:Connect(Reposition)
end end function T.Hide(X)if not T.Open then return end T.Open=false T.Owner=nil
V(1)if W then W:Disconnect()W=nil end task.delay(0.2,function()if not T.Open
then T.Root.Visible=false end end)end function T.IsOpen(X)return T.Open end
function T.Attach(X,Y,Z,_)if typeof(Y)~='Instance'then return function()end end
local af,ag={},0 local function Resolve(ah)if type(ah)=='function'then local ai,
aj=pcall(ah)return ai and aj or nil end return ah end local function Leave()ag=
ag+1 if T.Owner==Y then T:Hide()end end local function Enter()ag=ag+1 local ah=
ag task.delay(S,function()if ag~=ah or not Y.Parent then return end T.Owner=Y T:
Show(Resolve(Z),Resolve(_))end)end table.insert(af,Y.MouseEnter:Connect(Enter))
table.insert(af,Y.MouseLeave:Connect(Leave))table.insert(af,Y.AncestryChanged:
Connect(function(ah,ai)if not ai then Leave()end end))return function()for ah,ai
in ipairs(af)do pcall(function()ai:Disconnect()end)end table.clear(af)Leave()end
end function T.Destroy(af)T:Hide()T.Root:Destroy()ac=nil end return T end return
function()if not ac or not ac.Root.Parent then ac=Build()end return ac end end)(
)aa.Element=(function()local ab=C.New return function(ac,ad,ae,af,ag)local ah,ai
,aj,Q={},ag or{},o.IsTagged(ac)and ac or nil,o.IsTagged(ad)and ad or nil ac=o.
Text(ac)ad=o.Text(ad)ah.TitleLabel=ab('TextLabel',{FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle
.Normal),Text=ac,TextColor3=Color3.fromRGB(240,240,240),TextSize=13,
TextXAlignment=Enum.TextXAlignment.Left,Size=UDim2.new(1,0,0,14),
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
LayoutOrder=2,ThemeTag={TextColor3='Text'}})ah.Header=ab('Frame',{AutomaticSize=
Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.new(1,0,0,14)},{ab(
'UIListLayout',{Padding=UDim.new(0,5),FillDirection=Enum.FillDirection.
Horizontal,SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.
VerticalAlignment.Center})})if ai and ai.Icon then local R=ai.Icon pcall(
function()if n and n.GetIcon then local S=n:GetIcon(ai.Icon)if S then R=S end
end end)ah.IconImage=ab('ImageLabel',{Image=R,Size=UDim2.fromOffset(16,16),
BackgroundTransparency=1,LayoutOrder=1,ThemeTag={ImageColor3='Text'}})ah.
IconImage.Parent=ah.Header end ah.TitleLabel.Parent=ah.Header ah.DescLabel=ab(
'TextLabel',{FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',Text=ad
,TextColor3=Color3.fromRGB(200,200,200),TextSize=12,TextWrapped=true,
TextXAlignment=Enum.TextXAlignment.Left,BackgroundColor3=Color3.fromRGB(255,255,
255),AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.new(
1,0,0,14),ThemeTag={TextColor3='SubText'}})ah.LabelHolder=ab('Frame',{
AutomaticSize=Enum.AutomaticSize.Y,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,Position=UDim2.fromOffset(10,0),Size=UDim2.new(1,-28,0,
0)},{ab('UIListLayout',{SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=
Enum.VerticalAlignment.Center}),ab('UIPadding',{PaddingBottom=UDim.new(0,13),
PaddingTop=UDim.new(0,13)}),ah.Header,ah.DescLabel})ah.Border=ab('UIStroke',{
Transparency=0.5,ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Color=Color3.
fromRGB(0,0,0),ThemeTag={Color='ElementBorder'}})ah.Frame=ab('TextButton',{
Visible=ai.Visible and ai.Visible or true,Size=UDim2.new(1,0,0,0),
BackgroundTransparency=0.89,BackgroundColor3=Color3.fromRGB(130,130,130),Parent=
ae,AutomaticSize=Enum.AutomaticSize.Y,Text='',LayoutOrder=7,ThemeTag={
BackgroundColor3='Element',BackgroundTransparency='ElementTransparency'}},{ab(
'UICorner',{CornerRadius=UDim.new(0,4)}),ah.Border,ah.LabelHolder})function ah.
SetTooltip(R,S,T)if ah.RemoveTooltip then ah.RemoveTooltip()ah.RemoveTooltip=nil
end if S==nil or S==false then return end if S==true then S=function()return ah.
TitleLabel.Text end elseif o.IsTagged(S)then local U=S S=function()return o.
ResolveTag(U)end end if o.IsTagged(T)then local U=T T=function()return o.
ResolveTag(U)end end ah.RemoveTooltip=aa.Tooltip():Attach(ah.Frame,S,T)end
function ah.SetTitle(R,S)ah.TitleLabel.Text=S local T=(S~=nil and S~='')ah.
Header.Visible=T if not T then if ah.IconImage then if not ah.DescRow then ah.
DescRow=ab('Frame',{AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,
Size=UDim2.new(1,0,0,14),LayoutOrder=2},{ab('UIListLayout',{Padding=UDim.new(0,5
),FillDirection=Enum.FillDirection.Horizontal,SortOrder=Enum.SortOrder.
LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center})})ah.DescRow.Parent
=ah.LabelHolder end if not ah.DescIconImage then ah.DescIconImage=ab(
'ImageLabel',{Image=ah.IconImage.Image,Size=UDim2.fromOffset(16,16),
BackgroundTransparency=1,LayoutOrder=1,ThemeTag={ImageColor3='Text'}})ah.
DescIconImage.Parent=ah.DescRow else ah.DescIconImage.Image=ah.IconImage.Image
ah.DescIconImage.Parent=ah.DescRow end ah.DescLabel.Parent=ah.DescRow ah.
DescLabel.LayoutOrder=2 ah.DescLabel.Size=UDim2.new(1,-24,0,14)else if ah.
DescRow then ah.DescRow:Destroy()ah.DescRow=nil ah.DescIconImage=nil end ah.
DescLabel.Parent=ah.LabelHolder ah.DescLabel.LayoutOrder=2 ah.DescLabel.Size=
UDim2.new(1,0,0,14)end else if ah.DescRow then ah.DescRow:Destroy()ah.DescRow=
nil ah.DescIconImage=nil end ah.DescLabel.Parent=ah.LabelHolder ah.DescLabel.
LayoutOrder=2 ah.DescLabel.Size=UDim2.new(1,0,0,14)end if n.Windows and#n.
Windows>0 then local U=n.Windows[#n.Windows]if U and U.AllElements and U.
AllElements[ah.Frame]then U.AllElements[ah.Frame].title=S end end end function
ah.Visible(R,S)ah.Frame.Visible=S end function ah.SetDesc(R,S)if S==nil then S=
''end if S==''then ah.DescLabel.Visible=false else ah.DescLabel.Visible=true end
ah.DescLabel.Text=S if n.Windows and#n.Windows>0 then local T=n.Windows[#n.
Windows]if T and T.AllElements and T.AllElements[ah.Frame]then T.AllElements[ah.
Frame].description=S end end end function ah.GetTitle(R)return ah.TitleLabel.
Text end function ah.GetDesc(R)return ah.DescLabel.Text end function ah.Destroy(
R)for S,T in ipairs(ah.LocaleDisconnects or{})do pcall(T)end ah.
LocaleDisconnects=nil if ah.RemoveTooltip then ah.RemoveTooltip()ah.
RemoveTooltip=nil end ah.Frame:Destroy()end ah.Header.Visible=not(ac==nil or ac
=='')ah:SetTitle(ac or'')ah:SetDesc(ad)ah.LocaleDisconnects={}if aj then table.
insert(ah.LocaleDisconnects,o.Attach(ah,'Title',aj))end if Q then table.insert(
ah.LocaleDisconnects,o.Attach(ah,'Desc',Q))end if n.Windows and#n.Windows>0 then
local R=n.Windows[#n.Windows]if R and R.RegisterElement then R.RegisterElement(
ah.Frame,ac,'Element',ad)end end if af then local R,S,T=n.Themes,C.SpringMotor(C
.GetThemeProperty'ElementTransparency',ah.Frame,'BackgroundTransparency',false,
true)C.AddSignal(ah.Frame.MouseEnter,function()T(C.GetThemeProperty
'ElementTransparency'-C.GetThemeProperty'HoverChange')end)C.AddSignal(ah.Frame.
MouseLeave,function()T(C.GetThemeProperty'ElementTransparency')end)C.AddSignal(
ah.Frame.MouseButton1Down,function()T(C.GetThemeProperty'ElementTransparency'+C.
GetThemeProperty'HoverChange')end)C.AddSignal(ah.Frame.MouseButton1Up,function()
T(C.GetThemeProperty'ElementTransparency'-C.GetThemeProperty'HoverChange')end)
end if ai.Tooltip~=nil and ai.Tooltip~=false then ah:SetTooltip(ai.Tooltip,ai.
TooltipDesc)end return ah end end)()aa.Section=(function()local ab,ac,ad,ae,af,
ag=C.New,'rbxassetid://10709790948',TweenInfo.new(0.25,Enum.EasingStyle.Sine,
Enum.EasingDirection.Out),0.16,0.4,0.0009 local function GetSectionAnimInfo(ah)
local ai=math.clamp(ae+math.abs(ah)*ag,ae,af)return TweenInfo.new(ai,Enum.
EasingStyle.Sine,Enum.EasingDirection.InOut)end return function(ah,ai,aj,Q,R)
local S=o.IsTagged(ah)and ah or nil ah=o.Text(ah)local T={}T.Collapsed=false T.
ContentHeight=0 T.Animating=false T.AnimToken=0 T.Unstyled=R and true or false
local U=T.Unstyled and 0 or 25 T.Layout=ab('UIListLayout',{Padding=UDim.new(0,5)
})T.Container=ab('Frame',{Size=UDim2.new(1,0,0,26),Position=UDim2.fromOffset(0,T
.Unstyled and 0 or 24),BackgroundTransparency=1,ClipsDescendants=true},{T.Layout
})local V=ab('TextLabel',{RichText=true,Text=ah,TextTransparency=0,FontFace=Font
.new('rbxassetid://12187365364',Enum.FontWeight.SemiBold,Enum.FontStyle.Normal),
TextSize=18,TextXAlignment='Left',TextYAlignment='Center',Size=UDim2.fromScale(0
,1),AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,LayoutOrder=2,
ThemeTag={TextColor3='Text'}})local W,X=ab('Frame',{Size=UDim2.new(1,-20,1,0),
BackgroundTransparency=1},{ab('UIListLayout',{Padding=UDim.new(0,5),
FillDirection=Enum.FillDirection.Horizontal,SortOrder=Enum.SortOrder.LayoutOrder
,VerticalAlignment=Enum.VerticalAlignment.Center}),aj and ab('ImageLabel',{Image
=aj,Size=UDim2.fromOffset(16,16),BackgroundTransparency=1,LayoutOrder=1,ThemeTag
={ImageColor3='Text'}})or nil,V}),ab('ImageLabel',{Image=ac,Size=UDim2.
fromOffset(14,14),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,0,0.5,0),
BackgroundTransparency=1,Rotation=0,ThemeTag={ImageColor3='SubText'}})local Y=
ab('TextButton',{Text='',AutoButtonColor=false,Visible=not T.Unstyled,Size=UDim2
.new(1,-16,0,18),Position=UDim2.fromOffset(0,2),BackgroundTransparency=1},{W,X})
T.Root=ab('Frame',{BackgroundTransparency=1,Size=UDim2.new(1,0,0,U+1),
LayoutOrder=7,Parent=ai},{Y,T.Container})C.AddSignal(T.Layout:
GetPropertyChangedSignal'AbsoluteContentSize',function()T.ContentHeight=T.Layout
.AbsoluteContentSize.Y if T.Collapsed or T.Animating then return end T.Container
.Size=UDim2.new(1,0,0,T.ContentHeight)T.Root.Size=UDim2.new(1,0,0,T.
ContentHeight+U)end)function T.SetCollapsed(Z,_,ak)_=not not _ if T.Collapsed==_
then return end T.Collapsed=_ local al,am,an,ao=_ and 0 or T.ContentHeight,_ and
U or(T.ContentHeight+U),_ and 180 or 0,T.Container.Size.Y.Offset local ap=al-ao
local aq=GetSectionAnimInfo(ap)if ak then if T.ContainerTween then T.
ContainerTween:Cancel()end if T.RootTween then T.RootTween:Cancel()end if T.
ArrowTween then T.ArrowTween:Cancel()end T.Animating=false T.Container.Size=
UDim2.new(1,0,0,al)T.Root.Size=UDim2.new(1,0,0,am)X.Rotation=an else if T.
ContainerTween then T.ContainerTween:Cancel()end if T.RootTween then T.RootTween
:Cancel()end if T.ArrowTween then T.ArrowTween:Cancel()end T.Animating=true T.
AnimToken=T.AnimToken+1 local ar=T.AnimToken T.ContainerTween=b:Create(T.
Container,aq,{Size=UDim2.new(1,0,0,al)})T.RootTween=b:Create(T.Root,aq,{Size=
UDim2.new(1,0,0,am)})T.ArrowTween=b:Create(X,ad,{Rotation=an})T.ContainerTween:
Play()T.RootTween:Play()T.ArrowTween:Play()T.ContainerTween.Completed:Connect(
function()if T.AnimToken~=ar then return end T.Animating=false if not T.
Collapsed then T.Container.Size=UDim2.new(1,0,0,T.ContentHeight)T.Root.Size=
UDim2.new(1,0,0,T.ContentHeight+U)end end)end end function T.Toggle(ak)T:
SetCollapsed(not T.Collapsed)end function T.IsCollapsed(ak)return T.Collapsed
end function T.SetTitle(ak,al)al=o.Text(al)or''V.Text=al if n.Windows and#n.
Windows>0 then local am=n.Windows[#n.Windows]if am and am.AllElements and am.
AllElements[T.Root]then am.AllElements[T.Root].title=al end end end C.AddSignal(
Y.MouseButton1Click,function()T:Toggle()end)if Q then T:SetCollapsed(true,true)
end if n.Windows and#n.Windows>0 then local ak=n.Windows[#n.Windows]if ak and ak
.RegisterElement then ak.RegisterElement(T.Root,ah,'Section')end end if S then T
.RemoveLocale=o.Attach(T,'Title',S)end return T end end)()aa.Tab=(function()
local ab,ac,ad,ae,af=C.New,B.Spring.new,B.Instant.new,aa,{Window=nil,Tabs={},
Containers={},SelectedTab=0,TabCount=0}local function ResolveSectionConfig(ag,ah
,ai,aj)if type(ag)=='table'and not o.IsTagged(ag)then local ak=ag return ak.
Title,ak.Icon,ak.DefaultCollapsed,ak.Idx,ak.Unstyled end return ag,ah,ai,aj,
false end local ag,ah=8,4 local function MakeColumnHost(ai,aj)local ak,al=ab(
'Frame',{Name='SectionColumns',Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.
AutomaticSize.Y,BackgroundTransparency=1,LayoutOrder=7,Parent=ai},{ab(
'UIListLayout',{FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,
ag),SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.
VerticalAlignment.Top})}),{}for am=1,aj do al[am]=ab('Frame',{Name='Column'..am,
Size=UDim2.new(1/aj,-ag*(aj-1)/aj,0,0),AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,LayoutOrder=am,Parent=ak},{ab('UIListLayout',{Padding=
UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder})})end return ak,al end local 
function SetupColumns(ai,aj)aj=math.clamp(math.floor(tonumber(aj)or 1),1,ah)ai.
ColumnCount=aj local ak,al=0 function ai.NextSectionParent(am)if aj<=1 then
return ai.Container end if not al then local an an,al=MakeColumnHost(ai.
Container,aj)end ak=ak%aj+1 return al[ak]end end function af.Init(ai,aj)af.
Window=aj return af end function af.GetCurrentTabPos(ai)local aj,ak=af.Window.
TabHolder.AbsolutePosition.Y,af.Tabs[af.SelectedTab].Frame.AbsolutePosition.Y
return ak-aj end function af.New(ai,aj,ak,al,am)local an,ao=af.Window,n.Elements
am=am or{}local ap=o.IsTagged(aj)and aj or nil aj=o.Text(aj)af.TabCount=af.
TabCount+1 local aq,ar=af.TabCount,{Selected=false,Name=aj,Type='Tab'}if not j
then if n:GetIcon(ak)then ak=n:GetIcon(ak)end if ak==''or nil then ak=nil end
end ar.Frame=ab('TextButton',{Size=UDim2.new(1,0,0,34),BackgroundTransparency=1,
Parent=al,ThemeTag={BackgroundColor3='Tab'}},{ab('UICorner',{CornerRadius=UDim.
new(0,6)}),ab('TextLabel',{Name='TabLabel',AnchorPoint=Vector2.new(0,0.5),
Position=not j and ak and UDim2.new(0,30,0.5,0)or UDim2.new(0,12,0.5,0),Text=aj,
RichText=true,TextColor3=Color3.fromRGB(255,255,255),TextTransparency=0,FontFace
=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,
Enum.FontStyle.Normal),TextSize=12,TextXAlignment='Left',TextYAlignment='Center'
,Size=UDim2.new(1,-12,1,0),BackgroundTransparency=1,ThemeTag={TextColor3='Text'}
}),ab('ImageLabel',{Name='TabIcon',AnchorPoint=Vector2.new(0,0.5),Size=UDim2.
fromOffset(16,16),Position=UDim2.new(0,8,0.5,0),BackgroundTransparency=1,Image=
ak and ak or nil,ThemeTag={ImageColor3='Text'}})})an.SidebarTabs=an.SidebarTabs
or{}table.insert(an.SidebarTabs,{Frame=ar.Frame,Label=ar.Frame.TabLabel,Icon=ar.
Frame.TabIcon,HasIcon=ak~=nil})if an.RefreshSidebar then an.RefreshSidebar()end
function ar.SetTitle(Q,R)R=o.Text(R)or''ar.Name=R ar.Frame.TabLabel.Text=R end
if ap then ar.RemoveLocale=o.Attach(ar,'Title',ap)end if am.Tooltip~=nil and am.
Tooltip~=false then local Q=am.Tooltip if Q==true then Q=function()return ar.
Frame.TabLabel.Text end elseif o.IsTagged(Q)then local R=Q Q=function()return o.
ResolveTag(R)end end local R=am.TooltipDesc if o.IsTagged(R)then local S=R R=
function()return o.ResolveTag(S)end end ar.RemoveTooltip=ae.Tooltip():Attach(ar.
Frame,Q,R)end local Q=ab('UIListLayout',{Padding=UDim.new(0,5),SortOrder=Enum.
SortOrder.LayoutOrder})ar.Root=ab('Frame',{Name='TabRoot',Size=UDim2.fromScale(1
,1),BackgroundTransparency=1,Visible=false,Parent=an.ContainerHolder})ar.
FixedHeader=ab('Frame',{Name='FixedHeader',Size=UDim2.new(1,0,0,0),AutomaticSize
=Enum.AutomaticSize.Y,BackgroundTransparency=1,Parent=ar.Root},{ab(
'UIListLayout',{Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder})})ar
.ContainerFrame=ab('ScrollingFrame',{Size=UDim2.fromScale(1,1),Position=UDim2.
fromOffset(0,0),BackgroundTransparency=1,Parent=ar.Root,BottomImage=
'rbxassetid://6889812791',MidImage='rbxassetid://6889812721',TopImage=
'rbxassetid://6276641225',ScrollBarImageColor3=Color3.fromRGB(255,255,255),
ScrollBarImageTransparency=0.95,ScrollBarThickness=3,BorderSizePixel=0,
CanvasSize=UDim2.fromScale(0,0),ScrollingDirection=Enum.ScrollingDirection.Y,
ScrollingEnabled=true},{Q,ab('UIPadding',{PaddingRight=UDim.new(0,10),
PaddingLeft=UDim.new(0,1),PaddingTop=UDim.new(0,1),PaddingBottom=UDim.new(0,1)})
})local R=4 local function UpdateTabContainerBounds()local S=ar.FixedHeader.
AbsoluteSize.Y local T=S>0 and(S+R)or 0 ar.ContainerFrame.Position=UDim2.new(0,0
,0,T)ar.ContainerFrame.Size=UDim2.new(1,0,1,-T)end C.AddSignal(ar.FixedHeader:
GetPropertyChangedSignal'AbsoluteSize',UpdateTabContainerBounds)
UpdateTabContainerBounds()C.AddSignal(Q:GetPropertyChangedSignal
'AbsoluteContentSize',function()ar.ContainerFrame.CanvasSize=UDim2.new(0,0,0,Q.
AbsoluteContentSize.Y+2)end)ar.Motor,ar.SetTransparency=C.SpringMotor(1,ar.Frame
,'BackgroundTransparency')C.AddSignal(ar.Frame.MouseEnter,function()ar.
SetTransparency(ar.Selected and 0.85 or 0.89)end)C.AddSignal(ar.Frame.MouseLeave
,function()ar.SetTransparency(ar.Selected and 0.89 or 1)end)C.AddSignal(ar.Frame
.MouseButton1Down,function()ar.SetTransparency(0.92)end)C.AddSignal(ar.Frame.
MouseButton1Up,function()ar.SetTransparency(ar.Selected and 0.85 or 0.89)end)C.
AddSignal(ar.Frame.MouseButton1Click,function()af:SelectTab(aq)end)af.Containers
[aq]=ar.Root af.Tabs[aq]=ar ar.Container=ar.ContainerFrame ar.ScrollFrame=ar.
Container SetupColumns(ar,am.Columns)ar.SubTabs={}ar.SubTabCount=0 ar.
SelectedSubTab=nil ar.SubTabSwitchToken=0 function ar.ScrollSubTabIntoView(S,T)
local U=ar.SubTabBarHolder if not U or not T or not T.Button then return end
local V,W=T.Button,U.AbsoluteSize.X if W<=0 then return end local X=U.
CanvasPosition.X local Y=(V.AbsolutePosition.X-U.AbsolutePosition.X)+X local Z,_
=Y+V.AbsoluteSize.X,X if Y<X then _=Y-10 elseif Z>X+W then _=Z-W+10 end local as
=math.max(0,U.CanvasSize.X.Offset-W)_=math.clamp(_,0,as)ar.SubTabBarScrollMotor:
setGoal(ac(_,{frequency=7}))end function ar.SelectSubTab(as,S)if not ar.SubTabs[
S]or ar.SelectedSubTab==S then return end local T=ar.SelectedSubTab ar.
SelectedSubTab=S for U,V in next,ar.SubTabs do V.Selected=(U==S)V.
SetTransparency(V.Selected and 0.85 or 1)V.SetUnderline(V.Selected and 0.1 or 1)
end pcall(function()ar:ScrollSubTabIntoView(ar.SubTabs[S])end)if not T then ar.
SubTabs[S].Page.Visible=true ar.SubTabPagesAnim.GroupTransparency=0 return end
local U=(S>T)and 1 or-1 ar.SubTabSwitchToken=ar.SubTabSwitchToken+1 local V=ar.
SubTabSwitchToken task.spawn(function()ar.SubTabPagesHolder.Parent=ar.
SubTabPagesAnim ar.SubTabPosMotor:setGoal(ac(U*15,{frequency=10}))ar.
SubTabBackMotor:setGoal(ac(1,{frequency=10}))task.wait(0.12)if ar.
SubTabSwitchToken~=V then return end for W,X in next,ar.SubTabs do X.Page.
Visible=false end ar.SubTabs[S].Page.Visible=true ar.SubTabPosMotor:setGoal(ad(-
U*15))ar.SubTabPosMotor:setGoal(ac(0,{frequency=5}))ar.SubTabBackMotor:setGoal(
ac(0,{frequency=8}))task.wait(0.12)if ar.SubTabSwitchToken==V then ar.
SubTabPagesHolder.Parent=ar.SubTabSlot end end)end function ar.AddSubTab(as,S,T,
U)local V=o.IsTagged(S)and S or nil S=o.Text(S)if not ar.SubTabBarHolder then
local W,X,Y=ab('UIListLayout',{FillDirection=Enum.FillDirection.Horizontal,
Padding=UDim.new(0,6),SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=
Enum.VerticalAlignment.Top}),3,5 ar.SubTabBarHolder=ab('ScrollingFrame',{Name=
'SubTabBar',Size=UDim2.new(1,0,0,30),BackgroundTransparency=1,BorderSizePixel=0,
LayoutOrder=-1E3,Parent=ar.FixedHeader,ScrollingDirection=Enum.
ScrollingDirection.X,ScrollBarThickness=X,ScrollBarImageTransparency=0.95,
ScrollBarImageColor3=Color3.fromRGB(255,255,255),BottomImage=
'rbxassetid://6889812791',MidImage='rbxassetid://6889812721',TopImage=
'rbxassetid://6276641225',CanvasSize=UDim2.fromScale(0,0),ElasticBehavior=Enum.
ElasticBehavior.WhenScrollable,HorizontalScrollBarInset=Enum.ScrollBarInset.
ScrollBar},{W,ab('UIPadding',{PaddingTop=UDim.new(0,2),PaddingRight=UDim.new(0,8
)})})local function UpdateSubTabBarHeight()local Z,_=W.AbsoluteContentSize.X+8,
ar.SubTabBarHolder.AbsoluteSize.X local at=_>0 and Z>_+1 ar.SubTabBarHolder.Size
=UDim2.new(1,0,0,at and(30+Y+X)or 30)end C.AddSignal(W:GetPropertyChangedSignal
'AbsoluteContentSize',function()ar.SubTabBarHolder.CanvasSize=UDim2.new(0,W.
AbsoluteContentSize.X+8,0,0)UpdateSubTabBarHeight()end)C.AddSignal(ar.
SubTabBarHolder:GetPropertyChangedSignal'AbsoluteSize',UpdateSubTabBarHeight)ar.
SubTabBarScrollMotor=B.SingleMotor.new(0)ar.SubTabBarScrollMotor:onStep(function
(at)ar.SubTabBarHolder.CanvasPosition=Vector2.new(at,0)end)ab('Frame',{Name=
'SubTabBarDivider',Size=UDim2.new(1,0,0,1),BackgroundTransparency=0.6,
BorderSizePixel=0,LayoutOrder=-999,Parent=ar.FixedHeader,ThemeTag={
BackgroundColor3='TitleBarLine'}})ar.SubTabSlot=ab('Frame',{Name='SubTabSlot',
Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,LayoutOrder=-998,Parent=ar.Container})ar.
SubTabPagesAnim=ab('CanvasGroup',{Name='SubTabPagesAnim',Size=UDim2.new(1,0,0,0)
,AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,ClipsDescendants=
true,Parent=ar.SubTabSlot})local at=ab('UIListLayout',{Padding=UDim.new(0,0),
SortOrder=Enum.SortOrder.LayoutOrder})ar.SubTabPagesHolder=ab('Frame',{Name=
'SubTabPagesHolder',Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,Parent=ar.SubTabSlot},{at})ar.SubTabPosMotor=B.
SingleMotor.new(0)ar.SubTabPosMotor:onStep(function(Z)ar.SubTabPagesAnim.
Position=UDim2.fromOffset(Z,0)end)ar.SubTabBackMotor=B.SingleMotor.new(0)ar.
SubTabBackMotor:onStep(function(Z)ar.SubTabPagesAnim.GroupTransparency=Z end)end
local at=T if not j then if n:GetIcon(at)then at=n:GetIcon(at)end if at==''or
nil then at=nil end end ar.SubTabCount=ar.SubTabCount+1 local W,X=ar.SubTabCount
,{Selected=false,Name=S,Type='SubTab'}X.Button=ab('TextButton',{Name='SubTab_'..
S,Size=UDim2.new(0,0,0,28),AutomaticSize=Enum.AutomaticSize.X,
BackgroundTransparency=1,AutoButtonColor=false,Text='',Parent=ar.SubTabBarHolder
,ThemeTag={BackgroundColor3='Tab'}},{ab('UICorner',{CornerRadius=UDim.new(0,6)})
,ab('UIPadding',{PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,12)}),ab(
'TextLabel',{Name='Label',AnchorPoint=Vector2.new(0,0.5),Position=at and UDim2.
new(0,20,0.5,0)or UDim2.new(0,0,0.5,0),Text=S,RichText=true,FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle
.Normal),TextSize=12,TextXAlignment='Left',TextYAlignment='Center',Size=UDim2.
new(0,0,1,0),AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,
ThemeTag={TextColor3='Text'}}),ab('ImageLabel',{Name='Icon',AnchorPoint=Vector2.
new(0,0.5),Size=UDim2.fromOffset(14,14),Position=UDim2.new(0,0,0.5,0),
BackgroundTransparency=1,Image=at and at or nil,ThemeTag={ImageColor3='Text'}}),
ab('Frame',{Name='Underline',AnchorPoint=Vector2.new(0.5,1),Position=UDim2.new(
0.5,0,1,-1),Size=UDim2.new(1,-14,0,2),BackgroundTransparency=1,ThemeTag={
BackgroundColor3='Accent'}},{ab('UICorner',{CornerRadius=UDim.new(1,0)})})})X.
Motor,X.SetTransparency=C.SpringMotor(1,X.Button,'BackgroundTransparency')X.
UnderlineMotor,X.SetUnderline=C.SpringMotor(1,X.Button.Underline,
'BackgroundTransparency')C.AddSignal(X.Button.MouseEnter,function()X.
SetTransparency(X.Selected and 0.8 or 0.93)end)C.AddSignal(X.Button.MouseLeave,
function()X.SetTransparency(X.Selected and 0.85 or 1)end)C.AddSignal(X.Button.
MouseButton1Down,function()X.SetTransparency(0.7)end)C.AddSignal(X.Button.
MouseButton1Up,function()X.SetTransparency(X.Selected and 0.8 or 0.93)end)C.
AddSignal(X.Button.MouseButton1Click,function()ar:SelectSubTab(W)end)X.Page=ab(
'Frame',{Name='SubTabPage_'..S,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.
AutomaticSize.Y,BackgroundTransparency=1,LayoutOrder=W,Visible=false,Parent=ar.
SubTabPagesHolder},{ab('UIListLayout',{Padding=UDim.new(0,5),SortOrder=Enum.
SortOrder.LayoutOrder})})X.Container=X.Page X.ScrollFrame=ar.Container
SetupColumns(X,U or ar.ColumnCount)function X.AddSection(Y,Z,_,au,av)local aw,ax
,ay,az,aA=ResolveSectionConfig(Z,_,au,av)au,av=ay,az local aB,aC={Type='Section'
,Idx=av},ax if not j then if n:GetIcon(aC)then aC=n:GetIcon(aC)end if aC==''or
nil then aC=nil end end local aD=ae.Section(aw,X:NextSectionParent(),aC,au,aA)aB
.Container=aD.Container aB.ScrollFrame=X.ScrollFrame aB.SetCollapsed=aD.
SetCollapsed aB.Toggle=aD.Toggle aB.IsCollapsed=aD.IsCollapsed function aB.
SetValue(aE,aF)aB:SetCollapsed(not not aF,true)end setmetatable(aB,ao)if av then
n.Options[av]=aB end return aB end function X.SetTitle(au,av)av=o.Text(av)or''X.
Name=av X.Button.Label.Text=av end if V then X.RemoveLocale=o.Attach(X,'Title',V
)end setmetatable(X,ao)ar.SubTabs[W]=X if ar.SubTabCount==1 then ar:
SelectSubTab(W)end return X end function ar.AddSection(as,at,au,av,aw)local ax,
ay,az,aA,aB=ResolveSectionConfig(at,au,av,aw)av,aw=az,aA local aC,aD={Type=
'Section',Idx=aw},ay if not j then if n:GetIcon(aD)then aD=n:GetIcon(aD)end if
aD==''or nil then aD=nil end end local aE=ae.Section(ax,ar:NextSectionParent(),
aD,av,aB)aC.Container=aE.Container aC.ScrollFrame=ar.Container aC.SetCollapsed=
aE.SetCollapsed aC.Toggle=aE.Toggle aC.IsCollapsed=aE.IsCollapsed function aC.
SetValue(aF,S)aC:SetCollapsed(not not S,true)end setmetatable(aC,ao)if aw then n
.Options[aw]=aC end return aC end setmetatable(ar,ao)return ar end af.
SwitchToken=0 function af.SelectTab(ai,aj)local ak=af.Window af.SelectedTab=aj
for al,am in next,af.Tabs do am.SetTransparency(1)am.Selected=false end af.Tabs[
aj].SetTransparency(0.89)af.Tabs[aj].Selected=true ak.TabDisplay.Text=af.Tabs[aj
].Name ak.SelectorPosMotor:setGoal(ac(af:GetCurrentTabPos(),{frequency=6}))af.
SwitchToken=af.SwitchToken+1 local al=af.SwitchToken task.spawn(function()ak.
ContainerHolder.Parent=ak.ContainerAnim ak.ContainerPosMotor:setGoal(ac(15,{
frequency=10}))ak.ContainerBackMotor:setGoal(ac(1,{frequency=10}))task.wait(0.12
)if af.SwitchToken~=al then return end for am,an in next,af.Containers do an.
Visible=false end af.Containers[aj].Visible=true ak.ContainerPosMotor:setGoal(
ac(0,{frequency=5}))ak.ContainerBackMotor:setGoal(ac(0,{frequency=8}))task.wait(
0.12)if af.SwitchToken==al then ak.ContainerHolder.Parent=ak.ContainerCanvas end
end)end return af end)()aa.Button=(function()local ab,ac=C.New,B.Spring.new
return function(ad,ae,af)af=af or false local ag={}ag.Title=ab('TextLabel',{
FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',TextColor3=Color3.
fromRGB(200,200,200),TextSize=14,TextWrapped=true,TextXAlignment=Enum.
TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,BackgroundColor3
=Color3.fromRGB(255,255,255),AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,Size=UDim2.fromScale(1,1),ThemeTag={TextColor3='Text'}}
)ag.HoverFrame=ab('Frame',{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,
ThemeTag={BackgroundColor3='Hover'}},{ab('UICorner',{CornerRadius=UDim.new(0,4)}
)})ag.Frame=ab('TextButton',{Size=UDim2.new(0,0,0,32),Parent=ae,ThemeTag={
BackgroundColor3='DialogButton'}},{ab('UICorner',{CornerRadius=UDim.new(0,4)}),
ab('UIStroke',{ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Transparency=0.65,
ThemeTag={Color='DialogButtonBorder'}}),ag.HoverFrame,ag.Title})local ah,ai=C.
SpringMotor(1,ag.HoverFrame,'BackgroundTransparency',af)C.AddSignal(ag.Frame.
MouseEnter,function()ai(0.97)end)C.AddSignal(ag.Frame.MouseLeave,function()ai(1)
end)C.AddSignal(ag.Frame.MouseButton1Down,function()ai(1)end)C.AddSignal(ag.
Frame.MouseButton1Up,function()ai(0.97)end)return ag end end)()aa.Dialog=(
function()local ab,ac,ad,ae=B.Spring.new,B.Instant.new,C.New,{Window=nil}
function ae.Init(af,ag)ae.Window=ag return ae end function ae.Create(af)local ag
={Buttons=0}ag.TintFrame=ad('TextButton',{Text='',Size=UDim2.fromScale(1,1),
BackgroundColor3=Color3.fromRGB(0,0,0),BackgroundTransparency=1,Parent=ae.Window
.Root},{ad('UICorner',{CornerRadius=UDim.new(0,8)})})local ah,ai=C.SpringMotor(1
,ag.TintFrame,'BackgroundTransparency',true)ag.ButtonHolder=ad('Frame',{Size=
UDim2.new(1,-40,1,-40),AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.
fromScale(0.5,0.5),BackgroundTransparency=1},{ad('UIListLayout',{Padding=UDim.
new(0,10),FillDirection=Enum.FillDirection.Horizontal,HorizontalAlignment=Enum.
HorizontalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder})})ag.
ButtonHolderFrame=ad('Frame',{Size=UDim2.new(1,0,0,70),Position=UDim2.new(0,0,1,
-70),ThemeTag={BackgroundColor3='DialogHolder'}},{ad('Frame',{Size=UDim2.new(1,0
,0,1),ThemeTag={BackgroundColor3='DialogHolderLine'}}),ag.ButtonHolder})ag.Title
=ad('TextLabel',{FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',
Enum.FontWeight.SemiBold,Enum.FontStyle.Normal),Text='Dialog',TextColor3=Color3.
fromRGB(240,240,240),TextSize=22,TextXAlignment=Enum.TextXAlignment.Left,Size=
UDim2.new(1,0,0,22),Position=UDim2.fromOffset(20,25),BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,ThemeTag={TextColor3='Text'}})ag.
Scale=ad('UIScale',{Scale=1})local aj,ak=C.SpringMotor(1.1,ag.Scale,'Scale')ag.
Root=ad('CanvasGroup',{Size=UDim2.fromOffset(300,165),AnchorPoint=Vector2.new(
0.5,0.5),Position=UDim2.fromScale(0.5,0.5),GroupTransparency=1,Parent=ag.
TintFrame,ThemeTag={BackgroundColor3='Dialog'}},{ad('UICorner',{CornerRadius=
UDim.new(0,8)}),ad('UIStroke',{Transparency=0.5,ThemeTag={Color='DialogBorder'}}
),ag.Scale,ag.Title,ag.ButtonHolderFrame})local al,am=C.SpringMotor(1,ag.Root,
'GroupTransparency')function ag.Open(an)n.DialogOpen=true ag.Scale.Scale=1.1 ai(
0.75)am(0)ak(1)end function ag.Close(an)n.DialogOpen=false ai(1)am(1)ak(1.1)ag.
Root.UIStroke:Destroy()task.wait(0.15)ag.TintFrame:Destroy()end function ag.
Button(an,ao,ap)ag.Buttons=ag.Buttons+1 ao=o.Text(ao)or'Button'ap=ap or function
()end local aq=aa.Button('',ag.ButtonHolder,true)aq.Title.Text=ao for ar,as in
next,ag.ButtonHolder:GetChildren()do if as:IsA'TextButton'then as.Size=UDim2.
new(1/ag.Buttons,-(((ag.Buttons-1)*10)/ag.Buttons),0,32)end end C.AddSignal(aq.
Frame.MouseButton1Click,function()n:SafeCallback(ap)pcall(function()ag:Close()
end)end)return aq end return ag end return ae end)()aa.Notification=(function()
local ac,ad,ae,af=B.Spring.new,B.Instant.new,C.New,{}function af.Init(ag,ah)n.
ActiveNotifications=n.ActiveNotifications or{}local ai=i and 12 or 30 af.Holder=
ae('Frame',{Position=UDim2.new(1,-ai,1,-ai),Size=UDim2.new(0,310,1,-ai),
AnchorPoint=Vector2.new(1,1),BackgroundTransparency=1,Parent=ah},{ae(
'UIListLayout',{HorizontalAlignment=Enum.HorizontalAlignment.Center,SortOrder=
Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Bottom,
Padding=UDim.new(0,20)})})local function FitHolder()local aj=GetScreenSize()af.
Holder.Size=UDim2.new(0,math.clamp(aj.X-ai*2,180,310),1,-ai)end FitHolder()
OnScreenSizeChanged(FitHolder)end function af.New(ag,ah)ah.Title=o.Text(ah.Title
)or'Title'ah.Content=o.Text(ah.Content)or'Content'ah.SubContent=o.Text(ah.
SubContent)or''ah.Duration=ah.Duration or nil local ai={Closed=false}ai.
AcrylicPaint=N.AcrylicPaint()ai.Title=ae('TextLabel',{Position=UDim2.new(0,14,0,
17),Text=ah.Title,RichText=true,TextColor3=Color3.fromRGB(255,255,255),
TextTransparency=0,FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',
TextSize=13,TextXAlignment='Left',TextYAlignment='Center',Size=UDim2.new(1,-12,0
,12),TextWrapped=true,BackgroundTransparency=1,ThemeTag={TextColor3='Text'}})ai.
ContentLabel=ae('TextLabel',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',Text=ah.Content,TextColor3=Color3.
fromRGB(240,240,240),TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,
AutomaticSize=Enum.AutomaticSize.Y,Size=UDim2.new(1,0,0,14),BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,TextWrapped=true,ThemeTag={
TextColor3='Text'}})ai.SubContentLabel=ae('TextLabel',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',Text=ah.SubContent,TextColor3=Color3.
fromRGB(240,240,240),TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,
AutomaticSize=Enum.AutomaticSize.Y,Size=UDim2.new(1,0,0,14),BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,TextWrapped=true,ThemeTag={
TextColor3='SubText'}})ai.LabelHolder=ae('Frame',{AutomaticSize=Enum.
AutomaticSize.Y,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,Position=UDim2.fromOffset(14,40),Size=UDim2.new(1,-28,0
,0)},{ae('UIListLayout',{SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=
Enum.VerticalAlignment.Center,Padding=UDim.new(0,3)}),ai.ContentLabel,ai.
SubContentLabel})ai.CloseButton=ae('TextButton',{Text='',Position=UDim2.new(1,-
14,0,13),Size=UDim2.fromOffset(20,20),AnchorPoint=Vector2.new(1,0),
BackgroundTransparency=1},{ae('ImageLabel',{Image=aa.Close,Size=UDim2.
fromOffset(16,16),Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,
0.5),BackgroundTransparency=1,ThemeTag={ImageColor3='Text'}})})ai.Root=ae(
'Frame',{BackgroundTransparency=1,Size=UDim2.new(1,0,1,0),Position=UDim2.
fromScale(1,0)},{ai.AcrylicPaint.Frame,ai.Title,ai.CloseButton,ai.LabelHolder})
if ah.Content==''then ai.ContentLabel.Visible=false end if ah.SubContent==''then
ai.SubContentLabel.Visible=false end ai.Holder=ae('Frame',{
BackgroundTransparency=1,Size=UDim2.new(1,0,0,200),Parent=af.Holder},{ai.Root})
local aj=B.GroupMotor.new{Scale=1,Offset=60}aj:onStep(function(ak)ai.Root.
Position=UDim2.new(ak.Scale,ak.Offset,0,0)end)C.AddSignal(ai.CloseButton.
MouseButton1Click,function()ai:Close()end)function ai.ApplyTransparency(ak)if n.
Theme=='Glass'and n.UseAcrylic then local al=n.NotificationTransparency or 1
local am=0.85+(al*0.08)if al>1 then am=0.93+((al-1)*0.04)end local an=0.8+(al*
0.1)if al>1 then an=0.9+((al-1)*0.05)end if ai.AcrylicPaint and ai.AcrylicPaint.
SetTransparency then ai.AcrylicPaint.SetTransparency(am)end if ai.AcrylicPaint
and ai.AcrylicPaint.Frame and ai.AcrylicPaint.Frame.Background then ai.
AcrylicPaint.Frame.Background.BackgroundTransparency=math.min(an,0.95)end end
end function ai.Open(ak)local al=ai.LabelHolder.AbsoluteSize.Y ai.Holder.Size=
UDim2.new(1,0,0,58+al)aj:setGoal{Scale=ac(0,{frequency=5}),Offset=ac(0,{
frequency=5})}task.defer(function()task.wait(0.1)ai:ApplyTransparency()end)end
function ai.Close(ak)if not ai.Closed then ai.Closed=true for al,am in pairs(n.
ActiveNotifications or{})do if am==ai then table.remove(n.ActiveNotifications,al
)break end end task.spawn(function()aj:setGoal{Scale=ac(1,{frequency=5}),Offset=
ac(60,{frequency=5})}task.wait(0.4)if n.UseAcrylic then ai.AcrylicPaint.Model:
Destroy()end ai.Holder:Destroy()end)end end table.insert(n.ActiveNotifications,
ai)ai:Open()if ah.Duration then task.delay(ah.Duration,function()ai:Close()end)
end return ai end return af end)()aa.Textbox=(function()local ac=C.New return
function(ad,ae)ae=ae or false local af={}af.Input=ac('TextBox',{FontFace=Font.
new'rbxasset://fonts/families/GothamSSm.json',TextColor3=Color3.fromRGB(200,200,
200),TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.
TextYAlignment.Center,BackgroundColor3=Color3.fromRGB(255,255,255),AutomaticSize
=Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.fromScale(1,1),
Position=UDim2.fromOffset(10,0),ThemeTag={TextColor3='Text',PlaceholderColor3=
'SubText'}})af.Container=ac('Frame',{BackgroundTransparency=1,ClipsDescendants=
true,Position=UDim2.new(0,6,0,0),Size=UDim2.new(1,-12,1,0)},{af.Input})af.
Indicator=ac('Frame',{Size=UDim2.new(1,-4,0,1),Position=UDim2.new(0,2,1,0),
AnchorPoint=Vector2.new(0,1),BackgroundTransparency=ae and 0.5 or 0,ThemeTag={
BackgroundColor3=ae and'InputIndicator'or'DialogInputLine'}})af.Frame=ac('Frame'
,{Size=UDim2.new(0,0,0,30),BackgroundTransparency=ae and 0.9 or 0,Parent=ad,
ThemeTag={BackgroundColor3=ae and'Input'or'DialogInput'}},{ac('UICorner',{
CornerRadius=UDim.new(0,4)}),ac('UIStroke',{ApplyStrokeMode=Enum.ApplyStrokeMode
.Border,Transparency=ae and 0.5 or 0.65,ThemeTag={Color=ae and'InElementBorder'
or'DialogButtonBorder'}}),af.Indicator,af.Container})local function Update()
local ag,ah=2,af.Container.AbsoluteSize.X if not af.Input:IsFocused()or af.Input
.TextBounds.X<=ah-2*ag then af.Input.Position=UDim2.new(0,ag,0,0)else local ai=
af.Input.CursorPosition if ai~=-1 then local aj=string.sub(af.Input.Text,1,ai-1)
local ak=c:GetTextSize(aj,af.Input.TextSize,af.Input.Font,Vector2.new(math.huge,
math.huge)).X local al=af.Input.Position.X.Offset+ak if al<ag then af.Input.
Position=UDim2.fromOffset(ag-ak,0)elseif al>ah-ag-1 then af.Input.Position=UDim2
.fromOffset(ah-ak-ag-1,0)end end end end task.spawn(Update)C.AddSignal(af.Input:
GetPropertyChangedSignal'Text',Update)C.AddSignal(af.Input:
GetPropertyChangedSignal'CursorPosition',Update)C.AddSignal(af.Input.Focused,
function()Update()af.Indicator.Size=UDim2.new(1,-2,0,2)af.Indicator.Position=
UDim2.new(0,1,1,0)af.Indicator.BackgroundTransparency=0 C.OverrideTag(af.Frame,{
BackgroundColor3=ae and'InputFocused'or'DialogHolder'})C.OverrideTag(af.
Indicator,{BackgroundColor3='InputIndicatorFocus'})end)C.AddSignal(af.Input.
FocusLost,function()Update()af.Indicator.Size=UDim2.new(1,-4,0,1)af.Indicator.
Position=UDim2.new(0,2,1,0)af.Indicator.BackgroundTransparency=0.5 C.
OverrideTag(af.Frame,{BackgroundColor3=ae and'Input'or'DialogInput'})C.
OverrideTag(af.Indicator,{BackgroundColor3=ae and'InputIndicator'or
'DialogInputLine'})end)return af end end)()aa.TitleBar=(function()local ac,ad=C.
New,C.AddSignal return function(ae)local af={}ae.Title=o.Text(ae.Title)ae.
SubTitle=o.Text(ae.SubTitle)local function BarButton(ag,ah,ai,aj)local ak={
Callback=aj or function()end}ak.Frame=ac('TextButton',{Size=UDim2.new(0,34,1,-8)
,AnchorPoint=Vector2.new(1,0),BackgroundTransparency=1,Parent=ai,Position=ah,
Text='',ThemeTag={BackgroundColor3='Text'}},{ac('UICorner',{CornerRadius=UDim.
new(0,7)}),ac('ImageLabel',{Image=ag,Size=UDim2.fromOffset(16,16),Position=UDim2
.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,
Name='Icon',ThemeTag={ImageColor3='Text'}})})local al,am=C.SpringMotor(1,ak.
Frame,'BackgroundTransparency')ad(ak.Frame.MouseEnter,function()am(0.94)end)ad(
ak.Frame.MouseLeave,function()am(1,true)end)ad(ak.Frame.MouseButton1Down,
function()am(0.96)end)ad(ak.Frame.MouseButton1Up,function()am(0.94)end)ad(ak.
Frame.MouseButton1Click,ak.Callback)ak.SetCallback=function(an)ak.Callback=an
end return ak end af.Frame=ac('Frame',{Size=UDim2.new(1,0,0,42),
BackgroundTransparency=1,Parent=ae.Parent},{ac('Frame',{Size=UDim2.new(1,-16,1,0
),Position=UDim2.new(0,12,0,0),BackgroundTransparency=1},{ac('UIListLayout',{
Padding=UDim.new(0,5),FillDirection=Enum.FillDirection.Horizontal,SortOrder=Enum
.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center}),ae.
SidebarCollapsible and ac('ImageButton',{Name='SidebarToggle',Image=n:GetIcon
'sidebar'or'',Size=UDim2.fromOffset(18,18),BackgroundTransparency=1,LayoutOrder=
0,ImageTransparency=0.25,ThemeTag={ImageColor3='Text'}})or nil,ae.Icon and ac(
'ImageLabel',{Image=ae.Icon,Size=UDim2.fromOffset(20,20),BackgroundTransparency=
1,LayoutOrder=1,ThemeTag={ImageColor3='Text'}})or nil,ac('TextLabel',{RichText=
true,Text=ae.Title,FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',
Enum.FontWeight.Regular,Enum.FontStyle.Normal),TextSize=12,TextXAlignment='Left'
,TextYAlignment='Center',Size=UDim2.fromScale(0,1),AutomaticSize=Enum.
AutomaticSize.X,BackgroundTransparency=1,LayoutOrder=ae.Icon and 2 or 1,ThemeTag
={TextColor3='Text'}}),ae.SubTitle and ac('TextLabel',{RichText=true,Text=ae.
SubTitle,TextTransparency=0.4,FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=12,TextXAlignment='Left',TextYAlignment='Center',Size
=UDim2.fromScale(0,1),AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=
1,LayoutOrder=ae.Icon and 3 or 2,ThemeTag={TextColor3='Text'}})or nil}),ac(
'Frame',{BackgroundTransparency=0.5,Size=UDim2.new(1,0,0,1),Position=UDim2.new(0
,0,1,0),ThemeTag={BackgroundColor3='TitleBarLine'}})})af.CloseButton=BarButton(
aa.Assets.Close,UDim2.new(1,-4,0,4),af.Frame,function()n.Window:Dialog{Title=o.t
'fluent.close.title',Content=o.t'fluent.close.content',Buttons={{Title=o.t
'fluent.common.yes',Callback=function()pcall(function()local ag,ah=n.Window and
n.Window.Root,n.Window and n.Window.RootScale if ag and ah then local ai,aj,ak,
al=ag.AbsoluteSize.X,ag.AbsoluteSize.Y,ag.Position.X.Offset,ag.Position.Y.Offset
b:Create(ah,TweenInfo.new(0.18,Enum.EasingStyle.Quart,Enum.EasingDirection.In),{
Scale=0}):Play()b:Create(ag,TweenInfo.new(0.18,Enum.EasingStyle.Quart,Enum.
EasingDirection.In),{Position=UDim2.fromOffset(ak+ai/2,al+aj/2)}):Play()end end)
task.delay(0.18,function()n:Destroy()end)end},{Title=o.t'fluent.common.no'}}}end
)af.MaxButton=BarButton(aa.Assets.Max,UDim2.new(1,-40,0,4),af.Frame,function()ae
.Window.Maximize(not ae.Window.Maximized)end)af.MinButton=BarButton(aa.Assets.
Min,UDim2.new(1,-80,0,4),af.Frame,function()n.Window:Minimize()end)if ae.
SidebarCollapsible then local ag=af.Frame:FindFirstChild('SidebarToggle',true)if
ag then af.SidebarToggle=ag ad(ag.MouseButton1Click,function()local ah=ae.Window
or n.Window if ah and ah.ToggleSidebar then ah:ToggleSidebar()end end)ad(ag.
MouseEnter,function()ag.ImageTransparency=0 end)ad(ag.MouseLeave,function()ag.
ImageTransparency=0.25 end)local function SidebarTipKey()local ah,ai=ae.Window
or n.Window,true if ah and ah.IsSidebarExpanded then local aj,ak=pcall(ah.
IsSidebarExpanded,ah)if aj then ai=ak end end return ai and
'fluent.sidebar.collapse'or'fluent.sidebar.expand'end af.RemoveSidebarTooltip=aa
.Tooltip():Attach(ag,function()return o.t(SidebarTipKey()..'.title')end,function
()return o.t(SidebarTipKey()..'.desc')end)end end return af end end)()aa.Window=
(function()local ac,ad,ae=B.Spring.new,B.Instant.new,C.New return function(af)
local ag=af.Size or UDim2.fromOffset(480,360)local ah,ai,aj,ak,al={Minimized=
false,Maximized=false,Size=FitSizeToScreen(ag),RequestedSize=ag,CurrentPos=0,
TabWidth=0,Position=UDim2.fromOffset(0,0),DropdownsOutsideWindow=af.
DropdownsOutsideWindow==true},false local am,an=false local ao=false ah.
AcrylicPaint=N.AcrylicPaint()local function CenterWindow()local ap=
GetScreenSize()local aq,ar=math.max(0,(ap.X-ah.Size.X.Offset)/2),math.max(0,(ap.
Y-ah.Size.Y.Offset)/2)ah.Position=UDim2.fromOffset(math.floor(aq),math.floor(ar)
)if ah.Root then ah.Root.Position=ah.Position end end local function 
CurrentTabWidth(ap)return FitTabWidth(af.TabWidth,ap,ag.X.Offset)end ah.TabWidth
=CurrentTabWidth(ah.Size.X.Offset)local ap,aq,ar,as=ae('Frame',{Size=UDim2.
fromOffset(4,0),BackgroundColor3=Color3.fromRGB(76,194,255),Position=UDim2.
fromOffset(0,(ah.TabHolderTop or 45)+0),AnchorPoint=Vector2.new(0,0.5),ThemeTag=
{BackgroundColor3='Accent'}},{ae('UICorner',{CornerRadius=UDim.new(0,9)})}),26,i
and 58 or 44,8 local at=ar-as local au=ae('Frame',{Name='ResizeGrip',Size=UDim2.
fromOffset(ar,ar),BackgroundTransparency=1,ClipsDescendants=true,Position=UDim2.
new(1,-ar+at,1,-ar+at)},{ae('Frame',{Name='GripArc',AnchorPoint=Vector2.new(0.5,
0.5),Position=UDim2.fromOffset(0,0),Size=UDim2.fromOffset(aq,aq),
BackgroundTransparency=1},{ae('UICorner',{CornerRadius=UDim.new(1,0)}),ae(
'UIStroke',{Name='GripStroke',Thickness=4,Transparency=0.55,ThemeTag={Color=
'TitleBarLine'}})})})local av,aw,ax,ay,az=au.GripArc.GripStroke,0.55,0.2,4,4.75
local aA,aB=C.SpringMotor(aw,av,'Transparency')local aC,aD=C.SpringMotor(ay,av,
'Thickness')C.AddSignal(au.MouseEnter,function()aB(ax)aD(az)end)C.AddSignal(au.
MouseLeave,function()aB(aw)aD(ay)end)ah.TabHolder=ae('ScrollingFrame',{Size=
UDim2.new(1,0,1,-45),Position=UDim2.new(0,0,0,45),BackgroundTransparency=1,
ScrollBarImageTransparency=1,ScrollBarThickness=0,BorderSizePixel=0,CanvasSize=
UDim2.fromScale(0,0),ScrollingDirection=Enum.ScrollingDirection.Y},{ae(
'UIListLayout',{Padding=UDim.new(0,4)})})local aE,aF={},{}local function 
UpdateElementVisibility(Q)Q=string.lower(Q or'')for R,S in pairs(aF)do if R and
R.Parent then local T=Q==''or string.find(string.lower(S.title),Q,1,true)or(S.
description and string.find(string.lower(S.description),Q,1,true))R.Visible=T
end end task.spawn(function()task.wait(0.01)if ah and ah.TabHolder then for R,S
in pairs(ah.TabHolder:GetChildren())do if S:IsA'ScrollingFrame'then local T=S:
FindFirstChild'UIListLayout'if T then S.CanvasSize=UDim2.new(0,0,0,T.
AbsoluteContentSize.Y+2)end end end end end)end local function RegisterElement(Q
,R,S,T)if Q and R then aF[Q]={title=R,type=S or'Element',description=T or''}end
end ah.ShowSearch=(af.Search==nil)and true or(af.Search and true or false)local
Q=ae('Frame',{Size=UDim2.new(1,0,0,35),Position=UDim2.new(0,0,0,0),
BackgroundTransparency=0.9,ZIndex=10,Visible=ah.ShowSearch,ThemeTag={
BackgroundColor3='Element'}},{ae('UICorner',{CornerRadius=UDim.new(0,6)}),ae(
'UIStroke',{ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Transparency=0.8,
Thickness=1,ThemeTag={Color='ElementBorder'}})})local R=aa.Textbox(Q,true)R.
Frame.Size=UDim2.new(1,-44,1,-8)R.Frame.Position=UDim2.new(0,10,0,4)o.OnChanged(
function()R.Input.PlaceholderText=o.t'fluent.search.placeholder'end)R.Input.
PlaceholderText=o.t'fluent.search.placeholder'R.Input.Text=''local S=ae(
'ImageLabel',{Size=UDim2.fromOffset(18,18),Position=UDim2.new(1,-18,0.5,0),
AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,Image=
'rbxassetid://10734943674',Parent=Q,ThemeTag={ImageColor3='SubText'}})C.
AddSignal(R.Input:GetPropertyChangedSignal'Text',function()local T=R.Input.Text
UpdateElementVisibility(T)end)C.AddSignal(R.Input.FocusLost,function(T)end)C.
AddSignal(h.InputBegan,function(T,U)if U then return end if T.KeyCode==Enum.
KeyCode.Escape and R.Input:IsFocused()then R.Input.Text=''R.Input:ReleaseFocus()
end end)ah.SearchElements=aE ah.AllElements=aF ah.RegisterElement=
RegisterElement ah.UpdateElementVisibility=UpdateElementVisibility local T=ae(
'Frame',{Size=UDim2.new(0,ah.TabWidth,1,ah.ShowSearch and-66 or-31),Position=
UDim2.new(0,12,0,ah.ShowSearch and 54 or 19),BackgroundTransparency=1,
ClipsDescendants=true},{ah.TabHolder,ap,Q})ah.TabDisplay=ae('TextLabel',{
RichText=true,Text='Tab',TextTransparency=0,FontFace=Font.new(
'rbxassetid://12187365364',Enum.FontWeight.SemiBold,Enum.FontStyle.Normal),
TextSize=28,TextXAlignment='Left',TextYAlignment='Center',Size=UDim2.new(1,-16,0
,28),Position=UDim2.fromOffset(ah.TabWidth+26,56),BackgroundTransparency=1,
ThemeTag={TextColor3='Text'}})ah.ContainerHolder=ae('Frame',{Size=UDim2.
fromScale(1,1),BackgroundTransparency=1})ah.ContainerAnim=ae('CanvasGroup',{Size
=UDim2.fromScale(1,1),BackgroundTransparency=1})ah.ContainerCanvas=ae('Frame',{
Size=UDim2.new(1,-ah.TabWidth-32,1,-102),Position=UDim2.fromOffset(ah.TabWidth+
26,90),BackgroundTransparency=1},{ah.ContainerAnim,ah.ContainerHolder})local 
function ApplyTabWidth(U)ah.TabWidth=U T.Size=UDim2.new(0,U,T.Size.Y.Scale,T.
Size.Y.Offset)ah.TabDisplay.Position=UDim2.fromOffset(U+26,56)ah.ContainerCanvas
.Size=UDim2.new(1,-U-32,1,-102)ah.ContainerCanvas.Position=UDim2.fromOffset(U+26
,90)end ah.ApplyTabWidth=ApplyTabWidth local U=af.Sidebar if type(U)~='table'
then U={}end local V=460 ah.SidebarCollapsible=(af.SidebarCollapsible==true)or(U
.Collapsible==true)ah.SidebarCollapsedWidth=math.clamp(tonumber(U.CollapsedWidth
)or 48,34,96)ah.SidebarAutoCollapse=U.AutoCollapse~=false ah.
SidebarUserCollapsed=U.DefaultCollapsed==true ah.SidebarForced=false ah.
SidebarCollapsed=false ah.SidebarExpandedWidth=ah.TabWidth local function 
TargetTabWidth(W)local X=CurrentTabWidth(W)ah.SidebarExpandedWidth=X if ah.
SidebarCollapsed then return math.min(ah.SidebarCollapsedWidth,X)end return X
end local W=B.SingleMotor.new(ah.TabWidth)W:onStep(function(X)ApplyTabWidth(math
.floor(X+0.5))end)local X,Y=nil,ae('TextButton',{Name='SearchRailButton',Text=''
,AutoButtonColor=false,BackgroundTransparency=1,Size=UDim2.fromScale(1,1),
Visible=false,ZIndex=11,Parent=Q})local function ApplySidebarVisuals(Z)for _,aG
in ipairs(ah.SidebarTabs or{})do if aG.Label then aG.Label.Visible=not Z end if
aG.Icon then aG.Icon.AnchorPoint=Z and Vector2.new(0.5,0.5)or Vector2.new(0,0.5)
aG.Icon.Position=Z and UDim2.new(0.5,0,0.5,0)or UDim2.new(0,8,0.5,0)end end if R
and R.Frame then R.Frame.Visible=not Z end if S then S.Position=Z and UDim2.new(
0.5,0,0.5,0)or UDim2.new(1,-18,0.5,0)end Y.Visible=Z and ah.ShowSearch if not Z
and X then X()end end local aG,Z,_,aH,aI=230,nil,nil,nil,false local function 
BuildSearchSlide()Z=ae('Frame',{Name='SearchSlide',Size=UDim2.fromOffset(ah.
TabWidth,35),Position=UDim2.fromOffset(12,54),BackgroundTransparency=0,
ClipsDescendants=true,Visible=false,ZIndex=20,Parent=ah.Root,ThemeTag={
BackgroundColor3='DropdownHolder'}},{ae('UICorner',{CornerRadius=UDim.new(0,6)})
,ae('UIStroke',{ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Transparency=0.4,
Thickness=1,ThemeTag={Color='DropdownBorder'}})})_=aa.Textbox(Z,true)_.Frame.
Size=UDim2.new(1,-44,1,-8)_.Frame.Position=UDim2.new(0,10,0,4)o.OnChanged(
function()_.Input.PlaceholderText=o.t'fluent.search.placeholder'end)_.Input.
PlaceholderText=o.t'fluent.search.placeholder'_.Input.Text=''ae('ImageLabel',{
Name='SearchSlideIcon',Size=UDim2.fromOffset(18,18),Position=UDim2.new(1,-18,0.5
,0),AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,Image=
'rbxassetid://10734943674',Parent=Z,ThemeTag={ImageColor3='SubText'}})aH=B.
SingleMotor.new(ah.TabWidth)aH:onStep(function(aJ)Z.Size=UDim2.fromOffset(math.
floor(aJ+0.5),35)end)C.AddSignal(_.Input:GetPropertyChangedSignal'Text',function
()UpdateElementVisibility(_.Input.Text)end)C.AddSignal(_.Input.FocusLost,
function()X()end)end local function OpenRailSearch()if not ah.ShowSearch or not
ah.SidebarCollapsed or aI then return end if not Z then BuildSearchSlide()end aI
=true Z.Position=UDim2.fromOffset(T.Position.X.Offset,T.Position.Y.Offset)aH:
setGoal(ad(ah.TabWidth))Z.Visible=true _.Input.Text=R.Input.Text local aJ=math.
clamp(aG,ah.TabWidth,math.max(ah.TabWidth,ah.Size.X.Offset-24))aH:setGoal(ac(aJ,
{frequency=8}))task.defer(function()pcall(function()_.Input:CaptureFocus()end)
end)end X=function()if not aI then return end aI=false pcall(function()_.Input:
ReleaseFocus()end)R.Input.Text=_.Input.Text aH:setGoal(ac(ah.TabWidth,{frequency
=9}))task.delay(0.28,function()if not aI and Z then Z.Visible=false end end)end
C.AddSignal(Y.MouseButton1Click,function()if aI then X()else OpenRailSearch()end
end)local function ResolveSidebar(aJ)local aK=ah.SidebarUserCollapsed or ah.
SidebarForced if aK==ah.SidebarCollapsed then return end ah.SidebarCollapsed=aK
ApplySidebarVisuals(aK)local aL=TargetTabWidth(ah.Size.X.Offset)if aJ==false
then W:setGoal(ad(aL))else W:setGoal(ac(aL,{frequency=7}))end end local function 
UpdateSidebarForViewport(aJ)if not ah.SidebarCollapsible or not ah.
SidebarAutoCollapse then return end local aK=aJ<V if aK~=ah.SidebarForced then
ah.SidebarForced=aK ResolveSidebar(false)end end local function SetTabWidth(aJ,
aK)UpdateSidebarForViewport(aJ)local aL=TargetTabWidth(aJ)if aK then W:setGoal(
ad(aL))else W:setGoal(ac(aL,{frequency=7}))end end function ah.
SetSidebarExpanded(aJ,aK,aL)ah.SidebarUserCollapsed=not aK ResolveSidebar(aL)end
function ah.ToggleSidebar(aJ,aK)ah:SetSidebarExpanded(not ah:IsSidebarExpanded()
,aK)end function ah.IsSidebarExpanded(aJ)return not ah.SidebarCollapsed end ah.
RefreshSidebar=function()ApplySidebarVisuals(ah.SidebarCollapsed)end if ah.
SidebarUserCollapsed then ResolveSidebar(false)end local aJ=ae('Frame',{Name=
'BottomDragHandle',AnchorPoint=Vector2.new(0.5,0),Position=UDim2.new(0.5,0,1,6),
Size=UDim2.fromOffset(56,4),BackgroundTransparency=0.55,BorderSizePixel=0,
ThemeTag={BackgroundColor3='TitleBarLine'}},{ae('UICorner',{CornerRadius=UDim.
new(1,0)})})ah.Root=ae('Frame',{BackgroundTransparency=1,Size=ah.Size,Position=
ah.Position,Parent=af.Parent},{ah.AcrylicPaint.Frame,ah.TabDisplay,ah.
ContainerCanvas,T,au,aJ})ah.RootScale=ae('UIScale',{Scale=0,Parent=ah.Root})
CenterWindow()ah.TitleBar=aa.TitleBar{Title=af.Title,SubTitle=af.SubTitle,Icon=
af.Icon,Parent=ah.Root,Window=ah,SidebarCollapsible=ah.SidebarCollapsible,
UserInfoTitle=af.UserInfoTitle,UserInfo=af.UserInfo,UserInfoSubtitle=af.
UserInfoSubtitle,UserInfoSubtitleColor=af.UserInfoSubtitleColor}if af.UserInfo
then local function parseColor(aK)if typeof(aK)=='Color3'then return aK end
return m[n.Theme].SubText or Color3.fromRGB(170,170,170)end local aK=56 local aL
=ae('Frame',{Name='UserInfoSection',BackgroundTransparency=1,Size=UDim2.new(1,0,
0,aK),Position=af.UserInfoTop and UDim2.fromOffset(0,0)or UDim2.new(0,12,1,-(aK+
2)),Parent=T})ae('Frame',{Name='UserInfoSeparator',BackgroundTransparency=0.5,
Size=UDim2.new(1,0,0,1),Position=af.UserInfoTop and UDim2.fromOffset(0,aK+2)or
UDim2.new(0,12,1,-(aK+10)),Parent=T,ThemeTag={BackgroundColor3='TitleBarLine'}})
local aM=28 local aN=ae('ImageLabel',{Name='Avatar',BackgroundTransparency=1,
Size=UDim2.fromOffset(aM,aM),Position=UDim2.new(0,0,0.5,0),AnchorPoint=Vector2.
new(0,0.5),Image='rbxassetid://0',Parent=aL},{ae('UICorner',{CornerRadius=UDim.
new(1,0)}),ae('UIStroke',{Transparency=0.7,Thickness=1,ThemeTag={Color=
'ElementBorder'}})})pcall(function()local aO=game:GetService'Players'local aP,aQ
=aO:GetUserThumbnailAsync(aO.LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum
.ThumbnailSize.Size100x100)if aQ and aP then aN.Image=aP end end)local aO,aP=
tostring((af.UserInfoTitle~=nil and af.UserInfoTitle)or(a.Name or'User')),(af.
UserInfoSubtitle~=nil)and tostring(af.UserInfoSubtitle)or''ae('TextLabel',{Name=
'UserName',BackgroundTransparency=1,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Bottom,FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle
.Normal),TextSize=13,Text=aO,Size=UDim2.new(1,-aM-12,0.5,0),Position=UDim2.new(0
,aM+12,0,-2),Parent=aL,ThemeTag={TextColor3='Text'}})ae('TextLabel',{Name=
'UserSubtitle',BackgroundTransparency=1,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top,FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=12,TextTransparency=0.2,Text=aP,TextColor3=
parseColor(af.UserInfoSubtitleColor),Size=UDim2.new(1,-aM-12,0.5,0),Position=
UDim2.new(0,aM+12,0.5,2),Parent=aL})if af.UserInfoTop then T.Position=UDim2.new(
0,12,0,39)T.Size=UDim2.new(0,ah.TabWidth,1,-31)Q.Position=UDim2.new(0,0,0,aK+6)
ah.TabHolder.Position=UDim2.new(0,0,0,45+aK+6)ah.TabHolder.Size=UDim2.new(1,0,1,
-(45+aK+24))ah.TabHolderTop=45+aK+6 else ah.TabHolder.Size=UDim2.new(1,0,1,-(45+
aK+24))ah.TabHolderTop=45 end end if n.UseAcrylic then ah.AcrylicPaint.
AddParent(ah.Root)end local aK,aL=B.GroupMotor.new{X=ah.Size.X.Offset,Y=ah.Size.
Y.Offset},B.GroupMotor.new{X=ah.Position.X.Offset,Y=ah.Position.Y.Offset}_G.
CDDrag=0 ah.SelectorPosMotor=B.SingleMotor.new(17)ah.SelectorSizeMotor=B.
SingleMotor.new(0)ah.ContainerBackMotor=B.SingleMotor.new(0)ah.ContainerPosMotor
=B.SingleMotor.new(94)aK:onStep(function(aM)ah.Root.Size=UDim2.new(0,aM.X,0,aM.Y
)end)aL:onStep(function(aM)ah.Root.Position=UDim2.new(0,aM.X,0,aM.Y)end)local aM
=B.SingleMotor.new(0)aM:onStep(function(aN)ah.RootScale.Scale=aN local aO=ah.
MinimizeAnimBase if aO then ah.Root.Position=UDim2.fromOffset(aO.X+aO.SizeX*(1-
aN)/2,aO.Y+aO.SizeY*(1-aN)/2)end end)aM:onComplete(function()if ah.Minimized
then ah.Root.Visible=false else ah.MinimizeAnimBase=nil end end)ah.
RootScaleMotor=aM local aN,aO=0,0 ah.SelectorPosMotor:onStep(function(aP)local
aQ,aR=ah.TabHolderTop or 45,16 ap.Position=UDim2.new(0,0,0,aQ+aP+aR)local aS=
tick()local aT=aS-aO if aN~=nil then ah.SelectorSizeMotor:setGoal(ac((math.abs(
aP-aN)/(aT*60))+16))aN=aP end aO=aS end)ah.SelectorSizeMotor:onStep(function(aP)
ap.Size=UDim2.new(0,4,0,aP)end)ah.ContainerBackMotor:onStep(function(aP)ah.
ContainerAnim.GroupTransparency=aP end)ah.ContainerPosMotor:onStep(function(aP)
ah.ContainerAnim.Position=UDim2.fromOffset(0,aP)end)local aP,aQ ah.Maximize=
function(aR,aS,aT)ah.Maximized=aR ah.TitleBar.MaxButton.Frame.Icon.Image=aR and
aa.Assets.Restore or aa.Assets.Max if aR then aP=ah.Size.X.Offset aQ=ah.Size.Y.
Offset end local aU,aV if aR then local aW=GetScreenSize()aU,aV=aW.X,aW.Y else
local aW=(aP and aQ)and UDim2.fromOffset(aP,aQ)or(ah.UserSize or ah.
RequestedSize)local aX=FitSizeToScreen(aW)aU,aV=aX.X.Offset,aX.Y.Offset end aK:
setGoal{X=B[aT and'Instant'or'Spring'].new(aU,{frequency=6}),Y=B[aT and'Instant'
or'Spring'].new(aV,{frequency=6})}ah.Size=UDim2.fromOffset(aU,aV)SetTabWidth(aU,
true)if not aS then aL:setGoal{X=ac(aR and 0 or ah.Position.X.Offset,{frequency=
6}),Y=ac(aR and 0 or ah.Position.Y.Offset,{frequency=6})}end if aR and not aS
then ah.Position=UDim2.fromOffset(0,0)end end local function ClampWindowPosition
(aR)local aS,aT,aU,aV,aW,aX,aY=GetScreenSize(),ah.Size.X.Offset,ah.Size.Y.Offset
,nil,nil,nil,nil if i then aV,aW=0,0 aX,aY=math.max(0,aS.X-aT),math.max(0,aS.Y-
aU)else aV,aW=math.min(0,-(aT-120)),0 aX,aY=math.max(0,aS.X-120),math.max(0,aS.Y
-40)end local aZ,a_=math.clamp(ah.Position.X.Offset,aV,aX),math.clamp(ah.
Position.Y.Offset,aW,aY)if aZ==ah.Position.X.Offset and a_==ah.Position.Y.Offset
then return end ah.Position=UDim2.fromOffset(math.floor(aZ),math.floor(a_))aL:
setGoal{X=aR and ad(ah.Position.X.Offset)or ac(ah.Position.X.Offset,{frequency=6
}),Y=aR and ad(ah.Position.Y.Offset)or ac(ah.Position.Y.Offset,{frequency=6})}
end local function RecenterWindow(aR)local aS=GetScreenSize()ah.Position=UDim2.
fromOffset(math.floor(math.max(0,(aS.X-ah.Size.X.Offset)/2)),math.floor(math.
max(0,(aS.Y-ah.Size.Y.Offset)/2)))aL:setGoal{X=aR and ad(ah.Position.X.Offset)or
ac(ah.Position.X.Offset,{frequency=6}),Y=aR and ad(ah.Position.Y.Offset)or ac(ah
.Position.Y.Offset,{frequency=6})}end local function RefitWindow(aR)if ah.
Maximized then ah.Maximize(true,false,true)return end local aS=FitSizeToScreen(
ah.UserSize or ah.RequestedSize)ah.Size=aS SetTabWidth(aS.X.Offset,true)aK:
setGoal{X=aR and ad(aS.X.Offset)or ac(aS.X.Offset,{frequency=6}),Y=aR and ad(aS.
Y.Offset)or ac(aS.Y.Offset,{frequency=6})}if ah.UserMoved then
ClampWindowPosition(aR)else RecenterWindow(aR)end local aT=ah.MinimizeAnimBase
if aT then aT.X,aT.Y=ah.Position.X.Offset,ah.Position.Y.Offset aT.SizeX,aT.SizeY
=ah.Size.X.Offset,ah.Size.Y.Offset end end OnScreenSizeChanged(function()
RefitWindow(true)end)function ah.FitToScreen(aR,aS)RefitWindow(aS~=false)end
local aR=22 local function BindWindowDrag(aS)C.AddSignal(aS.InputBegan,function(
aT)if aT.UserInputType==Enum.UserInputType.MouseButton1 or aT.UserInputType==
Enum.UserInputType.Touch then ai=true ak=aT.Position al=ah.Root.Position if ah.
Maximized then al=UDim2.fromOffset(e.X-(e.X*((aP-100)/ah.Root.AbsoluteSize.X)),e
.Y-(e.Y*(aQ/ah.Root.AbsoluteSize.Y)))end aT.Changed:Connect(function()if aT.
UserInputState==Enum.UserInputState.End then ai=false end end)end end)C.
AddSignal(aS.InputChanged,function(aT)if aT.UserInputType==Enum.UserInputType.
MouseMovement or aT.UserInputType==Enum.UserInputType.Touch then aj=aT end end)
end BindWindowDrag(ah.TitleBar.Frame)BindWindowDrag(aJ)local aS,aT=C.
SpringMotor(0.55,aJ,'BackgroundTransparency')C.AddSignal(aJ.MouseEnter,function(
)aT(0.2)end)C.AddSignal(aJ.MouseLeave,function()aT(0.55)end)C.AddSignal(au.
InputBegan,function(aU)if aU.UserInputType==Enum.UserInputType.MouseButton1 or
aU.UserInputType==Enum.UserInputType.Touch then am=true an=aU.Position end end)C
.AddSignal(h.InputChanged,function(aU)if aU==aj and ai then local aV=aU.Position
-ak local aW,aX=al.X.Offset+aV.X,al.Y.Offset+aV.Y if i then local aY=
GetScreenSize()aW=math.clamp(aW,0,math.max(0,aY.X-ah.Size.X.Offset))aX=math.
clamp(aX,0,math.max(0,aY.Y-ah.Size.Y.Offset))end ah.Position=UDim2.fromOffset(aW
,aX)ah.UserMoved=true aL:setGoal{X=ac(ah.Position.X.Offset,{frequency=aR}),Y=ac(
ah.Position.Y.Offset,{frequency=aR})}if ah.Maximized then ah.Maximize(false,true
,true)end end if(aU.UserInputType==Enum.UserInputType.MouseMovement or aU.
UserInputType==Enum.UserInputType.Touch)and am then local aV,aW=aU.Position-an,
ah.Size local aX,aY=Vector3.new(aW.X.Offset,aW.Y.Offset,0)+Vector3.new(1,1,0)*aV
,GetScreenSize()local aZ,a_=math.max(G.X,aY.X-F*2),math.max(G.Y,aY.Y-F*2)local
a0,a1,a2,a3=math.min(470,aZ),math.min(380,a_),i and aZ or 2048,i and a_ or 2048
local a4=Vector2.new(math.clamp(aX.X,a0,a2),math.clamp(aX.Y,a1,a3))aK:setGoal{X=
B.Instant.new(a4.X),Y=B.Instant.new(a4.Y)}SetTabWidth(a4.X,true)end end)C.
AddSignal(h.InputEnded,function(aU)if not am then return end if aU.UserInputType
~=Enum.UserInputType.MouseButton1 and aU.UserInputType~=Enum.UserInputType.Touch
then return end am=false ah.Size=UDim2.fromOffset(aK:getValue().X,aK:getValue().
Y)ah.UserSize=ah.Size end)C.AddSignal(ah.TabHolder.UIListLayout:
GetPropertyChangedSignal'AbsoluteContentSize',function()ah.TabHolder.CanvasSize=
UDim2.new(0,0,0,ah.TabHolder.UIListLayout.AbsoluteContentSize.Y)end)C.AddSignal(
h.InputBegan,function(aU)if type(n.MinimizeKeybind)=='table'and n.
MinimizeKeybind.Type=='Keybind'and not h:GetFocusedTextBox()then if aU.KeyCode.
Name==n.MinimizeKeybind.Value then ah:Minimize()end elseif aU.KeyCode==n.
MinimizeKey and not h:GetFocusedTextBox()then ah:Minimize()end end)function ah.
Minimize(aU)ah.Minimized=not ah.Minimized for aV,aW in next,n.Options do if aW
and aW.Type=='Dropdown'and aW.Opened then pcall(function()aW:Close()end)end end
ah.RootScale.Scale=1 ah.Root.Visible=not ah.Minimized if not ao then ao=true
local aV=n.MinimizeKeybind and n.MinimizeKeybind.Value or n.MinimizeKey.Name if
not i then n:Notify{Title='Interface',Content='Press '..aV..
' to toggle the interface.',Duration=6}else n:Notify{Title='Interface',Content=
'Tap to the button to toggle the interface.',Duration=6}end end function ah.
ToggleSearch(aV)ah.ShowSearch=not ah.ShowSearch Q.Visible=ah.ShowSearch T.Size=
UDim2.new(0,ah.TabWidth,1,ah.ShowSearch and-66 or-31)T.Position=UDim2.new(0,12,0
,ah.ShowSearch and 54 or 19)end end function ah.Destroy(aU)if n.UseAcrylic then
ah.AcrylicPaint.Model:Destroy()end ah.Root:Destroy()end local aU=aa.Dialog:Init(
ah)function ah.Dialog(aV,aW)aW.Title=o.Text(aW.Title)aW.Content=o.Text(aW.
Content)for aX,aY in ipairs(aW.Buttons or{})do aY.Title=o.Text(aY.Title)end
local aX=aU:Create()aX.Title.Text=aW.Title local aY=ae('ScrollingFrame',{
BackgroundTransparency=1,ScrollBarImageTransparency=0.7,ScrollBarThickness=4,
BottomImage='rbxassetid://6889812791',MidImage='rbxassetid://6889812721',
TopImage='rbxassetid://6276641225',Position=UDim2.fromOffset(20,60),Size=UDim2.
new(1,-40,1,-110),CanvasSize=UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.
AutomaticSize.Y,ScrollingDirection=Enum.ScrollingDirection.Y,Parent=aX.Root})
local aZ,a_=ae('TextLabel',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',Text=aW.Content,TextColor3=Color3.
fromRGB(240,240,240),TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top,AutomaticSize=Enum.AutomaticSize.Y,
TextWrapped=true,Size=UDim2.new(1,-8,0,0),BackgroundTransparency=1,Parent=aY,
ThemeTag={TextColor3='Text'}}),GetScreenSize()local a0,a1=math.max(240,a_.X-40),
math.max(165,a_.Y-40)ae('UISizeConstraint',{MinSize=Vector2.new(math.min(300,a0)
,math.min(165,a1)),MaxSize=Vector2.new(math.min(620,a0),math.huge),Parent=aX.
Root})local a2=math.min(620,a0,math.max(240,ah.Size.X.Offset-40))local a3=math.
max(math.min(300,a2),math.min(a2,aZ.TextBounds.X+40))aX.Root.Size=UDim2.
fromOffset(a3,math.min(165,a1))aY.Size=UDim2.new(1,-40,1,-110)task.defer(
function()local a4=aZ.TextBounds.Y local a5=math.clamp(a4+110,math.min(165,a1),
math.min(420,a1))aX.Root.Size=UDim2.fromOffset(a3,a5)aY.CanvasSize=UDim2.
fromOffset(0,a4)end)for a4,a5 in next,aW.Buttons do aX:Button(a5.Title,a5.
Callback)end aX:Open()end function ah.Modal(aV,aW)aW=aW or{}aW.Title=o.Text(aW.
Title)aW.Description=o.Text(aW.Description)aW.SubTitle=o.Text(aW.SubTitle)for aX
,aY in ipairs(aW.Buttons or{})do aY.Title=o.Text(aY.Title)end local aX,aY=aU:
Create(),GetScreenSize()local aZ,a_,a0=math.clamp(tonumber(aW.Width)or 420,240,
math.max(240,aY.X-40)),math.clamp(tonumber(aW.Height)or 320,180,math.max(180,aY.
Y-40)),aW.Buttons local a1=type(a0)=='table'and#a0>0 aX.ButtonHolderFrame.
Visible=a1 local a2=aW.Description or aW.SubTitle local a3=type(a2)=='string'and
a2~=''local a4=a3 and 68 or 52 aX.Title.Text=aW.Title or'Dialog'aX.Title.
TextSize=17 aX.Title.Position=UDim2.fromOffset(20,18)aX.Title.Size=UDim2.new(1,-
62,0,20)aX.Title.TextTruncate=Enum.TextTruncate.AtEnd if a3 then ae('TextLabel',
{Name='ModalSubtitle',FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',Text=a2,TextSize=12,TextXAlignment=
Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,TextWrapped=true
,Position=UDim2.fromOffset(20,40),Size=UDim2.new(1,-62,0,16),
BackgroundTransparency=1,Parent=aX.Root,ThemeTag={TextColor3='SubText'}})end
local a5=ae('TextButton',{Name='ModalClose',Text='',AutoButtonColor=false,
AnchorPoint=Vector2.new(1,0),Position=UDim2.new(1,-14,0,14),Size=UDim2.
fromOffset(26,26),BackgroundTransparency=1,ZIndex=3,Parent=aX.Root,ThemeTag={
BackgroundColor3='Text'}},{ae('UICorner',{CornerRadius=UDim.new(0,6)}),ae(
'ImageLabel',{Image=aa.Assets.Close,Size=UDim2.fromOffset(13,13),Position=UDim2.
fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,
ImageTransparency=0.25,ZIndex=3,ThemeTag={ImageColor3='Text'}})})ae('Frame',{
Name='ModalHeaderLine',Position=UDim2.fromOffset(0,a4),Size=UDim2.new(1,0,0,1),
BackgroundTransparency=0.15,BorderSizePixel=0,Parent=aX.Root,ThemeTag={
BackgroundColor3='DialogHolderLine'}})local a6,a7,a8=a1 and 86 or 18,a4+14,ae(
'UIListLayout',{Padding=UDim.new(0,6),SortOrder=Enum.SortOrder.LayoutOrder})
local a9=ae('ScrollingFrame',{Name='ModalContent',BackgroundTransparency=1,
ScrollBarImageColor3=Color3.fromRGB(255,255,255),ScrollBarImageTransparency=0.85
,ScrollBarThickness=3,BottomImage='rbxassetid://6889812791',MidImage=
'rbxassetid://6889812721',TopImage='rbxassetid://6276641225',BorderSizePixel=0,
Position=UDim2.fromOffset(18,a7),Size=UDim2.new(1,-40,1,-(a7+a6)),CanvasSize=
UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,
ScrollingDirection=Enum.ScrollingDirection.Y,ElasticBehavior=Enum.
ElasticBehavior.WhenScrollable,Parent=aX.Root},{a8,ae('UIPadding',{PaddingBottom
=UDim.new(0,4)})})aX.Root.Size=UDim2.fromOffset(aZ,a_)local ba={Type='Modal',
Root=aX.Root,Container=a9,ScrollFrame=a9,Open=true,Sections={}}function ba.
AddSection(bb,bc,bd,be)if type(bc)=='table'and not o.IsTagged(bc)then
SectionTitle,RawIcon,Collapsed,Unstyled=bc.Title,bc.Icon,bc.DefaultCollapsed,bc.
Unstyled else SectionTitle,RawIcon,Collapsed=bc,bd,be end local bf=RawIcon if
not j and n:GetIcon(bf)then bf=n:GetIcon(bf)end if bf==''then bf=nil end local
bg=aa.Section(SectionTitle,a9,bf,Collapsed,Unstyled)local bh={Type='Section',
Container=bg.Container,ScrollFrame=a9,SetCollapsed=bg.SetCollapsed,Toggle=bg.
Toggle,IsCollapsed=bg.IsCollapsed}setmetatable(bh,n.Elements)table.insert(ba.
Sections,bh)return bh end function ba.SetTitle(bb,bc)aX.Title.Text=bc or''end
function ba.IsOpen(bb)return ba.Open end local bb={}local function Track(bc)
table.insert(bb,bc)end function ba.Close(bc,bd)if not ba.Open then return end ba
.Open=false for be,bf in ipairs(bb)do pcall(function()bf:Disconnect()end)end
table.clear(bb)n:SafeCallback(aW.OnClose,bd)task.spawn(function()pcall(function(
)aX:Close()end)end)end ba.Destroy=ba.Close setmetatable(ba,n.Elements)if a1 then
for bc,bd in next,a0 do local be=bd.Callback aX:Button(bd.Title,function()ba.
Open=false for bf,bg in ipairs(bb)do pcall(function()bg:Disconnect()end)end
table.clear(bb)n:SafeCallback(be)n:SafeCallback(aW.OnClose,bd.Id or bd.Title)end
)end end do local bc,bd=C.SpringMotor(1,a5,'BackgroundTransparency',true)Track(C
.AddSignal(a5.MouseEnter,function()bd(0.88)end))Track(C.AddSignal(a5.MouseLeave,
function()bd(1)end))Track(C.AddSignal(a5.MouseButton1Click,function()ba:Close
'closed'end))end if aW.AllowOverlayDismiss then Track(C.AddSignal(aX.TintFrame.
MouseButton1Click,function()ba:Close'dismissed'end))end if aW.Draggable~=false
then local bc,bd,be=false local bf=ae('TextButton',{Name='ModalDragHandle',Text=
'',AutoButtonColor=false,BackgroundTransparency=1,Size=UDim2.new(1,0,0,a4),
Parent=aX.Root,ZIndex=2})Track(C.AddSignal(bf.InputBegan,function(bg)if bg.
UserInputType==Enum.UserInputType.MouseButton1 or bg.UserInputType==Enum.
UserInputType.Touch then bc=true bd=bg.Position be=aX.Root.Position end end))
Track(C.AddSignal(h.InputChanged,function(bg)if bc and(bg.UserInputType==Enum.
UserInputType.MouseMovement or bg.UserInputType==Enum.UserInputType.Touch)then
local bh=bg.Position-bd aX.Root.Position=UDim2.new(be.X.Scale,be.X.Offset+bh.X,
be.Y.Scale,be.Y.Offset+bh.Y)end end))Track(C.AddSignal(h.InputEnded,function(bg)
if bg.UserInputType==Enum.UserInputType.MouseButton1 or bg.UserInputType==Enum.
UserInputType.Touch then bc=false end end))end if type(aW.Build)=='function'then
n:SafeCallback(aW.Build,ba)end if not aW.Height then local bc=math.max(180,aY.Y-
40)local function FitToContent()if not ba.Open then return end local bd=math.
clamp(a7+a8.AbsoluteContentSize.Y+a6+8,180,bc)if math.abs(bd-aX.Root.Size.Y.
Offset)>2 then aX.Root.Size=UDim2.fromOffset(aZ,bd)end end Track(C.AddSignal(a8:
GetPropertyChangedSignal'AbsoluteContentSize',FitToContent))task.defer(
FitToContent)end aX:Open()n.DialogOpen=false return ba end local aV=aa.Tab:Init(
ah)function ah.AddTab(aW,aX)return aV:New(aX.Title,aX.Icon,ah.TabHolder,aX)end
function ah.SelectTab(aW,aX)aV:SelectTab(aX)end C.AddSignal(ah.TabHolder:
GetPropertyChangedSignal'CanvasPosition',function()aN=aV:GetCurrentTabPos()+16
aO=0 ah.SelectorPosMotor:setGoal(ad(aV:GetCurrentTabPos()))end)do ah.
MinimizeAnimBase={X=ah.Root.Position.X.Offset,Y=ah.Root.Position.Y.Offset,SizeX=
ah.Root.Size.X.Offset,SizeY=ah.Root.Size.Y.Offset}ah.RootScaleMotor:setGoal(ac(1
,{frequency=5}))end return ah end end)()local ac,ad={},C.AddSignal local 
function BuildLabelStack(ae,af,ag)ae=o.Text(ae)af=o.Text(af)local ah,ai=D(
'TextLabel',{FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.
FontWeight.Medium,Enum.FontStyle.Normal),Text=ae or'',TextColor3=Color3.fromRGB(
240,240,240),TextSize=13,TextXAlignment=Enum.TextXAlignment.Left,AutomaticSize=
Enum.AutomaticSize.Y,Size=UDim2.new(1,0,0,14),BackgroundTransparency=1,
LayoutOrder=1,Visible=ae~=nil and ae~='',ThemeTag={TextColor3='Text'}}),D(
'TextLabel',{FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',Text=af
or'',TextColor3=Color3.fromRGB(200,200,200),TextSize=12,TextWrapped=true,
TextXAlignment=Enum.TextXAlignment.Left,AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,Size=UDim2.new(1,0,0,14),LayoutOrder=2,Visible=af~=nil
and af~='',ThemeTag={TextColor3='SubText'}})local aj=D('Frame',{AutomaticSize=
Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),
LayoutOrder=ag},{D('UIListLayout',{SortOrder=Enum.SortOrder.LayoutOrder,Padding=
UDim.new(0,2)}),ah,ai})return aj,ah,ai end local function BuildLargeInputBox(ae,
af)local ag=D('TextBox',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',TextColor3=Color3.fromRGB(200,200,200
),TextSize=13,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.
TextYAlignment.Top,TextWrapped=true,MultiLine=true,ClearTextOnFocus=false,
BackgroundTransparency=1,Text=af.Default or'',PlaceholderText=af.Placeholder or
'',Size=UDim2.new(1,0,0,0),Position=UDim2.new(0,0,0,0),ThemeTag={TextColor3=
'Text',PlaceholderColor3='SubText'}})local ah=D('ScrollingFrame',{Size=UDim2.
new(1,-16,1,-12),Position=UDim2.new(0,8,0,6),BackgroundTransparency=1,
BorderSizePixel=0,CanvasSize=UDim2.fromOffset(0,0),ScrollingDirection=Enum.
ScrollingDirection.Y,ScrollBarThickness=4,ScrollBarImageColor3=Color3.fromRGB(
255,255,255),ScrollBarImageTransparency=0.75,BottomImage=
'rbxassetid://6889812791',MidImage='rbxassetid://6889812721',TopImage=
'rbxassetid://6276641225'},{ag})local ai=D('Frame',{Size=UDim2.new(1,0,0,af.
Height or 100),BackgroundTransparency=0.9,ClipsDescendants=true,Parent=ae,
LayoutOrder=2,ThemeTag={BackgroundColor3='Input'}},{D('UICorner',{CornerRadius=
UDim.new(0,4)}),D('UIStroke',{ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
Transparency=0.5,ThemeTag={Color='InElementBorder'}}),ah})local function 
UpdateHeight()local aj=ah.AbsoluteSize.X if aj<=0 then return end local ak=ag.
Text if ak==''then ak=(ag.PlaceholderText~=''and ag.PlaceholderText)or' 'end
local al=c:GetTextSize(ak,ag.TextSize,ag.Font,Vector2.new(aj,math.huge))local am
=math.max(al.Y+6,ah.AbsoluteSize.Y)ag.Size=UDim2.new(1,0,0,am)ah.CanvasSize=
UDim2.fromOffset(0,am)end task.defer(UpdateHeight)C.AddSignal(ag:
GetPropertyChangedSignal'Text',UpdateHeight)C.AddSignal(ah:
GetPropertyChangedSignal'AbsoluteSize',UpdateHeight)return ai,ag end local 
function BuildConnectedCard(ae,af,ag,ah)ag.Placeholder=o.Text(ag.Placeholder)
local ai,aj,ak,al=D('Frame',{Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.
AutomaticSize.Y,BackgroundTransparency=0.89,BackgroundColor3=Color3.fromRGB(130,
130,130),Parent=ae,Visible=af.Visible and af.Visible or true,LayoutOrder=7,
ThemeTag={BackgroundColor3='Element',BackgroundTransparency=
'ElementTransparency'}},{D('UICorner',{CornerRadius=UDim.new(0,4)}),D('UIStroke'
,{Transparency=0.5,ApplyStrokeMode=Enum.ApplyStrokeMode.Border,ThemeTag={Color=
'ElementBorder'}}),D('UIListLayout',{SortOrder=Enum.SortOrder.LayoutOrder})}),
BuildLabelStack(af.Title,af.Description,1)aj.Size=UDim2.new(1,-ah,0,0)local am=
D('TextButton',{Text='',AutomaticSize=Enum.AutomaticSize.Y,Size=UDim2.new(1,0,0,
0),BackgroundTransparency=1,Parent=ai,LayoutOrder=1},{D('UIPadding',{PaddingTop=
UDim.new(0,13),PaddingBottom=UDim.new(0,8),PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10)}),aj})D('Frame',{Size=UDim2.new(1,-20,0,1),Position=
UDim2.new(0.5,0,0,0),AnchorPoint=Vector2.new(0.5,0),BackgroundTransparency=0.5,
Parent=ai,LayoutOrder=2,ThemeTag={BackgroundColor3='ElementBorder'}})local an=D(
'Frame',{AutomaticSize=Enum.AutomaticSize.Y,Size=UDim2.new(1,0,0,0),
BackgroundTransparency=1,Parent=ai,LayoutOrder=3},{D('UIPadding',{PaddingTop=
UDim.new(0,5),PaddingBottom=UDim.new(0,13),PaddingLeft=UDim.new(0,10),
PaddingRight=UDim.new(0,10)}),D('UIListLayout',{SortOrder=Enum.SortOrder.
LayoutOrder,Padding=UDim.new(0,6)})})if(ag.Title and ag.Title~='')or(ag.
Description and ag.Description~='')then local ao=BuildLabelStack(ag.Title,ag.
Description,1)ao.Parent=an end local ao,ap if ag.Size=='Large'then ao,ap=
BuildLargeInputBox(an,ag)else local aq=aa.Textbox(an,true)aq.Frame.Size=UDim2.
new(1,0,0,30)aq.Frame.LayoutOrder=2 aq.Input.MultiLine=false aq.Input.Text=ag.
Default or''aq.Input.PlaceholderText=ag.Placeholder or''ao,ap=aq.Frame,aq.Input
end do local aq,ar=C.SpringMotor(C.GetThemeProperty'ElementTransparency',ai,
'BackgroundTransparency',false,true)C.AddSignal(am.MouseEnter,function()ar(C.
GetThemeProperty'ElementTransparency'-C.GetThemeProperty'HoverChange')end)C.
AddSignal(am.MouseLeave,function()ar(C.GetThemeProperty'ElementTransparency')end
)C.AddSignal(am.MouseButton1Down,function()ar(C.GetThemeProperty
'ElementTransparency'+C.GetThemeProperty'HoverChange')end)C.AddSignal(am.
MouseButton1Up,function()ar(C.GetThemeProperty'ElementTransparency'-C.
GetThemeProperty'HoverChange')end)end return ai,am,ak,al,ao,ap end local 
function HookConnectedInput(ae,af,ag,ah)af.Callback=af.Callback or function(ai)
end if af.Finished==nil then af.Finished=(af.Size=='Large')end ae.InputValue=af.
Default or''ae.Input={Frame=ag,Box=ah}function ae.SetInputValue(ai,aj)aj=aj or''
if af.Size~='Large'and aj:find'[\r\n]'then aj=aj:gsub('[\r\n]+',' ')end if af.
MaxLength and#aj>af.MaxLength then aj=aj:sub(1,af.MaxLength)end if af.Numeric
and aj:len()>0 and not tonumber(aj)then aj=ae.InputValue end ae.InputValue=aj if
ah.Text~=aj then ah.Text=aj end n:SafeCallback(af.Callback,ae.InputValue)n:
SafeCallback(ae.InputChanged,ae.InputValue)end function ae.OnInputChanged(ai,aj)
ae.InputChanged=aj aj(ae.InputValue)end if af.Finished then C.AddSignal(ah.
FocusLost,function(ai)if not ai and af.Size~='Large'then return end ae:
SetInputValue(ah.Text)end)else C.AddSignal(ah:GetPropertyChangedSignal'Text',
function()ae:SetInputValue(ah.Text)end)end end ac.Button=(function()local ae={}
ae.__index=ae ae.__type='Button'function ae.New(af,ag)assert(ag.Title,
'Button - Missing Title')ag.Callback=ag.Callback or function()end local ah=ag.
Input if ah==true then ah={}end local ai=type(ah)=='table'if ai then ah.Size=(ah
.Size=='Large')and'Large'or'Small'end if not ai then local aj=aa.Element(ag.
Title,ag.Description,af.Container,true,ag)D('ImageLabel',{Image=
'rbxassetid://10709791437',Size=UDim2.fromOffset(16,16),AnchorPoint=Vector2.new(
1,0.5),Position=UDim2.new(1,-10,0.5,0),BackgroundTransparency=1,Parent=aj.Frame,
ThemeTag={ImageColor3='Text'}})C.AddSignal(aj.Frame.MouseButton1Click,function()
n:SafeCallback(ag.Callback)end)return aj end local aj,ak,al,am,an,ao=
BuildConnectedCard(af.Container,ag,ah,34)D('ImageLabel',{Image=
'rbxassetid://10709791437',Size=UDim2.fromOffset(16,16),AnchorPoint=Vector2.new(
1,0.5),Position=UDim2.new(1,-10,0.5,0),BackgroundTransparency=1,Parent=ak,
ThemeTag={ImageColor3='Text'}})C.AddSignal(ak.MouseButton1Click,function()n:
SafeCallback(ag.Callback)end)local ap={Frame=aj,Type='Button'}function ap.
SetTitle(aq,ar)al.Text=ar al.Visible=ar~=nil and ar~=''end function ap.SetDesc(
aq,ar)am.Text=ar or''am.Visible=ar~=nil and ar~=''end function ap.Visible(aq,ar)
aj.Visible=ar end HookConnectedInput(ap,ah,an,ao)return ap end return ae end)()
ac.Toggle=(function()local ae={}ae.__index=ae ae.__type='Toggle'function ae.New(
af,ag,ah)assert(ah.Title,'Toggle - Missing Title')local ai,aj={Value=ah.Default
or false,Callback=ah.Callback or function(ai)end,Type='Toggle'},ah.Input if aj==
true then aj={}end local ak=type(aj)=='table'if ak then aj.Size=(aj.Size==
'Large')and'Large'or'Small'end local al,am=D('ImageLabel',{AnchorPoint=Vector2.
new(0,0.5),Size=UDim2.fromOffset(14,14),Position=UDim2.new(0,2,0.5,0),Image=
'http://www.roblox.com/asset/?id=12266946128',ImageTransparency=0.5,ThemeTag={
ImageColor3='ToggleSlider'}}),D('UIStroke',{Transparency=0.5,ThemeTag={Color=
'ToggleSlider'}})local an,ao,ap,aq,ar,as,at=D('Frame',{Size=UDim2.fromOffset(36,
18),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-10,0.5,0),
BackgroundTransparency=1,ThemeTag={BackgroundColor3='Accent'}},{D('UICorner',{
CornerRadius=UDim.new(0,9)}),am,al}),nil,nil,nil,nil,nil,nil if not ak then ao=
aa.Element(ah.Title,ah.Description,af.Container,true,ah)ao.DescLabel.Size=UDim2.
new(1,-54,0,14)an.Parent=ao.Frame ap=ao.Frame else local au au,ap,as,at,aq,ar=
BuildConnectedCard(af.Container,ah,aj,54)an.Parent=ap ao={Frame=au}end ai.
Elements=ao function ai.SetTitle(au,av)if ak then as.Text=av as.Visible=av~=nil
and av~=''else ao.SetTitle(av)end end function ai.SetDesc(au,av)if ak then at.
Text=av or''at.Visible=av~=nil and av~=''else ao.SetDesc(av)end end function ai.
Visible(au,av)ao.Frame.Visible=av end function ai.OnChanged(au,av)ai.Changed=av
av(ai.Value)end function ai.SetValue(au,av)av=not not av ai.Value=av C.
OverrideTag(am,{Color=ai.Value and'Accent'or'ToggleSlider'})C.OverrideTag(al,{
ImageColor3=ai.Value and'ToggleToggled'or'ToggleSlider'})b:Create(al,TweenInfo.
new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Position=UDim2.new(0,
ai.Value and 19 or 2,0.5,0)}):Play()b:Create(an,TweenInfo.new(0.25,Enum.
EasingStyle.Quint,Enum.EasingDirection.Out),{BackgroundTransparency=ai.Value and
0.45 or 1}):Play()al.ImageTransparency=ai.Value and 0 or 0.5 n:SafeCallback(ai.
Callback,ai.Value)n:SafeCallback(ai.Changed,ai.Value)end function ai.Destroy(au)
ao.Frame:Destroy()n.Options[ag]=nil end C.AddSignal(ap.MouseButton1Click,
function()ai:SetValue(not ai.Value)end)ai:SetValue(ai.Value)if ak then
HookConnectedInput(ai,aj,aq,ar)end n.Options[ag]=ai return ai end return ae end
)()ac.Dropdown=(function()local ae={}ae.__index=ae ae.__type='Dropdown'local af=
C.New function ae.New(ag,ah,ai)local aj=false if n.Window and n.Window.
DropdownsOutsideWindow~=nil then aj=n.Window.DropdownsOutsideWindow elseif n.
Windows and#n.Windows>0 then for ak=#n.Windows,1,-1 do local al=n.Windows[ak]if
al and al.DropdownsOutsideWindow~=nil then aj=al.DropdownsOutsideWindow break
end end end local ak={Values=ai.Values,Value=ai.Default,Multi=ai.Multi,Buttons={
},Opened=false,Type='Dropdown',Callback=ai.Callback or function()end,Search=(ai.
Search==nil)and true or ai.Search,KeepSearch=ai.KeepSearch==true,OpenToRight=aj}
if ak.Multi and ai.AllowNull then ak.Value={}end local function NormalizeOptions
(al)local am,an,ao={},{},{}if type(al)=='table'then local ap=(#al>0)and ipairs
or pairs for aq,ar in ap(al)do local as,at if type(ar)=='table'then as=ar.Value
if as==nil then as=ar.Label end at=ar.Label if at==nil and as~=nil then at=
tostring(as)end else as,at=ar,tostring(ar)end if as~=nil and ao[as]==nil then am
[#am+1]={Value=as,Label=at}an[#an+1]=as ao[as]=at end end end return am,an,ao
end local al,am local function ApplyValues(an)ak.Values=an al=an am=(type(an)==
'table')and#an or 0 ak.Options,ak.ValueList,ak.LabelMap=NormalizeOptions(an)end
ApplyValues(ai.Values)local function SyncOptions()if type(ak.Values)~='table'
then return end if ak.Values~=al or#ak.Values~=am then ApplyValues(ak.Values)end
end local function EnsureMultiValue()if ai.Multi and type(ak.Value)~='table'then
ak.Value={}end end function ak.GetLabel(an,ao)if ao==nil then return''end
SyncOptions()local ap=ak.LabelMap[ao]if ap==nil then return tostring(ao)end
return ap end local an=aa.Element(ai.Title,ai.Description,ag.Container,false,ai)
an.DescLabel.Size=UDim2.new(1,-170,0,14)ak.SetTitle=an.SetTitle ak.SetDesc=an.
SetDesc ak.Visible=an.Visible ak.Elements=an local ao,ap,aq,ar,as=ag.Container,
af('TextLabel',{FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',
Enum.FontWeight.Regular,Enum.FontStyle.Normal),Text='',TextColor3=Color3.
fromRGB(240,240,240),TextSize=14,AutomaticSize=Enum.AutomaticSize.Y,
TextYAlignment=Enum.TextYAlignment.Center,TextXAlignment=Enum.TextXAlignment.
Left,Size=UDim2.new(1,-40,0.5,0),Position=UDim2.new(0,8,0.5,0),AnchorPoint=
Vector2.new(0,0.5),BackgroundTransparency=1,TextTruncate=Enum.TextTruncate.AtEnd
,ThemeTag={TextColor3='Text'}}),af('ImageLabel',{Image=
'rbxassetid://10709797508',Size=UDim2.fromOffset(16,16),AnchorPoint=Vector2.new(
1,0.5),Position=UDim2.new(1,-8,0.5,0),BackgroundTransparency=1,ThemeTag={
ImageColor3='SubText'}}),8,af('UISizeConstraint',{MinSize=Vector2.new(70,0),
MaxSize=Vector2.new(160,math.huge)})local at=af('TextButton',{Size=UDim2.new(
0.45,0,0,30),Position=UDim2.new(1,-10,0.5,0),AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=0.9,Parent=an.Frame,ThemeTag={BackgroundColor3=
'DropdownFrame'}},{as,af('UICorner',{CornerRadius=UDim.new(0,5)}),af('UIStroke',
{Transparency=0.5,ApplyStrokeMode=Enum.ApplyStrokeMode.Border,ThemeTag={Color=
'InElementBorder'}}),aq,ap})ak.DisplayLabel=ap ak.Inner=at if ai.FullWidth then
an.DescLabel.Size=UDim2.new(1,0,0,14)as.MaxSize=Vector2.new(math.huge,math.huge)
local au=af('Frame',{BackgroundTransparency=1,Size=UDim2.new(1,0,0,30+ar),
LayoutOrder=5,Parent=an.LabelHolder},{af('UIPadding',{PaddingTop=UDim.new(0,ar)}
)})at.AnchorPoint=Vector2.new(0,0)at.Position=UDim2.fromOffset(0,0)at.Size=UDim2
.new(1,0,1,0)at.Parent=au else local function FitDropdownDesc()local au=an.Frame
.AbsoluteSize.X if au<=0 then return end local av,aw=at.AbsoluteSize.X+10,math.
max(0,au-28-60)an.DescLabel.Size=UDim2.new(1,-math.min(av,aw),0,14)end ad(at:
GetPropertyChangedSignal'AbsoluteSize',FitDropdownDesc)ad(an.Frame:
GetPropertyChangedSignal'AbsoluteSize',FitDropdownDesc)FitDropdownDesc()end
local au=af('UIListLayout',{Padding=UDim.new(0,3)})local av,aw,ax,ay,az,aA=af(
'ScrollingFrame',{Size=UDim2.new(1,-5,1,-10),Position=UDim2.fromOffset(5,5),
BackgroundTransparency=1,BottomImage='rbxassetid://6889812791',MidImage=
'rbxassetid://6889812721',TopImage='rbxassetid://6276641225',
ScrollBarImageColor3=Color3.fromRGB(255,255,255),ScrollBarImageTransparency=0.75
,ScrollBarThickness=5,BorderSizePixel=0,CanvasSize=UDim2.fromScale(0,0),
AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollingDirection=Enum.
ScrollingDirection.Y},{au}),nil,nil,nil,nil,nil if ak.Search then az=af('Frame',
{Size=UDim2.new(1,-10,0,28),Position=UDim2.fromOffset(5,5),
BackgroundTransparency=0.7,BackgroundColor3=Color3.fromRGB(20,20,20),ThemeTag={
BackgroundColor3='Element'},ZIndex=24},{af('UICorner',{CornerRadius=UDim.new(0,4
)})})aA=af('TextBox',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',TextColor3=Color3.fromRGB(200,200,200
),TextSize=13,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.
TextYAlignment.Center,BackgroundTransparency=1,Size=UDim2.new(1,-36,1,0),
Position=UDim2.new(0,8,0,0),PlaceholderText=o.t'fluent.search.placeholder',
PlaceholderColor3=Color3.fromRGB(120,120,120),ClearTextOnFocus=false,Text='',
Parent=az,ThemeTag={TextColor3='Text',PlaceholderColor3='SubText'},ZIndex=24})o.
OnChanged(function()if aA and aA.Parent then aA.PlaceholderText=o.t
'fluent.search.placeholder'end end)af('ImageLabel',{Size=UDim2.fromOffset(16,16)
,Position=UDim2.new(1,-13,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,Image='rbxassetid://10734943674',Parent=az,
ImageTransparency=0.3,ZIndex=25,ThemeTag={ImageColor3='SubText'}})av.Position=
UDim2.fromOffset(5,38)av.Size=UDim2.new(1,-5,1,-43)local aB=0 local function 
ApplyFilter()aB=aB+1 local aC=aB task.spawn(function()task.wait(0.01)if aC~=aB
then return end local aD=(aA.Text or''):lower()for aE,aF in next,av:GetChildren(
)do if not aF:IsA'UIListLayout'then local aG=aF:FindFirstChild'ButtonLabel'and
aF.ButtonLabel.Text or''aF.Visible=aD==''or aG:lower():find(aD,1,true)~=nil end
end task.wait()ay()task.wait()ax()task.wait()aw()end)end C.AddSignal(aA:
GetPropertyChangedSignal'Text',ApplyFilter)end local aB if ai.
DropdownsOutsideWindow then aB=0.25 else aB=0 end local aC,aD=af('Frame',{Size=
UDim2.fromScale(1,0.6),BackgroundTransparency=aB,ThemeTag={BackgroundColor3=
'DropdownHolder'}},{az,av,af('UICorner',{CornerRadius=UDim.new(0,7)}),af(
'UIStroke',{ApplyStrokeMode=Enum.ApplyStrokeMode.Border,ThemeTag={Color=
'DropdownBorder'}}),af('ImageLabel',{BackgroundTransparency=1,Image=
'http://www.roblox.com/asset/?id=5554236805',ScaleType=Enum.ScaleType.Slice,
SliceCenter=Rect.new(23,23,277,277),Size=UDim2.fromScale(1,1)+UDim2.fromOffset(
30,30),Position=UDim2.fromOffset(-15,-15),ImageColor3=Color3.fromRGB(0,0,0),
ImageTransparency=0.1})}),af('UISizeConstraint',{MinSize=Vector2.new(170,0)})
local aE=af('Frame',{BackgroundTransparency=1,Size=UDim2.fromOffset(170,300),
Parent=n.GUI,Visible=false},{aC,aD})table.insert(n.OpenFrames,aE)local aF local 
function ResolveWindowRoot()if aF and aF.Parent then return aF end aF=nil if n.
Window and n.Window.Root then aF=n.Window.Root elseif n.Windows and#n.Windows>0
then for aG=#n.Windows,1,-1 do local aH=n.Windows[aG]if aH and aH.Root then aF=
aH.Root break end end end if not aF and ao then local aG=ao.Parent while aG do
if aG:IsA'Frame'then if aG:FindFirstChild'ContainerCanvas'or(aG.Name and aG:
FindFirstChild'TitleBar')then aF=aG break end end if aG:IsA'ScreenGui'then break
end aG=aG.Parent end end return aF end ResolveWindowRoot()local aG,aH,aI=5,5,80
local function GuiOrigin()local aJ=aE.AbsoluteSize if aJ.X>0 or aJ.Y>0 then
local aK,aL=aE.AbsolutePosition,aE.Position return aK.X-aL.X.Offset,aK.Y-aL.Y.
Offset end local aK=n.GUI.AbsoluteSize if aK.Y>0 then return math.max(d.
ViewportSize.X-aK.X,0),math.max(d.ViewportSize.Y-aK.Y,0)end return 0,0 end local 
function ToLocal(aJ,aK)local aL,aM=GuiOrigin()return aJ-aL,aK-aM end local aJ=0
local function VerifyPlacement(aK,aL)aJ=aJ+1 local aM=aJ task.spawn(function()
for aN=1,2 do g.Heartbeat:Wait()if aM~=aJ or not ak.Opened then return end local
aO=aE.AbsolutePosition local aP,aQ=aK-aO.X,aL-aO.Y if math.abs(aP)<1 and math.
abs(aQ)<1 then return end local aR=aE.Position aE.Position=UDim2.fromOffset(math
.floor(aR.X.Offset+aP),math.floor(aR.Y.Offset+aQ))end end)end local function 
GetScreenRect()local aK=n.GUI.AbsoluteSize if aK.X<1 or aK.Y<1 then aK=d.
ViewportSize end return aK.X,aK.Y end local function GetBounds()local aK,aL=
GetScreenRect()if not ak.OpenToRight then local aM=ResolveWindowRoot()if aM then
local aN,aO=ToLocal(aM.AbsolutePosition.X,aM.AbsolutePosition.Y)local aP=aM.
AbsoluteSize return math.max(aN,0),math.max(aO,0),math.min(aN+aP.X,aK),math.min(
aO+aP.Y,aL)end end return 0,0,aK,aL end local function ResolvePlacement(aK)local
aL,aM,aN,aO=GetBounds()local aP,aQ=ToLocal(at.AbsolutePosition.X,at.
AbsolutePosition.Y)local aR=aQ+at.AbsoluteSize.Y local aS,aT,aU=(aO-aH)-(aR+aG),
(aQ-aG)-(aM+aH),nil if aK<=aS then aU=false elseif aK<=aT then aU=true else aU=
aT>aS end local aV=math.max(aU and aT or aS,0)local aW,aX=math.max(aI,math.min(
aK,aV)),(aO-aM)-aH*2 if aX>0 and aW>aX then aW=aX end return aU,math.floor(aW),
aM,aO end function aw()if not aE or not at then return end local aK,aM,aO,aP=
GetBounds()local aQ,aR=ToLocal(at.AbsolutePosition.X,at.AbsolutePosition.Y)local
aS,aT,aU=at.AbsoluteSize.Y,math.max(aE.Size.X.Offset,aE.AbsoluteSize.X),aE.Size.
Y.Offset if aU<=0 then aU=aE.AbsoluteSize.Y end local aV,aW if ak.OpenToRight
then local aX,aY,aZ=ResolveWindowRoot(),nil,nil if aX then local a_,a0=ToLocal(
aX.AbsolutePosition.X,aX.AbsolutePosition.Y)aY=a_ aZ=a_+aX.AbsoluteSize.X aW=a0+
aX.AbsoluteSize.Y/2-aU/2 else aY=aQ aZ=aQ+at.AbsoluteSize.X aW=aR+aS/2-aU/2 end
aV=aZ+aG if aV+aT>aO-aH then local a_=aY-aT-aG aV=(a_>=aK+aH)and a_ or math.max(
aK+aH,aO-aH-aT)end ak.OpenUp=false else local aX aX,aU=ResolvePlacement(aU)ak.
OpenUp=aX if aU~=aE.Size.Y.Offset then aE.Size=UDim2.fromOffset(aE.Size.X.Offset
,aU)end aV=aQ-1 if aV+aT>aO-aH then aV=aO-aH-aT end if aV<aK+aH then aV=aK+aH
end aW=aX and(aR-aG-aU)or(aR+aS+aG)end local aX=math.max(aM+aH,aP-aH-aU)aW=math.
clamp(aW,aM+aH,aX)if ak.OpenUp then aC.AnchorPoint=Vector2.new(0,1)aC.Position=
UDim2.fromScale(0,1)else aC.AnchorPoint=Vector2.new(0,0)aC.Position=UDim2.
fromScale(0,0)end ak.SavedY=nil aE.Position=UDim2.fromOffset(math.floor(aV),math
.floor(aW))if ak.Opened then local aY,aZ=GuiOrigin()VerifyPlacement(math.floor(
aV)+aY,math.floor(aW)+aZ)end end local aK=0 function ax()if not aE or not aC
then return end local aM=0 for aO,aP in next,av:GetChildren()do if not aP:IsA
'UIListLayout'and aP.Visible then aM=aM+1 end end local aO,aP,aQ,aR=32,3,ak.
Search and 38 or 0,10 local aS,aT=(aM>0)and(aM*aO+(aM-1)*aP+aR+aQ)or(aR+aQ),392
local aU=math.min(aS,aT)if ak.OpenToRight then local aV,aW,aX,aY=GetBounds()
local aZ=(aY-aW)-aH*2 if aZ>0 then aU=math.floor(math.min(aU,aZ))end else local
aW aW,aU=ResolvePlacement(aU)end local aW=math.max(170,aK>0 and(aK+20)or 170)if
ai.FullWidth and at then aW=math.max(aW,at.AbsoluteSize.X)end local aX,aY,aZ=
GetBounds()local a_=math.floor((aZ-aX)-aH*2)if a_>0 then aW=math.min(aW,a_)end
if aD then aD.MinSize=Vector2.new(math.min(170,math.max(aW,1)),0)end aE.Size=
UDim2.fromOffset(aW,aU)local a0=aM>10 aC.Size=UDim2.fromScale(1,a0 and(aU/math.
max(aU,1))or 1)end function ay()av.CanvasSize=UDim2.fromOffset(0,au.
AbsoluteContentSize.Y)end ax()aw()ay()local function Reflow()if not ak.Opened
then return end ax()aw()end C.AddSignal(at:GetPropertyChangedSignal
'AbsolutePosition',function()if ak.OpenToRight then return end ax()aw()end)if aF
then C.AddSignal(aF:GetPropertyChangedSignal'AbsolutePosition',Reflow)C.
AddSignal(aF:GetPropertyChangedSignal'AbsoluteSize',Reflow)end C.AddSignal(d:
GetPropertyChangedSignal'ViewportSize',Reflow)C.AddSignal(au:
GetPropertyChangedSignal'AbsoluteContentSize',function()ay()task.wait()ax()task.
wait()aw()end)C.AddSignal(at.MouseButton1Click,function()if ak.Opened then ak:
Close()return end ak:Open()end)C.AddSignal(at.InputBegan,function(aM)if aM.
UserInputType==Enum.UserInputType.Touch then if ak.Opened then ak:Close()return
end ak:Open()end end)C.AddSignal(ap:GetPropertyChangedSignal'Text',function()for
aM,aO in next,av:GetChildren()do if not aO:IsA'UIListLayout'then aO.Visible=true
end end ax()aw()end)C.AddSignal(h.InputBegan,function(aM)if aM.UserInputType==
Enum.UserInputType.MouseButton1 or aM.UserInputType==Enum.UserInputType.Touch
then local aO,aP,aQ=aC.AbsolutePosition,aC.AbsoluteSize,21 if e.X<aO.X or e.X>aO
.X+aP.X or e.Y<(aO.Y-aQ)or e.Y>aO.Y+aP.Y+aQ then ak:Close()end end end)local aM=
ag.ScrollFrame function ak.Open(aO)ak.Opened=true if ak.OpenToRight then ak.
SavedY=nil end for aP,aQ in ipairs(n.OpenFrames)do if aQ~=aE and aQ.Visible then
aQ.Visible=false end end if aA and not ak.KeepSearch then aA.Text=''end aE.
Visible=true ax()aw()ay()task.wait()b:Create(aC,TweenInfo.new(0.3,Enum.
EasingStyle.Quart,Enum.EasingDirection.Out),{Size=UDim2.fromScale(1,1)}):Play()
end function ak.Close(aO)ak.Opened=false if ak.OpenToRight then ak.SavedY=nil
end aC.Size=UDim2.fromScale(1,1)aE.Visible=false ak:Display()for aP,aQ in next,
av:GetChildren()do if not aQ:IsA'UIListLayout'then aQ.Visible=true end end end
function ak.Display(aO)SyncOptions()EnsureMultiValue()local aP=''if ai.Multi
then for aQ,aR in ipairs(ak.Options)do if ak.Value[aR.Value]then aP=aP..aR.Label
..', 'end end aP=aP:sub(1,#aP-2)else aP=ak:GetLabel(ak.Value)end ap.Text=(aP==''
and'--'or aP)end function ak.GetActiveValues(aO)EnsureMultiValue()if ai.Multi
then local aP={}for aQ,aR in next,ak.Value do table.insert(aP,aQ)end return aP
else return ak.Value and 1 or 0 end end function ak.SetActiveValues(aO,aP)ak.
Value=aP n:SafeCallback(ak.Callback,ak.Value)n:SafeCallback(ak.Changed,ak.Value)
ak:BuildDropdownList()end function ak.BuildDropdownList(aO)SyncOptions()
EnsureMultiValue()local aP={}for aQ,aR in next,av:GetChildren()do if not aR:IsA
'UIListLayout'then aR:Destroy()end end local aQ=0 for aR,aS in ipairs(ak.Options
)do local aT,aU,aW={},aS.Value,aS.Label aQ=aQ+1 local aX,aY=af('Frame',{Size=
UDim2.fromOffset(4,14),BackgroundColor3=Color3.fromRGB(76,194,255),Position=
UDim2.fromOffset(-1,16),AnchorPoint=Vector2.new(0,0.5),ThemeTag={
BackgroundColor3='Accent'}},{af('UICorner',{CornerRadius=UDim.new(0,2)})}),af(
'TextLabel',{FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',Text=aW
,TextColor3=Color3.fromRGB(200,200,200),TextSize=13,TextXAlignment=Enum.
TextXAlignment.Left,BackgroundColor3=Color3.fromRGB(255,255,255),AutomaticSize=
Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.fromScale(1,1),Position
=UDim2.fromOffset(10,0),Name='ButtonLabel',ThemeTag={TextColor3='Text'}})local
aZ,a_=af('TextButton',{Size=UDim2.new(1,-5,0,32),BackgroundTransparency=1,ZIndex
=23,Text='',Parent=av,ThemeTag={BackgroundColor3='DropdownOption'}},{aX,aY,af(
'UICorner',{CornerRadius=UDim.new(0,6)})}),nil if ai.Multi then a_=ak.Value[aU]
else a_=ak.Value==aU end local a0,a1=C.SpringMotor(1,aZ,'BackgroundTransparency'
)local a2,a3=C.SpringMotor(1,aX,'BackgroundTransparency')local a4=B.SingleMotor.
new(6)a4:onStep(function(a5)aX.Size=UDim2.new(0,4,0,a5)end)C.AddSignal(aZ.
MouseEnter,function()a1(a_ and 0.85 or 0.89)end)C.AddSignal(aZ.MouseLeave,
function()a1(a_ and 0.89 or 1)end)C.AddSignal(aZ.MouseButton1Down,function()a1(
0.92)end)C.AddSignal(aZ.MouseButton1Up,function()a1(a_ and 0.85 or 0.89)end)
function aT.UpdateButton(a5)if ai.Multi then a_=ak.Value[aU]if a_ then a1(0.89)
end else a_=ak.Value==aU a1(a_ and 0.89 or 1)end a4:setGoal(B.Spring.new(a_ and
14 or 6,{frequency=6}))a3(a_ and 0 or 1)end ad(aZ.Activated,function()if ai.
NoSelect then return end local a5=not a_ if ak:GetActiveValues()==1 and not a5
and not ai.AllowNull then else if ai.Multi then a_=a5 ak.Value[aU]=a_ and true
or nil else a_=a5 ak.Value=a_ and aU or nil for a6,a7 in next,aP do a7:
UpdateButton()end end aT:UpdateButton()ak:Display()n:SafeCallback(ak.Callback,ak
.Value)n:SafeCallback(ak.Changed,ak.Value)end end)aT:UpdateButton()ak:Display()
if ai.OnRowBuilt then n:SafeCallback(ai.OnRowBuilt,{Button=aZ,Label=aY,Selector=
aX,Value=aU,Text=aY.Text})end aP[aZ]=aT end aK=0 for aR,aS in next,aP do if aR.
ButtonLabel then local aT=aR.ButtonLabel.TextBounds.X if aT>aK then aK=aT end
end end aK=math.max(150,aK+40)ay()ax()if ak.Opened then aw()end end function ak.
SetValues(aO,aP)if aP then ApplyValues(aP)end ak:BuildDropdownList()end function
ak.OnChanged(aO,aP)ak.Changed=aP aP(ak.Value)end function ak.SetValue(aO,aP)
SyncOptions()if ak.Multi then local aQ={}for aR,aS in next,aP do if table.find(
ak.ValueList,aR)then aQ[aR]=true end end ak.Value=aQ else if not aP then ak.
Value=nil elseif table.find(ak.ValueList,aP)then ak.Value=aP end end ak:
BuildDropdownList()n:SafeCallback(ak.Callback,ak.Value)n:SafeCallback(ak.Changed
,ak.Value)end function ak.Destroy(aO)an:Destroy()n.Options[ah]=nil end ak:
BuildDropdownList()ak:Display()local aO={}if type(ai.Default)=='string'then
local aP=table.find(ak.ValueList,ai.Default)if aP then table.insert(aO,aP)end
elseif type(ai.Default)=='table'then for aP,aQ in next,ai.Default do local aR=
table.find(ak.ValueList,aQ)if aR then table.insert(aO,aR)end end elseif type(ai.
Default)=='number'and ak.ValueList[ai.Default]~=nil then table.insert(aO,ai.
Default)end if next(aO)then for aP=1,#aO do local aQ=aO[aP]if ai.Multi then ak.
Value[ak.ValueList[aQ] ]=true else ak.Value=ak.ValueList[aQ]end if not ai.Multi
then break end end ak:BuildDropdownList()ak:Display()end n.Options[ah]=ak return
ak end return ae end)()ac.Paragraph=(function()local ae={}ae.__index=ae ae.
__type='Paragraph'function ae.New(af,ag)ag.Content=ag.Content or''local ah=aa.
Element(ag.Title,ag.Content,ae.Container,false,ag)ah.Frame.
BackgroundTransparency=0.92 ah.Border.Transparency=0.6 ah.SetTitle=ah.SetTitle
ah.SetDesc=ah.SetDesc ah.Visible=ah.Visible ah.Elements=ah return ah end return
ae end)()ac.Slider=(function()local ae={}ae.__index=ae ae.__type='Slider'
function ae.New(af,ag,ah)assert(ah.Title,'Slider - Missing Title.')assert(ah.
Default,'Slider - Missing default value.')assert(ah.Min,
'Slider - Missing minimum value.')assert(ah.Max,
'Slider - Missing maximum value.')assert(ah.Rounding,
'Slider - Missing rounding value.')local ai,aj,ak={Value=nil,Min=ah.Min,Max=ah.
Max,Rounding=ah.Rounding,Callback=ah.Callback or function(ai)end,Type='Slider'},
false,aa.Element(ah.Title,ah.Description,af.Container,false,ah)ak.DescLabel.Size
=UDim2.new(1,-170,0,14)ai.Elements=ak ai.SetTitle=ak.SetTitle ai.SetDesc=ak.
SetDesc ai.Visible=ak.Visible local al=D('ImageLabel',{AnchorPoint=Vector2.new(0
,0.5),Position=UDim2.new(0,-7,0.5,0),Size=UDim2.fromOffset(14,14),Image=
'http://www.roblox.com/asset/?id=12266946128',ThemeTag={ImageColor3='Accent'}})
local am,an,ao,ap=D('Frame',{BackgroundTransparency=1,Position=UDim2.fromOffset(
7,0),Size=UDim2.new(1,-14,1,0)},{al}),D('Frame',{Size=UDim2.new(0,0,1,0),
ThemeTag={BackgroundColor3='Accent'}},{D('UICorner',{CornerRadius=UDim.new(1,0)}
)}),D('TextLabel',{FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',
Text='Value',TextSize=12,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.
Right,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,Size
=UDim2.new(0,100,0,14),Position=UDim2.new(0,-4,0.5,0),AnchorPoint=Vector2.new(1,
0.5),ThemeTag={TextColor3='SubText'}}),D('TextBox',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',Text='',TextSize=12,TextXAlignment=
Enum.TextXAlignment.Right,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=0.8,Size=UDim2.new(0,0,0,14),Position=UDim2.new(0,-4,0.5,
0),AnchorPoint=Vector2.new(1,0.5),PlaceholderText=o.t'fluent.common.value',
ClearTextOnFocus=false,Visible=true,TextWrapped=false,TextTransparency=1,
BackgroundTransparency=1,ThemeTag={TextColor3='SubText',BackgroundColor3=
'Element'}},{D('UICorner',{CornerRadius=UDim.new(0,3)}),D('UIStroke',{
ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Color=Color3.fromRGB(0,0,0),
Transparency=1,Thickness=1})})o.OnChanged(function()if ap and ap.Parent then ap.
PlaceholderText=o.t'fluent.common.value'end end)local aq=D('Frame',{Size=UDim2.
new(1,0,0,4),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-10,0.5,0),
BackgroundTransparency=0.4,Parent=ak.Frame,ThemeTag={BackgroundColor3=
'SliderRail'}},{D('UICorner',{CornerRadius=UDim.new(1,0)}),D('UISizeConstraint',
{MinSize=Vector2.new(70,0),MaxSize=Vector2.new(150,math.huge)}),ao,ap,an,am})
local function FitSliderDesc()local ar=ak.Frame.AbsoluteSize.X if ar<=0 then
return end local as,at=aq.AbsoluteSize.X+20,math.max(0,ar-28-60)ak.DescLabel.
Size=UDim2.new(1,-math.min(as,at),0,14)end ad(aq:GetPropertyChangedSignal
'AbsoluteSize',FitSliderDesc)ad(ak.Frame:GetPropertyChangedSignal'AbsoluteSize',
FitSliderDesc)FitSliderDesc()local ar,as=false,false local function 
calculateInputWidth(at)local au,av,aw,ax=game:GetService'TextService':
GetTextSize(at or'0',12,Enum.Font.SourceSans,Vector2.new(1000,14)),8,25,80
return math.max(aw,math.min(ax,au.X+av))end C.AddSignal(ak.Frame.MouseEnter,
function()ar=true if not ap:IsFocused()then ao.Visible=false ap.Text=tostring(ai
.Value)local at=calculateInputWidth(tostring(ai.Value))ap.Size=UDim2.new(0,at,0,
14)as=true local au=TweenInfo.new(0.25,Enum.EasingStyle.Quart,Enum.
EasingDirection.Out)b:Create(ap,au,{TextTransparency=0,BackgroundTransparency=
0.8}):Play()b:Create(ap.UIStroke,au,{Transparency=0.7}):Play()end end)C.
AddSignal(ak.Frame.MouseLeave,function()ar=false if not ap:IsFocused()and as
then local at=TweenInfo.new(0.2,Enum.EasingStyle.Quart,Enum.EasingDirection.In)b
:Create(ap,at,{TextTransparency=1,BackgroundTransparency=1}):Play()b:Create(ap.
UIStroke,at,{Transparency=1}):Play()task.wait(0.2)ao.Visible=true as=false end
end)C.AddSignal(ap.Changed,function(at)if at=='Text'then local au=ap.Text local
av=au:gsub('[^%d%.%-]','')if av:find'%-'and av:find'%-'~=1 then av=av:gsub('%-',
'')end local aw=0 av=av:gsub('%.',function()aw=aw+1 return aw==1 and'.'or''end)
if av~=au then ap.Text=av end if ap.Visible then local ax=calculateInputWidth(av
)ap.Size=UDim2.new(0,ax,0,14)end end end)C.AddSignal(ap.FocusLost,function(at)
local au=tonumber(ap.Text)if au then ai:SetValue(au)else ap.Text=tostring(ai.
Value)end if not ar then local av=TweenInfo.new(0.2,Enum.EasingStyle.Quart,Enum.
EasingDirection.In)b:Create(ap,av,{TextTransparency=1,BackgroundTransparency=1})
:Play()b:Create(ap.UIStroke,av,{Transparency=1}):Play()task.wait(0.2)ao.Visible=
true as=false end end)C.AddSignal(ap.Focused,function()ap.Text=tostring(ai.Value
)end)C.AddSignal(ap.InputBegan,function(at)if at.UserInputType==Enum.
UserInputType.MouseButton1 or at.UserInputType==Enum.UserInputType.Touch then aj
=false end end)C.AddSignal(al.InputBegan,function(at)if at.UserInputType==Enum.
UserInputType.MouseButton1 or at.UserInputType==Enum.UserInputType.Touch then aj
=true end end)C.AddSignal(al.InputEnded,function(at)if at.UserInputType==Enum.
UserInputType.MouseButton1 or at.UserInputType==Enum.UserInputType.Touch then aj
=false end end)C.AddSignal(h.InputChanged,function(at)if aj then local au if at.
UserInputType==Enum.UserInputType.MouseMovement then au=at.Position elseif at.
UserInputType==Enum.UserInputType.Touch then au=at.Position end if au then local
av=math.clamp((au.X-am.AbsolutePosition.X)/am.AbsoluteSize.X,0,1)ai:SetValue(ai.
Min+((ai.Max-ai.Min)*av))end end end)C.AddSignal(am.InputBegan,function(at)if at
.UserInputType==Enum.UserInputType.Touch then aj=true local au=math.clamp((at.
Position.X-am.AbsolutePosition.X)/am.AbsoluteSize.X,0,1)ai:SetValue(ai.Min+((ai.
Max-ai.Min)*au))end end)C.AddSignal(am.InputEnded,function(at)if at.
UserInputType==Enum.UserInputType.Touch then aj=false end end)function ai.
OnChanged(at,au)ai.Changed=au au(ai.Value)end function ai.SetValue(at,au)at.
Value=n:Round(math.clamp(au,ai.Min,ai.Max),ai.Rounding)al.Position=UDim2.new((at
.Value-ai.Min)/(ai.Max-ai.Min),-7,0.5,0)an.Size=UDim2.fromScale((at.Value-ai.Min
)/(ai.Max-ai.Min),1)ao.Text=tostring(at.Value)if ap.Visible then ap.Text=
tostring(at.Value)local av=calculateInputWidth(tostring(at.Value))ap.Size=UDim2.
new(0,av,0,14)end n:SafeCallback(ai.Callback,at.Value)n:SafeCallback(ai.Changed,
at.Value)end function ai.Destroy(at)ak:Destroy()n.Options[ag]=nil end ai:
SetValue(ah.Default)n.Options[ag]=ai return ai end return ae end)()ac.Keybind=(
function()local ae={}ae.__index=ae ae.__type='Keybind'function ae.New(af,ag,ah)
assert(ah.Title,'KeyBind - Missing Title')assert(ah.Default,
'KeyBind - Missing default value.')local ai,aj,ak={Value=ah.Default,Toggled=
false,Mode=ah.Mode or'Toggle',Type='Keybind',Callback=ah.Callback or function(ai
)end,ChangedCallback=ah.ChangedCallback or function(ai)end},false,aa.Element(ah.
Title,ah.Description,af.Container,true,ah)ai.SetTitle=ak.SetTitle ai.SetDesc=ak.
SetDesc ai.Visible=ak.Visible ai.Elements=ak local al=D('TextLabel',{FontFace=
Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum
.FontStyle.Normal),Text=ah.Default,TextColor3=Color3.fromRGB(240,240,240),
TextSize=13,TextXAlignment=Enum.TextXAlignment.Center,Size=UDim2.new(0,0,0,14),
Position=UDim2.new(0,0,0.5,0),AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=
Color3.fromRGB(255,255,255),AutomaticSize=Enum.AutomaticSize.X,
BackgroundTransparency=1,ThemeTag={TextColor3='Text'}})local am=D('TextButton',{
Size=UDim2.fromOffset(0,30),Position=UDim2.new(1,-10,0.5,0),AnchorPoint=Vector2.
new(1,0.5),BackgroundTransparency=0.9,Parent=ak.Frame,AutomaticSize=Enum.
AutomaticSize.X,ThemeTag={BackgroundColor3='Keybind'}},{D('UICorner',{
CornerRadius=UDim.new(0,5)}),D('UIPadding',{PaddingLeft=UDim.new(0,8),
PaddingRight=UDim.new(0,8)}),D('UIStroke',{Transparency=0.5,ApplyStrokeMode=Enum
.ApplyStrokeMode.Border,ThemeTag={Color='InElementBorder'}}),al})function ai.
GetState(an)if h:GetFocusedTextBox()and ai.Mode~='Always'then return false end
if ai.Mode=='Always'then return true elseif ai.Mode=='Hold'then if ai.Value==
'None'then return false end local ao=ai.Value if ao=='MouseLeft'or ao==
'MouseRight'then return ao=='MouseLeft'and h:IsMouseButtonPressed(Enum.
UserInputType.MouseButton1)or ao=='MouseRight'and h:IsMouseButtonPressed(Enum.
UserInputType.MouseButton2)else return h:IsKeyDown(Enum.KeyCode[ai.Value])end
else return ai.Toggled end end function ai.SetValue(an,ao,ap)ao=ao or ai.Key ap=
ap or ai.Mode al.Text=ao ai.Value=ao ai.Mode=ap end function ai.OnClick(an,ao)ai
.Clicked=ao end function ai.OnChanged(an,ao)ai.Changed=ao ao(ai.Value)end
function ai.DoClick(an)n:SafeCallback(ai.Callback,ai.Toggled)n:SafeCallback(ai.
Clicked,ai.Toggled)end function ai.Destroy(an)ak:Destroy()n.Options[ag]=nil end
C.AddSignal(am.InputBegan,function(an)if an.UserInputType==Enum.UserInputType.
MouseButton1 or an.UserInputType==Enum.UserInputType.Touch then aj=true al.Text=
'...'wait(0.2)local ao ao=h.InputBegan:Connect(function(ap)local aq if ap.
UserInputType==Enum.UserInputType.Keyboard then aq=ap.KeyCode.Name elseif ap.
UserInputType==Enum.UserInputType.MouseButton1 then aq='MouseLeft'elseif ap.
UserInputType==Enum.UserInputType.MouseButton2 then aq='MouseRight'end local ar
ar=h.InputEnded:Connect(function(as)if as.KeyCode.Name==aq or aq=='MouseLeft'and
as.UserInputType==Enum.UserInputType.MouseButton1 or aq=='MouseRight'and as.
UserInputType==Enum.UserInputType.MouseButton2 then aj=false al.Text=aq ai.Value
=aq n:SafeCallback(ai.ChangedCallback,as.KeyCode or as.UserInputType)n:
SafeCallback(ai.Changed,as.KeyCode or as.UserInputType)ao:Disconnect()ar:
Disconnect()end end)end)end end)C.AddSignal(h.InputBegan,function(an)if not aj
and not h:GetFocusedTextBox()then if ai.Mode=='Toggle'then local ao=ai.Value if
ao=='MouseLeft'or ao=='MouseRight'then if ao=='MouseLeft'and an.UserInputType==
Enum.UserInputType.MouseButton1 or ao=='MouseRight'and an.UserInputType==Enum.
UserInputType.MouseButton2 then ai.Toggled=not ai.Toggled ai:DoClick()end elseif
an.UserInputType==Enum.UserInputType.Keyboard then if an.KeyCode.Name==ao then
ai.Toggled=not ai.Toggled ai:DoClick()end end end end end)n.Options[ag]=ai
return ai end return ae end)()ac.Colorpicker=(function()local ae={}ae.__index=ae
ae.__type='Colorpicker'function ae.New(af,ag,ah)assert(ah.Title,
'Colorpicker - Missing Title')assert(ah.Default,
'AddColorPicker: Missing default value.')local ai={Value=ah.Default,Transparency
=ah.Transparency or 0,Type='Colorpicker',Title=type(ah.Title)=='string'and ah.
Title or'Colorpicker',Callback=ah.Callback or function(ai)end}function ai.
SetHSVFromRGB(aj,ak)local al,am,an=Color3.toHSV(ak)ai.Hue=al ai.Sat=am ai.Vib=an
end ai:SetHSVFromRGB(ai.Value)local aj=aa.Element(ah.Title,ah.Description,af.
Container,true,ah)ai.SetTitle=aj.SetTitle ai.SetDesc=aj.SetDesc ai.Visible=aj.
Visible ai.Elements=aj local ak=D('Frame',{Size=UDim2.fromScale(1,1),
BackgroundColor3=ai.Value,Parent=aj.Frame},{D('UICorner',{CornerRadius=UDim.new(
0,4)})})D('ImageLabel',{Size=UDim2.fromOffset(26,26),Position=UDim2.new(1,-10,
0.5,0),AnchorPoint=Vector2.new(1,0.5),Parent=aj.Frame,Image=
'http://www.roblox.com/asset/?id=14204231522',ImageTransparency=0.45,ScaleType=
Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(40,40)},{D('UICorner',{
CornerRadius=UDim.new(0,4)}),ak})local function CreateColorDialog()local al=aa.
Dialog:Create()al.Title.Text=ai.Title al.Root.Size=UDim2.fromOffset(430,330)
local am,an,ao,ap=ai.Hue,ai.Sat,ai.Vib,ai.Transparency local function 
CreateInput()local aq=aa.Textbox()aq.Frame.Parent=al.Root aq.Frame.Size=UDim2.
new(0,90,0,32)return aq end local function CreateInputLabel(aq,ar)return D(
'TextLabel',{FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.
FontWeight.Medium,Enum.FontStyle.Normal),Text=aq,TextColor3=Color3.fromRGB(240,
240,240),TextSize=13,TextXAlignment=Enum.TextXAlignment.Left,Size=UDim2.new(1,0,
0,32),Position=ar,BackgroundTransparency=1,Parent=al.Root,ThemeTag={TextColor3=
'Text'}})end local function GetRGB()local aq=Color3.fromHSV(am,an,ao)return{R=
math.floor(aq.r*255),G=math.floor(aq.g*255),B=math.floor(aq.b*255)}end local aq=
D('ImageLabel',{Size=UDim2.new(0,18,0,18),ScaleType=Enum.ScaleType.Fit,
AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,Image=
'http://www.roblox.com/asset/?id=4805639000'})local ar,as=D('ImageLabel',{Size=
UDim2.fromOffset(180,160),Position=UDim2.fromOffset(20,55),Image=
'rbxassetid://4155801252',BackgroundColor3=ai.Value,BackgroundTransparency=0,
Parent=al.Root},{D('UICorner',{CornerRadius=UDim.new(0,4)}),aq}),D('Frame',{
BackgroundColor3=ai.Value,Size=UDim2.fromScale(1,1),BackgroundTransparency=ai.
Transparency},{D('UICorner',{CornerRadius=UDim.new(0,4)})})D('ImageLabel',{Image
='http://www.roblox.com/asset/?id=14204231522',ImageTransparency=0.45,ScaleType=
Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(40,40),BackgroundTransparency=1,
Position=UDim2.fromOffset(112,220),Size=UDim2.fromOffset(88,24),Parent=al.Root},
{D('UICorner',{CornerRadius=UDim.new(0,4)}),D('UIStroke',{Thickness=2,
Transparency=0.75}),as})local at=D('Frame',{BackgroundColor3=ai.Value,Size=UDim2
.fromScale(1,1),BackgroundTransparency=0},{D('UICorner',{CornerRadius=UDim.new(0
,4)})})D('ImageLabel',{Image='http://www.roblox.com/asset/?id=14204231522',
ImageTransparency=0.45,ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(
40,40),BackgroundTransparency=1,Position=UDim2.fromOffset(20,220),Size=UDim2.
fromOffset(88,24),Parent=al.Root},{D('UICorner',{CornerRadius=UDim.new(0,4)}),D(
'UIStroke',{Thickness=2,Transparency=0.75}),at})local au={}for av=0,1,0.1 do
table.insert(au,ColorSequenceKeypoint.new(av,Color3.fromHSV(av,1,1)))end local
av,aw=D('UIGradient',{Color=ColorSequence.new(au),Rotation=90}),D('Frame',{Size=
UDim2.new(1,0,1,-10),Position=UDim2.fromOffset(0,5),BackgroundTransparency=1})
local ax,ay,az=D('ImageLabel',{Size=UDim2.fromOffset(14,14),Image=
'http://www.roblox.com/asset/?id=12266946128',Parent=aw,ThemeTag={ImageColor3=
'DialogInput'}}),D('Frame',{Size=UDim2.fromOffset(12,190),Position=UDim2.
fromOffset(210,55),Parent=al.Root},{D('UICorner',{CornerRadius=UDim.new(1,0)}),
av,aw}),CreateInput()az.Frame.Position=UDim2.fromOffset(ah.Transparency and 260
or 240,55)CreateInputLabel('Hex',UDim2.fromOffset(ah.Transparency and 360 or 340
,55))local aA=CreateInput()aA.Frame.Position=UDim2.fromOffset(ah.Transparency
and 260 or 240,95)CreateInputLabel('Red',UDim2.fromOffset(ah.Transparency and
360 or 340,95))local aB=CreateInput()aB.Frame.Position=UDim2.fromOffset(ah.
Transparency and 260 or 240,135)CreateInputLabel('Green',UDim2.fromOffset(ah.
Transparency and 360 or 340,135))local aC=CreateInput()aC.Frame.Position=UDim2.
fromOffset(ah.Transparency and 260 or 240,175)CreateInputLabel('Blue',UDim2.
fromOffset(ah.Transparency and 360 or 340,175))local aD if ah.Transparency then
aD=CreateInput()aD.Frame.Position=UDim2.fromOffset(260,215)CreateInputLabel(
'Alpha',UDim2.fromOffset(360,215))end local aE,aF,aG if ah.Transparency then
local aH=D('Frame',{Size=UDim2.new(1,0,1,-10),Position=UDim2.fromOffset(0,5),
BackgroundTransparency=1})aF=D('ImageLabel',{Size=UDim2.fromOffset(14,14),Image=
'http://www.roblox.com/asset/?id=12266946128',Parent=aH,ThemeTag={ImageColor3=
'DialogInput'}})aG=D('Frame',{Size=UDim2.fromScale(1,1)},{D('UIGradient',{
Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,0),
NumberSequenceKeypoint.new(1,1)},Rotation=270}),D('UICorner',{CornerRadius=UDim.
new(1,0)})})aE=D('Frame',{Size=UDim2.fromOffset(12,190),Position=UDim2.
fromOffset(230,55),Parent=al.Root,BackgroundTransparency=1},{D('UICorner',{
CornerRadius=UDim.new(1,0)}),D('ImageLabel',{Image=
'http://www.roblox.com/asset/?id=14204231522',ImageTransparency=0.45,ScaleType=
Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(40,40),BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),Parent=al.Root},{D('UICorner',{CornerRadius=UDim.new(1
,0)})}),aG,aH})end local function Display()ar.BackgroundColor3=Color3.fromHSV(am
,1,1)ax.Position=UDim2.new(0,-1,am,-6)aq.Position=UDim2.new(an,0,1-ao,0)at.
BackgroundColor3=Color3.fromHSV(am,an,ao)az.Input.Text='#'..Color3.fromHSV(am,an
,ao):ToHex()aA.Input.Text=GetRGB().R aB.Input.Text=GetRGB().G aC.Input.Text=
GetRGB().B if ah.Transparency then aG.BackgroundColor3=Color3.fromHSV(am,an,ao)
at.BackgroundTransparency=ap aF.Position=UDim2.new(0,-1,1-ap,-6)aD.Input.Text=n:
Round((1-ap)*100,0)..'%'end end C.AddSignal(az.Input.FocusLost,function(aH)if aH
then local aI,aJ=pcall(Color3.fromHex,az.Input.Text)if aI and typeof(aJ)==
'Color3'then am,an,ao=Color3.toHSV(aJ)end end Display()end)C.AddSignal(aA.Input.
FocusLost,function(aH)if aH then local aI=GetRGB()local aJ,aK=pcall(Color3.
fromRGB,aA.Input.Text,aI.G,aI.B)if aJ and typeof(aK)=='Color3'then if tonumber(
aA.Input.Text)<=255 then am,an,ao=Color3.toHSV(aK)end end end Display()end)C.
AddSignal(aB.Input.FocusLost,function(aH)if aH then local aI=GetRGB()local aJ,aK
=pcall(Color3.fromRGB,aI.R,aB.Input.Text,aI.B)if aJ and typeof(aK)=='Color3'then
if tonumber(aB.Input.Text)<=255 then am,an,ao=Color3.toHSV(aK)end end end
Display()end)C.AddSignal(aC.Input.FocusLost,function(aH)if aH then local aI=
GetRGB()local aJ,aK=pcall(Color3.fromRGB,aI.R,aI.G,aC.Input.Text)if aJ and
typeof(aK)=='Color3'then if tonumber(aC.Input.Text)<=255 then am,an,ao=Color3.
toHSV(aK)end end end Display()end)if ah.Transparency then C.AddSignal(aD.Input.
FocusLost,function(aH)if aH then pcall(function()local aI=tonumber(aD.Input.Text
)if aI>=0 and aI<=100 then ap=1-aI*0.01 end end)end Display()end)end C.
AddSignal(ar.InputBegan,function(aH)if aH.UserInputType==Enum.UserInputType.
MouseButton1 or aH.UserInputType==Enum.UserInputType.Touch then while h:
IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do local aI=ar.
AbsolutePosition.X local aJ=aI+ar.AbsoluteSize.X local aK,aM=math.clamp(e.X,aI,
aJ),ar.AbsolutePosition.Y local aO=aM+ar.AbsoluteSize.Y local aP=math.clamp(e.Y,
aM,aO)an=(aK-aI)/(aJ-aI)ao=1-((aP-aM)/(aO-aM))Display()k:Wait()end end end)C.
AddSignal(ay.InputBegan,function(aH)if aH.UserInputType==Enum.UserInputType.
MouseButton1 or aH.UserInputType==Enum.UserInputType.Touch then while h:
IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do local aI=ay.
AbsolutePosition.Y local aJ=aI+ay.AbsoluteSize.Y local aK=math.clamp(e.Y,aI,aJ)
am=((aK-aI)/(aJ-aI))Display()k:Wait()end end end)if ah.Transparency then C.
AddSignal(aE.InputBegan,function(aH)if aH.UserInputType==Enum.UserInputType.
MouseButton1 or aH.UserInputType==Enum.UserInputType.Touch then while h:
IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do local aI=aE.
AbsolutePosition.Y local aJ=aI+aE.AbsoluteSize.Y local aK=math.clamp(e.Y,aI,aJ)
ap=1-((aK-aI)/(aJ-aI))Display()k:Wait()end end end)end Display()al:Button(o.t
'fluent.common.done',function()ai:SetValue({am,an,ao},ap)end)al:Button(o.t
'fluent.common.cancel')al:Open()end function ai.Display(al)ai.Value=Color3.
fromHSV(ai.Hue,ai.Sat,ai.Vib)ak.BackgroundColor3=ai.Value ak.
BackgroundTransparency=ai.Transparency ae.Library:SafeCallback(ai.Callback,ai.
Value)ae.Library:SafeCallback(ai.Changed,ai.Value)end function ai.SetValue(al,am
,an)local ao=Color3.fromHSV(am[1],am[2],am[3])ai.Transparency=an or 0 ai:
SetHSVFromRGB(ao)ai:Display()end function ai.SetValueRGB(al,am,an)ai.
Transparency=an or 0 ai:SetHSVFromRGB(am)ai:Display()end function ai.OnChanged(
al,am)ai.Changed=am am(ai.Value)end function ai.Destroy(al)aj:Destroy()n.Options
[ag]=nil end C.AddSignal(aj.Frame.MouseButton1Click,function()CreateColorDialog(
)end)C.AddSignal(aj.Frame.InputBegan,function(al)if al.UserInputType==Enum.
UserInputType.Touch then CreateColorDialog()end end)ai:Display()n.Options[ag]=ai
return ai end return ae end)()ac.Input=(function()local ae={}ae.__index=ae ae.
__type='Input'function ae.New(af,ag,ah)assert(ah.Title,'Input - Missing Title')
ah.Callback=ah.Callback or function()end local ai,aj={Value=ah.Default or'',
Numeric=ah.Numeric or false,Finished=ah.Finished or false,Callback=ah.Callback
or function(ai)end,Type='Input'},aa.Element(ah.Title,ah.Description,af.Container
,false,ah)ai.SetTitle=aj.SetTitle ai.SetDesc=aj.SetDesc ai.Visible=aj.Visible ai
.Elements=aj local ak=aa.Textbox(aj.Frame,true)ak.Frame.Position=UDim2.new(1,-10
,0.5,0)ak.Frame.AnchorPoint=Vector2.new(1,0.5)ak.Frame.Size=UDim2.fromOffset(160
,30)ak.Input.Text=ah.Default or''function ai.SetPlaceholder(al,am)ak.Input.
PlaceholderText=o.Text(am)or''end if o.IsTagged(ah.Placeholder)then ai.
RemoveLocalePlaceholder=o.Attach(ai,'Placeholder',ah.Placeholder)else ai:
SetPlaceholder(ah.Placeholder)end local al=ak.Input function ai.SetValue(am,an)
if ah.MaxLength and#an>ah.MaxLength then an=an:sub(1,ah.MaxLength)end if ai.
Numeric then if(not tonumber(an))and an:len()>0 then an=ai.Value end end ai.
Value=an al.Text=an n:SafeCallback(ai.Callback,ai.Value)n:SafeCallback(ai.
Changed,ai.Value)end if ai.Finished then ad(al.FocusLost,function(am)if not am
then return end ai:SetValue(al.Text)end)else ad(al:GetPropertyChangedSignal
'Text',function()ai:SetValue(al.Text)end)end function ai.OnChanged(am,an)ai.
Changed=an an(ai.Value)end function ai.Destroy(am)aj:Destroy()n.Options[ag]=nil
end n.Options[ag]=ai return ai end return ae end)()ac.Priority=(function()local
ae={}ae.__index=ae ae.__type='Priority'function ae.New(af,ag,ah)ah=ah or{}
assert(ah.Title,'Priority - Missing Title')local ai,aj={Values={},Value={},Min=
ah.Min or 0,Max=ah.Max or 99,Type='Priority',Callback=ah.Callback or function()
end},nil local function declaredIndex(ak)for al,am in ipairs(ai.Values)do if am
==ak then return al end end return math.huge end function ai.GetOrder(ak)local
al={}for am,an in ipairs(ai.Values)do al[#al+1]=an end table.sort(al,function(am
,an)local ao,ap=ai.Value[am]or 0,ai.Value[an]or 0 if ao==ap then return
declaredIndex(am)<declaredIndex(an)end return ao>ap end)return al end local 
function rerender(ak)local al=ai:GetOrder()if aj then aj:SetValues(al)aj:
Display()end if ak then n:SafeCallback(ai.Callback,al)n:SafeCallback(ai.Changed,
al)end return al end local function commit(ak,al)local am=tonumber(al)if not am
then rerender(false)return end ai.Value[ak]=math.clamp(math.floor(am),ai.Min,ai.
Max)rerender(true)end ac.Dropdown.Container=af.Container ac.Dropdown.Type=af.
Type ac.Dropdown.ScrollFrame=af.ScrollFrame ac.Dropdown.Library=n aj=ac.Dropdown
:New(ag,{Title=ah.Title,Description=ah.Description,Values={},Multi=false,
AllowNull=true,Search=ah.Search,NoSelect=true,FullWidth=(ah.FullWidth~=false),
OnRowBuilt=function(ak)local al=ai.Value[ak.Value]or 0 ak.Label.Text=string.
format('%d. %s',al,ak.Value)ak.Label.Size=UDim2.new(1,-85,1,0)ak.Label.
TextTruncate=Enum.TextTruncate.AtEnd local am=aa.Textbox(ak.Button,true)am.Frame
.Size=UDim2.fromOffset(58,24)am.Frame.AnchorPoint=Vector2.new(1,0.5)am.Frame.
Position=UDim2.new(1,-8,0.5,0)am.Frame.ZIndex=24 am.Input.ZIndex=25 am.Input.
TextXAlignment=Enum.TextXAlignment.Center am.Input.TextSize=13 am.Input.Position
=UDim2.fromOffset(0,0)am.Input.Text=tostring(al)C.AddSignal(am.Input.FocusLost,
function()commit(ak.Value,am.Input.Text)end)end})aj.OpenToRight=false function
aj.Display(ak)if not aj.DisplayLabel then return end local al,am=ai:GetOrder(),o
.Text(ah.Title)or''aj.DisplayLabel.Text=(#al>0)and(am..': '..table.concat(al,
' > '))or'--'end if aj.Inner then local ak=C.New('ImageButton',{Image=n:GetIcon
'copy'or'rbxassetid://10734898355',Size=UDim2.fromOffset(16,16),AnchorPoint=
Vector2.new(1,0.5),Position=UDim2.new(1,-30,0.5,0),BackgroundTransparency=1,
Parent=aj.Inner,ThemeTag={ImageColor3='SubText'}})if aj.DisplayLabel then aj.
DisplayLabel.Size=UDim2.new(1,-64,0.5,0)end C.AddSignal(ak.MouseButton1Click,
function()local al=setclipboard or toclipboard or(syn and syn.write_clipboard)if
type(al)=='function'and aj.DisplayLabel then pcall(al,aj.DisplayLabel.Text)end
end)end ai.Dropdown=aj ai.Elements=aj.Elements ai.SetTitle=aj.SetTitle ai.
SetDesc=aj.SetDesc ai.Visible=aj.Visible function ai.Open(ak)aj:Open()end
function ai.Close(ak)aj:Close()end function ai.SetValues(ak,al)ai.Values={}for
am,an in ipairs(al or{})do ai.Values[#ai.Values+1]=tostring(an)end local am=ai.
Value ai.Value={}local an=#ai.Values for ao,ap in ipairs(ai.Values)do ai.Value[
ap]=am[ap]or math.clamp(an-ao+1,ai.Min,ai.Max)end rerender(false)end function ai
.SetValue(ak,al)if type(al)=='table'then for am,an in pairs(al)do if ai.Value[
tostring(am)]~=nil and tonumber(an)then ai.Value[tostring(am)]=math.clamp(math.
floor(tonumber(an)),ai.Min,ai.Max)end end end rerender(true)end function ai.
OnChanged(ak,al)ai.Changed=al al(ai:GetOrder())end function ai.Destroy(ak)aj:
Destroy()n.Options[ag]=nil end ai:SetValues(ah.Values)n.Options[ag]=ai return ai
end return ae end)()ac.Divider=(function()local ae={}ae.__index=ae ae.__type=
'Divider'function ae.New(af,ag)ag=ag or{}local ah,ai=ag.Thickness or 1,{Type=
'Divider'}local aj=D('Frame',{Name='Divider',LayoutOrder=7,Size=UDim2.new(1,0,0,
ah+12),BackgroundTransparency=1,Parent=af.Container},{D('Frame',{Name='Line',
AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,0,0.5,0),Size=UDim2.new(1,0,
0,ah),BorderSizePixel=0,ThemeTag={BackgroundColor3='TitleBarLine'}})})ai.
Instance=aj function ai.SetVisible(ak,al)aj.Visible=al end function ai.Destroy(
ak)aj:Destroy()end return ai end return ae end)()local ae=aa.Notification ae:
Init(E)local af,ag=C.New,{['lucide-accessibility']='rbxassetid://10709751939',[
'lucide-activity']='rbxassetid://10709752035',['lucide-air-vent']=
'rbxassetid://10709752131',['lucide-airplay']='rbxassetid://10709752254',[
'lucide-alarm-check']='rbxassetid://10709752405',['lucide-alarm-clock']=
'rbxassetid://10709752630',['lucide-alarm-clock-off']='rbxassetid://10709752508'
,['lucide-alarm-minus']='rbxassetid://10709752732',['lucide-alarm-plus']=
'rbxassetid://10709752825',['lucide-album']='rbxassetid://10709752906',[
'lucide-alert-circle']='rbxassetid://10709752996',['lucide-alert-octagon']=
'rbxassetid://10709753064',['lucide-alert-triangle']='rbxassetid://10709753149',
['lucide-align-center']='rbxassetid://10709753570',[
'lucide-align-center-horizontal']='rbxassetid://10709753272',[
'lucide-align-center-vertical']='rbxassetid://10709753421',[
'lucide-align-end-horizontal']='rbxassetid://10709753692',[
'lucide-align-end-vertical']='rbxassetid://10709753808',[
'lucide-align-horizontal-distribute-center']='rbxassetid://10747779791',[
'lucide-align-horizontal-distribute-end']='rbxassetid://10747784534',[
'lucide-align-horizontal-distribute-start']='rbxassetid://10709754118',[
'lucide-align-horizontal-justify-center']='rbxassetid://10709754204',[
'lucide-align-horizontal-justify-end']='rbxassetid://10709754317',[
'lucide-align-horizontal-justify-start']='rbxassetid://10709754436',[
'lucide-align-horizontal-space-around']='rbxassetid://10709754590',[
'lucide-align-horizontal-space-between']='rbxassetid://10709754749',[
'lucide-align-justify']='rbxassetid://10709759610',['lucide-align-left']=
'rbxassetid://10709759764',['lucide-align-right']='rbxassetid://10709759895',[
'lucide-align-start-horizontal']='rbxassetid://10709760051',[
'lucide-align-start-vertical']='rbxassetid://10709760244',[
'lucide-align-vertical-distribute-center']='rbxassetid://10709760351',[
'lucide-align-vertical-distribute-end']='rbxassetid://10709760434',[
'lucide-align-vertical-distribute-start']='rbxassetid://10709760612',[
'lucide-align-vertical-justify-center']='rbxassetid://10709760814',[
'lucide-align-vertical-justify-end']='rbxassetid://10709761003',[
'lucide-align-vertical-justify-start']='rbxassetid://10709761176',[
'lucide-align-vertical-space-around']='rbxassetid://10709761324',[
'lucide-align-vertical-space-between']='rbxassetid://10709761434',[
'lucide-anchor']='rbxassetid://10709761530',['lucide-angry']=
'rbxassetid://10709761629',['lucide-annoyed']='rbxassetid://10709761722',[
'lucide-aperture']='rbxassetid://10709761813',['lucide-apple']=
'rbxassetid://10709761889',['lucide-archive']='rbxassetid://10709762233',[
'lucide-archive-restore']='rbxassetid://10709762058',['lucide-armchair']=
'rbxassetid://10709762327',['lucide-anvil']='rbxassetid://77943964625400',[
'lucide-arrow-big-down']='rbxassetid://10747796644',['lucide-arrow-big-left']=
'rbxassetid://10709762574',['lucide-arrow-big-right']='rbxassetid://10709762727'
,['lucide-arrow-big-up']='rbxassetid://10709762879',['lucide-arrow-down']=
'rbxassetid://10709767827',['lucide-arrow-down-circle']=
'rbxassetid://10709763034',['lucide-arrow-down-left']='rbxassetid://10709767656'
,['lucide-arrow-down-right']='rbxassetid://10709767750',['lucide-arrow-left']=
'rbxassetid://10709768114',['lucide-arrow-left-circle']=
'rbxassetid://10709767936',['lucide-arrow-left-right']=
'rbxassetid://10709768019',['lucide-arrow-right']='rbxassetid://10709768347',[
'lucide-arrow-right-circle']='rbxassetid://10709768226',['lucide-arrow-up']=
'rbxassetid://10709768939',['lucide-arrow-up-circle']='rbxassetid://10709768432'
,['lucide-arrow-up-down']='rbxassetid://10709768538',['lucide-arrow-up-left']=
'rbxassetid://10709768661',['lucide-arrow-up-right']='rbxassetid://10709768787',
['lucide-asterisk']='rbxassetid://10709769095',['lucide-at-sign']=
'rbxassetid://10709769286',['lucide-award']='rbxassetid://10709769406',[
'lucide-axe']='rbxassetid://10709769508',['lucide-axis-3d']=
'rbxassetid://10709769598',['lucide-baby']='rbxassetid://10709769732',[
'lucide-backpack']='rbxassetid://10709769841',['lucide-baggage-claim']=
'rbxassetid://10709769935',['lucide-banana']='rbxassetid://10709770005',[
'lucide-banknote']='rbxassetid://10709770178',['lucide-bar-chart']=
'rbxassetid://10709773755',['lucide-bar-chart-2']='rbxassetid://10709770317',[
'lucide-bar-chart-3']='rbxassetid://10709770431',['lucide-bar-chart-4']=
'rbxassetid://10709770560',['lucide-bar-chart-horizontal']=
'rbxassetid://10709773669',['lucide-barcode']='rbxassetid://10747360675',[
'lucide-baseline']='rbxassetid://10709773863',['lucide-bath']=
'rbxassetid://10709773963',['lucide-battery']='rbxassetid://10709774640',[
'lucide-battery-charging']='rbxassetid://10709774068',['lucide-battery-full']=
'rbxassetid://10709774206',['lucide-battery-low']='rbxassetid://10709774370',[
'lucide-battery-medium']='rbxassetid://10709774513',['lucide-beaker']=
'rbxassetid://10709774756',['lucide-bed']='rbxassetid://10709775036',[
'lucide-bed-double']='rbxassetid://10709774864',['lucide-bed-single']=
'rbxassetid://10709774968',['lucide-beer']='rbxassetid://10709775167',[
'lucide-bell']='rbxassetid://10709775704',['lucide-bell-minus']=
'rbxassetid://10709775241',['lucide-bell-off']='rbxassetid://10709775320',[
'lucide-bell-plus']='rbxassetid://10709775448',['lucide-bell-ring']=
'rbxassetid://10709775560',['lucide-bike']='rbxassetid://10709775894',[
'lucide-binary']='rbxassetid://10709776050',['lucide-bitcoin']=
'rbxassetid://10709776126',['lucide-bluetooth']='rbxassetid://10709776655',[
'lucide-bluetooth-connected']='rbxassetid://10709776240',['lucide-bluetooth-off'
]='rbxassetid://10709776344',['lucide-bluetooth-searching']=
'rbxassetid://10709776501',['lucide-bold']='rbxassetid://10747813908',[
'lucide-bomb']='rbxassetid://10709781460',['lucide-bone']=
'rbxassetid://10709781605',['lucide-book']='rbxassetid://10709781824',[
'lucide-book-open']='rbxassetid://10709781717',['lucide-bookmark']=
'rbxassetid://10709782154',['lucide-bookmark-minus']='rbxassetid://10709781919',
['lucide-bookmark-plus']='rbxassetid://10709782044',['lucide-bot']=
'rbxassetid://10709782230',['lucide-box']='rbxassetid://10709782497',[
'lucide-box-select']='rbxassetid://10709782342',['lucide-boxes']=
'rbxassetid://10709782582',['lucide-briefcase']='rbxassetid://10709782662',[
'lucide-brush']='rbxassetid://10709782758',['lucide-bug']=
'rbxassetid://10709782845',['lucide-building']='rbxassetid://10709783051',[
'lucide-building-2']='rbxassetid://10709782939',['lucide-bus']=
'rbxassetid://10709783137',['lucide-cake']='rbxassetid://10709783217',[
'lucide-calculator']='rbxassetid://10709783311',['lucide-calendar']=
'rbxassetid://10709789505',['lucide-calendar-check']='rbxassetid://10709783474',
['lucide-calendar-check-2']='rbxassetid://10709783392',['lucide-calendar-clock']
='rbxassetid://10709783577',['lucide-calendar-days']='rbxassetid://10709783673',
['lucide-calendar-heart']='rbxassetid://10709783835',['lucide-calendar-minus']=
'rbxassetid://10709783959',['lucide-calendar-off']='rbxassetid://10709788784',[
'lucide-calendar-plus']='rbxassetid://10709788937',['lucide-calendar-range']=
'rbxassetid://10709789053',['lucide-calendar-search']='rbxassetid://10709789200'
,['lucide-calendar-x']='rbxassetid://10709789407',['lucide-calendar-x-2']=
'rbxassetid://10709789329',['lucide-camera']='rbxassetid://10709789686',[
'lucide-camera-off']='rbxassetid://10747822677',['lucide-car']=
'rbxassetid://10709789810',['lucide-carrot']='rbxassetid://10709789960',[
'lucide-cast']='rbxassetid://10709790097',['lucide-charge']=
'rbxassetid://10709790202',['lucide-check']='rbxassetid://10709790644',[
'lucide-check-circle']='rbxassetid://10709790387',['lucide-check-circle-2']=
'rbxassetid://10709790298',['lucide-check-square']='rbxassetid://10709790537',[
'lucide-chef-hat']='rbxassetid://10709790757',['lucide-cherry']=
'rbxassetid://10709790875',['lucide-chevron-down']='rbxassetid://10709790948',[
'lucide-chevron-first']='rbxassetid://10709791015',['lucide-chevron-last']=
'rbxassetid://10709791130',['lucide-chevron-left']='rbxassetid://10709791281',[
'lucide-chevron-right']='rbxassetid://10709791437',['lucide-chevron-up']=
'rbxassetid://10709791523',['lucide-chevrons-down']='rbxassetid://10709796864',[
'lucide-chevrons-down-up']='rbxassetid://10709791632',['lucide-chevrons-left']=
'rbxassetid://10709797151',['lucide-chevrons-left-right']=
'rbxassetid://10709797006',['lucide-chevrons-right']='rbxassetid://10709797382',
['lucide-chevrons-right-left']='rbxassetid://10709797274',['lucide-chevrons-up']
='rbxassetid://10709797622',['lucide-chevrons-up-down']=
'rbxassetid://10709797508',['lucide-chrome']='rbxassetid://10709797725',[
'lucide-circle']='rbxassetid://10709798174',['lucide-circle-dot']=
'rbxassetid://10709797837',['lucide-circle-ellipsis']='rbxassetid://10709797985'
,['lucide-circle-slashed']='rbxassetid://10709798100',['lucide-citrus']=
'rbxassetid://10709798276',['lucide-clapperboard']='rbxassetid://10709798350',[
'lucide-clipboard']='rbxassetid://10709799288',['lucide-clipboard-check']=
'rbxassetid://10709798443',['lucide-clipboard-copy']='rbxassetid://10709798574',
['lucide-clipboard-edit']='rbxassetid://10709798682',['lucide-clipboard-list']=
'rbxassetid://10709798792',['lucide-clipboard-signature']=
'rbxassetid://10709798890',['lucide-clipboard-type']='rbxassetid://10709798999',
['lucide-clipboard-x']='rbxassetid://10709799124',['lucide-clock']=
'rbxassetid://10709805144',['lucide-clock-1']='rbxassetid://10709799535',[
'lucide-clock-10']='rbxassetid://10709799718',['lucide-clock-11']=
'rbxassetid://10709799818',['lucide-clock-12']='rbxassetid://10709799962',[
'lucide-clock-2']='rbxassetid://10709803876',['lucide-clock-3']=
'rbxassetid://10709803989',['lucide-clock-4']='rbxassetid://10709804164',[
'lucide-clock-5']='rbxassetid://10709804291',['lucide-clock-6']=
'rbxassetid://10709804435',['lucide-clock-7']='rbxassetid://10709804599',[
'lucide-clock-8']='rbxassetid://10709804784',['lucide-clock-9']=
'rbxassetid://10709804996',['lucide-cloud']='rbxassetid://10709806740',[
'lucide-cloud-cog']='rbxassetid://10709805262',['lucide-cloud-drizzle']=
'rbxassetid://10709805371',['lucide-cloud-fog']='rbxassetid://10709805477',[
'lucide-cloud-hail']='rbxassetid://10709805596',['lucide-cloud-lightning']=
'rbxassetid://10709805727',['lucide-cloud-moon']='rbxassetid://10709805942',[
'lucide-cloud-moon-rain']='rbxassetid://10709805838',['lucide-cloud-off']=
'rbxassetid://10709806060',['lucide-cloud-rain']='rbxassetid://10709806277',[
'lucide-cloud-rain-wind']='rbxassetid://10709806166',['lucide-cloud-snow']=
'rbxassetid://10709806374',['lucide-cloud-sun']='rbxassetid://10709806631',[
'lucide-cloud-sun-rain']='rbxassetid://10709806475',['lucide-cloudy']=
'rbxassetid://10709806859',['lucide-clover']='rbxassetid://10709806995',[
'lucide-code']='rbxassetid://10709810463',['lucide-code-2']=
'rbxassetid://10709807111',['lucide-codepen']='rbxassetid://10709810534',[
'lucide-codesandbox']='rbxassetid://10709810676',['lucide-coffee']=
'rbxassetid://10709810814',['lucide-cog']='rbxassetid://10709810948',[
'lucide-coins']='rbxassetid://10709811110',['lucide-columns']=
'rbxassetid://10709811261',['lucide-command']='rbxassetid://10709811365',[
'lucide-compass']='rbxassetid://10709811445',['lucide-component']=
'rbxassetid://10709811595',['lucide-concierge-bell']='rbxassetid://10709811706',
['lucide-connection']='rbxassetid://10747361219',['lucide-contact']=
'rbxassetid://10709811834',['lucide-contrast']='rbxassetid://10709811939',[
'lucide-cookie']='rbxassetid://10709812067',['lucide-copy']=
'rbxassetid://10709812159',['lucide-copyleft']='rbxassetid://10709812251',[
'lucide-copyright']='rbxassetid://10709812311',['lucide-corner-down-left']=
'rbxassetid://10709812396',['lucide-corner-down-right']=
'rbxassetid://10709812485',['lucide-corner-left-down']=
'rbxassetid://10709812632',['lucide-corner-left-up']='rbxassetid://10709812784',
['lucide-corner-right-down']='rbxassetid://10709812939',[
'lucide-corner-right-up']='rbxassetid://10709813094',['lucide-corner-up-left']=
'rbxassetid://10709813185',['lucide-corner-up-right']='rbxassetid://10709813281'
,['lucide-cpu']='rbxassetid://10709813383',['lucide-croissant']=
'rbxassetid://10709818125',['lucide-crop']='rbxassetid://10709818245',[
'lucide-cross']='rbxassetid://10709818399',['lucide-crosshair']=
'rbxassetid://10709818534',['lucide-crown']='rbxassetid://10709818626',[
'lucide-cup-soda']='rbxassetid://10709818763',['lucide-curly-braces']=
'rbxassetid://10709818847',['lucide-currency']='rbxassetid://10709818931',[
'lucide-container']='rbxassetid://17466205552',['lucide-database']=
'rbxassetid://10709818996',['lucide-delete']='rbxassetid://10709819059',[
'lucide-diamond']='rbxassetid://10709819149',['lucide-dice-1']=
'rbxassetid://10709819266',['lucide-dice-2']='rbxassetid://10709819361',[
'lucide-dice-3']='rbxassetid://10709819508',['lucide-dice-4']=
'rbxassetid://10709819670',['lucide-dice-5']='rbxassetid://10709819801',[
'lucide-dice-6']='rbxassetid://10709819896',['lucide-dices']=
'rbxassetid://10723343321',['lucide-diff']='rbxassetid://10723343416',[
'lucide-disc']='rbxassetid://10723343537',['lucide-divide']=
'rbxassetid://10723343805',['lucide-divide-circle']='rbxassetid://10723343636',[
'lucide-divide-square']='rbxassetid://10723343737',['lucide-dollar-sign']=
'rbxassetid://10723343958',['lucide-download']='rbxassetid://10723344270',[
'lucide-download-cloud']='rbxassetid://10723344088',['lucide-door-open']=
'rbxassetid://124179241653522',['lucide-droplet']='rbxassetid://10723344432',[
'lucide-droplets']='rbxassetid://10734883356',['lucide-drumstick']=
'rbxassetid://10723344737',['lucide-edit']='rbxassetid://10734883598',[
'lucide-edit-2']='rbxassetid://10723344885',['lucide-edit-3']=
'rbxassetid://10723345088',['lucide-egg']='rbxassetid://10723345518',[
'lucide-egg-fried']='rbxassetid://10723345347',['lucide-electricity']=
'rbxassetid://10723345749',['lucide-electricity-off']='rbxassetid://10723345643'
,['lucide-equal']='rbxassetid://10723345990',['lucide-equal-not']=
'rbxassetid://10723345866',['lucide-eraser']='rbxassetid://10723346158',[
'lucide-diamond']='rbxassetid://10709819149',['lucide-dice-1']=
'rbxassetid://10709819266',['lucide-dice-2']='rbxassetid://10709819361',[
'lucide-dice-3']='rbxassetid://10709819508',['lucide-dice-4']=
'rbxassetid://10709819670',['lucide-dice-5']='rbxassetid://10709819801',[
'lucide-dice-6']='rbxassetid://10709819896',['lucide-dices']=
'rbxassetid://10723343321',['lucide-diff']='rbxassetid://10723343416',[
'lucide-disc']='rbxassetid://10723343537',['lucide-divide']=
'rbxassetid://10723343805',['lucide-divide-circle']='rbxassetid://10723343636',[
'lucide-divide-square']='rbxassetid://10723343737',['lucide-dollar-sign']=
'rbxassetid://10723343958',['lucide-download']='rbxassetid://10723344270',[
'lucide-download-cloud']='rbxassetid://10723344088',['lucide-door-open']=
'rbxassetid://124179241653522',['lucide-droplet']='rbxassetid://10723344432',[
'lucide-droplets']='rbxassetid://10734883356',['lucide-drumstick']=
'rbxassetid://10723344737',['lucide-edit']='rbxassetid://10734883598',[
'lucide-edit-2']='rbxassetid://10723344885',['lucide-edit-3']=
'rbxassetid://10723345088',['lucide-egg']='rbxassetid://10723345518',[
'lucide-egg-fried']='rbxassetid://10723345347',['lucide-electricity']=
'rbxassetid://10723345749',['lucide-electricity-off']='rbxassetid://10723345643'
,['lucide-equal']='rbxassetid://10723345990',['lucide-equal-not']=
'rbxassetid://10723345866',['lucide-eraser']='rbxassetid://10723346158',[
'lucide-euro']='rbxassetid://10723346372',['lucide-expand']=
'rbxassetid://10723346553',['lucide-external-link']='rbxassetid://10723346684',[
'lucide-eye']='rbxassetid://10723346959',['lucide-eye-off']=
'rbxassetid://10723346871',['lucide-factory']='rbxassetid://10723347051',[
'lucide-fan']='rbxassetid://10723354359',['lucide-fast-forward']=
'rbxassetid://10723354521',['lucide-feather']='rbxassetid://10723354671',[
'lucide-figma']='rbxassetid://10723354801',['lucide-file']=
'rbxassetid://10723374641',['lucide-file-archive']='rbxassetid://10723354921',[
'lucide-file-audio']='rbxassetid://10723355148',['lucide-file-audio-2']=
'rbxassetid://10723355026',['lucide-file-axis-3d']='rbxassetid://10723355272',[
'lucide-file-badge']='rbxassetid://10723355622',['lucide-file-badge-2']=
'rbxassetid://10723355451',['lucide-file-bar-chart']='rbxassetid://10723355887',
['lucide-file-bar-chart-2']='rbxassetid://10723355746',['lucide-file-box']=
'rbxassetid://10723355989',['lucide-file-check']='rbxassetid://10723356210',[
'lucide-file-check-2']='rbxassetid://10723356100',['lucide-file-clock']=
'rbxassetid://10723356329',['lucide-file-code']='rbxassetid://10723356507',[
'lucide-file-cog']='rbxassetid://10723356830',['lucide-file-cog-2']=
'rbxassetid://10723356676',['lucide-file-diff']='rbxassetid://10723357039',[
'lucide-file-digit']='rbxassetid://10723357151',['lucide-file-down']=
'rbxassetid://10723357322',['lucide-file-edit']='rbxassetid://10723357495',[
'lucide-file-heart']='rbxassetid://10723357637',['lucide-file-image']=
'rbxassetid://10723357790',['lucide-file-input']='rbxassetid://10723357933',[
'lucide-file-json']='rbxassetid://10723364435',['lucide-file-json-2']=
'rbxassetid://10723364361',['lucide-file-key']='rbxassetid://10723364605',[
'lucide-file-key-2']='rbxassetid://10723364515',['lucide-file-line-chart']=
'rbxassetid://10723364725',['lucide-file-lock']='rbxassetid://10723364957',[
'lucide-file-lock-2']='rbxassetid://10723364861',['lucide-file-minus']=
'rbxassetid://10723365254',['lucide-file-minus-2']='rbxassetid://10723365086',[
'lucide-file-output']='rbxassetid://10723365457',['lucide-file-pie-chart']=
'rbxassetid://10723365598',['lucide-file-plus']='rbxassetid://10723365877',[
'lucide-file-plus-2']='rbxassetid://10723365766',['lucide-file-question']=
'rbxassetid://10723365987',['lucide-file-scan']='rbxassetid://10723366167',[
'lucide-file-search']='rbxassetid://10723366550',['lucide-file-search-2']=
'rbxassetid://10723366340',['lucide-file-signature']='rbxassetid://10723366741',
['lucide-file-spreadsheet']='rbxassetid://10723366962',['lucide-file-symlink']=
'rbxassetid://10723367098',['lucide-file-terminal']='rbxassetid://10723367244',[
'lucide-file-text']='rbxassetid://10723367380',['lucide-file-type']=
'rbxassetid://10723367606',['lucide-file-type-2']='rbxassetid://10723367509',[
'lucide-file-up']='rbxassetid://10723367734',['lucide-file-video']=
'rbxassetid://10723373884',['lucide-file-video-2']='rbxassetid://10723367834',[
'lucide-file-volume']='rbxassetid://10723374172',['lucide-file-volume-2']=
'rbxassetid://10723374030',['lucide-file-warning']='rbxassetid://10723374276',[
'lucide-file-x']='rbxassetid://10723374544',['lucide-file-x-2']=
'rbxassetid://10723374378',['lucide-files']='rbxassetid://10723374759',[
'lucide-film']='rbxassetid://10723374981',['lucide-filter']=
'rbxassetid://10723375128',['lucide-fingerprint']='rbxassetid://10723375250',[
'lucide-flag']='rbxassetid://10723375890',['lucide-flag-off']=
'rbxassetid://10723375443',['lucide-flag-triangle-left']=
'rbxassetid://10723375608',['lucide-flag-triangle-right']=
'rbxassetid://10723375727',['lucide-flame']='rbxassetid://10723376114',[
'lucide-flashlight']='rbxassetid://10723376471',['lucide-flashlight-off']=
'rbxassetid://10723376365',['lucide-flask-conical']='rbxassetid://10734883986',[
'lucide-flask-round']='rbxassetid://10723376614',['lucide-flip-horizontal']=
'rbxassetid://10723376884',['lucide-flip-horizontal-2']=
'rbxassetid://10723376745',['lucide-flip-vertical']='rbxassetid://10723377138',[
'lucide-flip-vertical-2']='rbxassetid://10723377026',['lucide-flower']=
'rbxassetid://10747830374',['lucide-flower-2']='rbxassetid://10723377305',[
'lucide-focus']='rbxassetid://10723377537',['lucide-folder']=
'rbxassetid://10723387563',['lucide-folder-archive']='rbxassetid://10723384478',
['lucide-folder-check']='rbxassetid://10723384605',['lucide-folder-clock']=
'rbxassetid://10723384731',['lucide-folder-closed']='rbxassetid://10723384893',[
'lucide-folder-cog']='rbxassetid://10723385213',['lucide-folder-cog-2']=
'rbxassetid://10723385036',['lucide-folder-down']='rbxassetid://10723385338',[
'lucide-folder-edit']='rbxassetid://10723385445',['lucide-folder-heart']=
'rbxassetid://10723385545',['lucide-folder-input']='rbxassetid://10723385721',[
'lucide-folder-key']='rbxassetid://10723385848',['lucide-folder-lock']=
'rbxassetid://10723386005',['lucide-folder-minus']='rbxassetid://10723386127',[
'lucide-folder-open']='rbxassetid://10723386277',['lucide-folder-output']=
'rbxassetid://10723386386',['lucide-folder-plus']='rbxassetid://10723386531',[
'lucide-folder-search']='rbxassetid://10723386787',['lucide-folder-search-2']=
'rbxassetid://10723386674',['lucide-folder-symlink']='rbxassetid://10723386930',
['lucide-folder-tree']='rbxassetid://10723387085',['lucide-folder-up']=
'rbxassetid://10723387265',['lucide-folder-x']='rbxassetid://10723387448',[
'lucide-folders']='rbxassetid://10723387721',['lucide-form-input']=
'rbxassetid://10723387841',['lucide-forward']='rbxassetid://10723388016',[
'lucide-frame']='rbxassetid://10723394389',['lucide-framer']=
'rbxassetid://10723394565',['lucide-frown']='rbxassetid://10723394681',[
'lucide-fuel']='rbxassetid://10723394846',['lucide-function-square']=
'rbxassetid://10723395041',['lucide-gamepad']='rbxassetid://10723395457',[
'lucide-gamepad-2']='rbxassetid://10723395215',['lucide-gauge']=
'rbxassetid://10723395708',['lucide-gavel']='rbxassetid://10723395896',[
'lucide-gem']='rbxassetid://10723396000',['lucide-ghost']=
'rbxassetid://10723396107',['lucide-gift']='rbxassetid://10723396402',[
'lucide-gift-card']='rbxassetid://10723396225',['lucide-git-branch']=
'rbxassetid://10723396676',['lucide-git-branch-plus']='rbxassetid://10723396542'
,['lucide-git-commit']='rbxassetid://10723396812',['lucide-git-compare']=
'rbxassetid://10723396954',['lucide-git-fork']='rbxassetid://10723397049',[
'lucide-git-merge']='rbxassetid://10723397165',['lucide-git-pull-request']=
'rbxassetid://10723397431',['lucide-git-pull-request-closed']=
'rbxassetid://10723397268',['lucide-git-pull-request-draft']=
'rbxassetid://10734884302',['lucide-glass']='rbxassetid://10723397788',[
'lucide-glass-2']='rbxassetid://10723397529',['lucide-glass-water']=
'rbxassetid://10723397678',['lucide-glasses']='rbxassetid://10723397895',[
'lucide-globe']='rbxassetid://10723404337',['lucide-globe-2']=
'rbxassetid://10723398002',['lucide-grab']='rbxassetid://10723404472',[
'lucide-graduation-cap']='rbxassetid://10723404691',['lucide-grape']=
'rbxassetid://10723404822',['lucide-grid']='rbxassetid://10723404936',[
'lucide-grip-horizontal']='rbxassetid://10723405089',['lucide-grip-vertical']=
'rbxassetid://10723405236',['lucide-hammer']='rbxassetid://10723405360',[
'lucide-hand']='rbxassetid://10723405649',['lucide-hand-metal']=
'rbxassetid://10723405508',['lucide-hard-drive']='rbxassetid://10723405749',[
'lucide-hard-hat']='rbxassetid://10723405859',['lucide-hash']=
'rbxassetid://10723405975',['lucide-haze']='rbxassetid://10723406078',[
'lucide-headphones']='rbxassetid://10723406165',['lucide-heart']=
'rbxassetid://10723406885',['lucide-heart-crack']='rbxassetid://10723406299',[
'lucide-heart-handshake']='rbxassetid://10723406480',['lucide-heart-off']=
'rbxassetid://10723406662',['lucide-heart-pulse']='rbxassetid://10723406795',[
'lucide-help-circle']='rbxassetid://10723406988',['lucide-hexagon']=
'rbxassetid://10723407092',['lucide-highlighter']='rbxassetid://10723407192',[
'lucide-history']='rbxassetid://10723407335',['lucide-home']=
'rbxassetid://10723407389',['lucide-hourglass']='rbxassetid://10723407498',[
'lucide-ice-cream']='rbxassetid://10723414308',['lucide-image']=
'rbxassetid://10723415040',['lucide-image-minus']='rbxassetid://10723414487',[
'lucide-image-off']='rbxassetid://10723414677',['lucide-image-plus']=
'rbxassetid://10723414827',['lucide-import']='rbxassetid://10723415205',[
'lucide-inbox']='rbxassetid://10723415335',['lucide-indent']=
'rbxassetid://10723415494',['lucide-indian-rupee']='rbxassetid://10723415642',[
'lucide-infinity']='rbxassetid://10723415766',['lucide-info']=
'rbxassetid://10723415903',['lucide-inspect']='rbxassetid://10723416057',[
'lucide-italic']='rbxassetid://10723416195',['lucide-japanese-yen']=
'rbxassetid://10723416363',['lucide-joystick']='rbxassetid://10723416527',[
'lucide-key']='rbxassetid://10723416652',['lucide-keyboard']=
'rbxassetid://10723416765',['lucide-lamp']='rbxassetid://10723417513',[
'lucide-lamp-ceiling']='rbxassetid://10723416922',['lucide-lamp-desk']=
'rbxassetid://10723417016',['lucide-lamp-floor']='rbxassetid://10723417131',[
'lucide-lamp-wall-down']='rbxassetid://10723417240',['lucide-lamp-wall-up']=
'rbxassetid://10723417356',['lucide-landmark']='rbxassetid://10723417608',[
'lucide-languages']='rbxassetid://10723417703',['lucide-laptop']=
'rbxassetid://10723423881',['lucide-laptop-2']='rbxassetid://10723417797',[
'lucide-lasso']='rbxassetid://10723424235',['lucide-lasso-select']=
'rbxassetid://10723424058',['lucide-laugh']='rbxassetid://10723424372',[
'lucide-layers']='rbxassetid://10723424505',['lucide-layout']=
'rbxassetid://10723425376',['lucide-layout-dashboard']=
'rbxassetid://10723424646',['lucide-layout-grid']='rbxassetid://10723424838',[
'lucide-layout-list']='rbxassetid://10723424963',['lucide-layout-template']=
'rbxassetid://10723425187',['lucide-leaf']='rbxassetid://10723425539',[
'lucide-library']='rbxassetid://10723425615',['lucide-life-buoy']=
'rbxassetid://10723425685',['lucide-lightbulb']='rbxassetid://10723425852',[
'lucide-lightbulb-off']='rbxassetid://10723425762',['lucide-line-chart']=
'rbxassetid://10723426393',['lucide-link']='rbxassetid://10723426722',[
'lucide-link-2']='rbxassetid://10723426595',['lucide-link-2-off']=
'rbxassetid://10723426513',['lucide-list']='rbxassetid://10723433811',[
'lucide-list-checks']='rbxassetid://10734884548',['lucide-list-end']=
'rbxassetid://10723426886',['lucide-list-minus']='rbxassetid://10723426986',[
'lucide-list-music']='rbxassetid://10723427081',['lucide-list-ordered']=
'rbxassetid://10723427199',['lucide-list-plus']='rbxassetid://10723427334',[
'lucide-list-start']='rbxassetid://10723427494',['lucide-list-video']=
'rbxassetid://10723427619',['lucide-list-todo']='rbxassetid://17376008003',[
'lucide-list-x']='rbxassetid://10723433655',['lucide-loader']=
'rbxassetid://10723434070',['lucide-loader-2']='rbxassetid://10723433935',[
'lucide-locate']='rbxassetid://10723434557',['lucide-locate-fixed']=
'rbxassetid://10723434236',['lucide-locate-off']='rbxassetid://10723434379',[
'lucide-lock']='rbxassetid://10723434711',['lucide-log-in']=
'rbxassetid://10723434830',['lucide-log-out']='rbxassetid://10723434906',[
'lucide-luggage']='rbxassetid://10723434993',['lucide-magnet']=
'rbxassetid://10723435069',['lucide-mail']='rbxassetid://10734885430',[
'lucide-mail-check']='rbxassetid://10723435182',['lucide-mail-minus']=
'rbxassetid://10723435261',['lucide-mail-open']='rbxassetid://10723435342',[
'lucide-mail-plus']='rbxassetid://10723435443',['lucide-mail-question']=
'rbxassetid://10723435515',['lucide-mail-search']='rbxassetid://10734884739',[
'lucide-mail-warning']='rbxassetid://10734885015',['lucide-mail-x']=
'rbxassetid://10734885247',['lucide-mails']='rbxassetid://10734885614',[
'lucide-map']='rbxassetid://10734886202',['lucide-map-pin']=
'rbxassetid://10734886004',['lucide-map-pin-off']='rbxassetid://10734885803',[
'lucide-maximize']='rbxassetid://10734886735',['lucide-maximize-2']=
'rbxassetid://10734886496',['lucide-medal']='rbxassetid://10734887072',[
'lucide-megaphone']='rbxassetid://10734887454',['lucide-megaphone-off']=
'rbxassetid://10734887311',['lucide-meh']='rbxassetid://10734887603',[
'lucide-menu']='rbxassetid://10734887784',['lucide-message-circle']=
'rbxassetid://10734888000',['lucide-message-square']='rbxassetid://10734888228',
['lucide-mic']='rbxassetid://10734888864',['lucide-mic-2']=
'rbxassetid://10734888430',['lucide-mic-off']='rbxassetid://10734888646',[
'lucide-microscope']='rbxassetid://10734889106',['lucide-microwave']=
'rbxassetid://10734895076',['lucide-milestone']='rbxassetid://10734895310',[
'lucide-minimize']='rbxassetid://10734895698',['lucide-minimize-2']=
'rbxassetid://10734895530',['lucide-minus']='rbxassetid://10734896206',[
'lucide-minus-circle']='rbxassetid://10734895856',['lucide-minus-square']=
'rbxassetid://10734896029',['lucide-monitor']='rbxassetid://10734896881',[
'lucide-monitor-off']='rbxassetid://10734896360',['lucide-monitor-speaker']=
'rbxassetid://10734896512',['lucide-moon']='rbxassetid://10734897102',[
'lucide-more-horizontal']='rbxassetid://10734897250',['lucide-more-vertical']=
'rbxassetid://10734897387',['lucide-mountain']='rbxassetid://10734897956',[
'lucide-mountain-snow']='rbxassetid://10734897665',['lucide-mouse']=
'rbxassetid://10734898592',['lucide-mouse-pointer']='rbxassetid://10734898476',[
'lucide-mouse-pointer-2']='rbxassetid://10734898194',[
'lucide-mouse-pointer-click']='rbxassetid://10734898355',['lucide-move']=
'rbxassetid://10734900011',['lucide-move-3d']='rbxassetid://10734898756',[
'lucide-move-diagonal']='rbxassetid://10734899164',['lucide-move-diagonal-2']=
'rbxassetid://10734898934',['lucide-move-horizontal']='rbxassetid://10734899414'
,['lucide-move-vertical']='rbxassetid://10734899821',['lucide-music']=
'rbxassetid://10734905958',['lucide-music-2']='rbxassetid://10734900215',[
'lucide-music-3']='rbxassetid://10734905665',['lucide-music-4']=
'rbxassetid://10734905823',['lucide-navigation']='rbxassetid://10734906744',[
'lucide-navigation-2']='rbxassetid://10734906332',['lucide-navigation-2-off']=
'rbxassetid://10734906144',['lucide-navigation-off']='rbxassetid://10734906580',
['lucide-network']='rbxassetid://10734906975',['lucide-newspaper']=
'rbxassetid://10734907168',['lucide-octagon']='rbxassetid://10734907361',[
'lucide-option']='rbxassetid://10734907649',['lucide-outdent']=
'rbxassetid://10734907933',['lucide-package']='rbxassetid://10734909540',[
'lucide-package-2']='rbxassetid://10734908151',['lucide-package-check']=
'rbxassetid://10734908384',['lucide-package-minus']='rbxassetid://10734908626',[
'lucide-package-open']='rbxassetid://10734908793',['lucide-package-plus']=
'rbxassetid://10734909016',['lucide-package-search']='rbxassetid://10734909196',
['lucide-package-x']='rbxassetid://10734909375',['lucide-paint-bucket']=
'rbxassetid://10734909847',['lucide-paintbrush']='rbxassetid://10734910187',[
'lucide-paintbrush-2']='rbxassetid://10734910030',['lucide-palette']=
'rbxassetid://10734910430',['lucide-palmtree']='rbxassetid://10734910680',[
'lucide-paperclip']='rbxassetid://10734910927',['lucide-party-popper']=
'rbxassetid://10734918735',['lucide-pause']='rbxassetid://10734919336',[
'lucide-pause-circle']='rbxassetid://10735024209',['lucide-pause-octagon']=
'rbxassetid://10734919143',['lucide-pen-tool']='rbxassetid://10734919503',[
'lucide-pencil']='rbxassetid://10734919691',['lucide-percent']=
'rbxassetid://10734919919',['lucide-person-standing']='rbxassetid://10734920149'
,['lucide-phone']='rbxassetid://10734921524',['lucide-phone-call']=
'rbxassetid://10734920305',['lucide-phone-forwarded']='rbxassetid://10734920508'
,['lucide-phone-incoming']='rbxassetid://10734920694',['lucide-phone-missed']=
'rbxassetid://10734920845',['lucide-phone-off']='rbxassetid://10734921077',[
'lucide-phone-outgoing']='rbxassetid://10734921288',['lucide-pie-chart']=
'rbxassetid://10734921727',['lucide-piggy-bank']='rbxassetid://10734921935',[
'lucide-pin']='rbxassetid://10734922324',['lucide-pin-off']=
'rbxassetid://10734922180',['lucide-pipette']='rbxassetid://10734922497',[
'lucide-pizza']='rbxassetid://10734922774',['lucide-plane']=
'rbxassetid://10734922971',['lucide-plane-landing']='rbxassetid://17376029914',[
'lucide-play']='rbxassetid://10734923549',['lucide-play-circle']=
'rbxassetid://10734923214',['lucide-plus']='rbxassetid://10734924532',[
'lucide-plus-circle']='rbxassetid://10734923868',['lucide-plus-square']=
'rbxassetid://10734924219',['lucide-podcast']='rbxassetid://10734929553',[
'lucide-pointer']='rbxassetid://10734929723',['lucide-pound-sterling']=
'rbxassetid://10734929981',['lucide-power']='rbxassetid://10734930466',[
'lucide-power-off']='rbxassetid://10734930257',['lucide-printer']=
'rbxassetid://10734930632',['lucide-puzzle']='rbxassetid://10734930886',[
'lucide-quote']='rbxassetid://10734931234',['lucide-radio']=
'rbxassetid://10734931596',['lucide-radio-receiver']='rbxassetid://10734931402',
['lucide-rectangle-horizontal']='rbxassetid://10734931777',[
'lucide-rectangle-vertical']='rbxassetid://10734932081',['lucide-recycle']=
'rbxassetid://10734932295',['lucide-redo']='rbxassetid://10734932822',[
'lucide-redo-2']='rbxassetid://10734932586',['lucide-refresh-ccw']=
'rbxassetid://10734933056',['lucide-refresh-cw']='rbxassetid://10734933222',[
'lucide-refrigerator']='rbxassetid://10734933465',['lucide-regex']=
'rbxassetid://10734933655',['lucide-repeat']='rbxassetid://10734933966',[
'lucide-repeat-1']='rbxassetid://10734933826',['lucide-reply']=
'rbxassetid://10734934252',['lucide-reply-all']='rbxassetid://10734934132',[
'lucide-rewind']='rbxassetid://10734934347',['lucide-rocket']=
'rbxassetid://10734934585',['lucide-rocking-chair']='rbxassetid://10734939942',[
'lucide-rotate-3d']='rbxassetid://10734940107',['lucide-rotate-ccw']=
'rbxassetid://10734940376',['lucide-rotate-cw']='rbxassetid://10734940654',[
'lucide-rss']='rbxassetid://10734940825',['lucide-ruler']=
'rbxassetid://10734941018',['lucide-russian-ruble']='rbxassetid://10734941199',[
'lucide-sailboat']='rbxassetid://10734941354',['lucide-save']=
'rbxassetid://10734941499',['lucide-scale']='rbxassetid://10734941912',[
'lucide-scale-3d']='rbxassetid://10734941739',['lucide-scaling']=
'rbxassetid://10734942072',['lucide-scan']='rbxassetid://10734942565',[
'lucide-scan-face']='rbxassetid://10734942198',['lucide-scan-line']=
'rbxassetid://10734942351',['lucide-scissors']='rbxassetid://10734942778',[
'lucide-screen-share']='rbxassetid://10734943193',['lucide-screen-share-off']=
'rbxassetid://10734942967',['lucide-scroll']='rbxassetid://10734943448',[
'lucide-search']='rbxassetid://10734943674',['lucide-send']=
'rbxassetid://10734943902',['lucide-separator-horizontal']=
'rbxassetid://10734944115',['lucide-separator-vertical']=
'rbxassetid://10734944326',['lucide-server']='rbxassetid://10734949856',[
'lucide-server-cog']='rbxassetid://10734944444',['lucide-server-crash']=
'rbxassetid://10734944554',['lucide-server-off']='rbxassetid://10734944668',[
'lucide-settings']='rbxassetid://10734950309',['lucide-settings-2']=
'rbxassetid://10734950020',['lucide-share']='rbxassetid://10734950813',[
'lucide-share-2']='rbxassetid://10734950553',['lucide-sheet']=
'rbxassetid://10734951038',['lucide-shield']='rbxassetid://10734951847',[
'lucide-shield-alert']='rbxassetid://10734951173',['lucide-shield-check']=
'rbxassetid://10734951367',['lucide-shield-close']='rbxassetid://10734951535',[
'lucide-shield-off']='rbxassetid://10734951684',['lucide-shirt']=
'rbxassetid://10734952036',['lucide-shopping-bag']='rbxassetid://10734952273',[
'lucide-shopping-cart']='rbxassetid://10734952479',['lucide-shovel']=
'rbxassetid://10734952773',['lucide-shower-head']='rbxassetid://10734952942',[
'lucide-shrink']='rbxassetid://10734953073',['lucide-shrub']=
'rbxassetid://10734953241',['lucide-shuffle']='rbxassetid://10734953451',[
'lucide-sidebar']='rbxassetid://10734954301',['lucide-sidebar-close']=
'rbxassetid://10734953715',['lucide-sidebar-open']='rbxassetid://10734954000',[
'lucide-sigma']='rbxassetid://10734954538',['lucide-signal']=
'rbxassetid://10734961133',['lucide-signal-high']='rbxassetid://10734954807',[
'lucide-signal-low']='rbxassetid://10734955080',['lucide-signal-medium']=
'rbxassetid://10734955336',['lucide-signal-zero']='rbxassetid://10734960878',[
'lucide-siren']='rbxassetid://10734961284',['lucide-skip-back']=
'rbxassetid://10734961526',['lucide-skip-forward']='rbxassetid://10734961809',[
'lucide-skull']='rbxassetid://10734962068',['lucide-slack']=
'rbxassetid://10734962339',['lucide-slash']='rbxassetid://10734962600',[
'lucide-slice']='rbxassetid://10734963024',['lucide-sliders']=
'rbxassetid://10734963400',['lucide-sliders-horizontal']=
'rbxassetid://10734963191',['lucide-smartphone']='rbxassetid://10734963940',[
'lucide-smartphone-charging']='rbxassetid://10734963671',['lucide-smile']=
'rbxassetid://10734964441',['lucide-smile-plus']='rbxassetid://10734964188',[
'lucide-snowflake']='rbxassetid://10734964600',['lucide-sofa']=
'rbxassetid://10734964852',['lucide-sort-asc']='rbxassetid://10734965115',[
'lucide-sort-desc']='rbxassetid://10734965287',['lucide-speaker']=
'rbxassetid://10734965419',['lucide-sprout']='rbxassetid://10734965572',[
'lucide-square']='rbxassetid://10734965702',['lucide-star']=
'rbxassetid://10734966248',['lucide-star-half']='rbxassetid://10734965897',[
'lucide-star-off']='rbxassetid://10734966097',['lucide-stethoscope']=
'rbxassetid://10734966384',['lucide-sticker']='rbxassetid://10734972234',[
'lucide-sticky-note']='rbxassetid://10734972463',['lucide-stop-circle']=
'rbxassetid://10734972621',['lucide-stretch-horizontal']=
'rbxassetid://10734972862',['lucide-stretch-vertical']=
'rbxassetid://10734973130',['lucide-strikethrough']='rbxassetid://10734973290',[
'lucide-subscript']='rbxassetid://10734973457',['lucide-sun']=
'rbxassetid://10734974297',['lucide-sun-dim']='rbxassetid://10734973645',[
'lucide-sun-medium']='rbxassetid://10734973778',['lucide-sun-moon']=
'rbxassetid://10734973999',['lucide-sun-snow']='rbxassetid://10734974130',[
'lucide-sunrise']='rbxassetid://10734974522',['lucide-sunset']=
'rbxassetid://10734974689',['lucide-superscript']='rbxassetid://10734974850',[
'lucide-swiss-franc']='rbxassetid://10734975024',['lucide-switch-camera']=
'rbxassetid://10734975214',['lucide-sword']='rbxassetid://10734975486',[
'lucide-swords']='rbxassetid://10734975692',['lucide-syringe']=
'rbxassetid://10734975932',['lucide-table']='rbxassetid://10734976230',[
'lucide-table-2']='rbxassetid://10734976097',['lucide-tablet']=
'rbxassetid://10734976394',['lucide-tag']='rbxassetid://10734976528',[
'lucide-tags']='rbxassetid://10734976739',['lucide-target']=
'rbxassetid://10734977012',['lucide-tent']='rbxassetid://10734981750',[
'lucide-terminal']='rbxassetid://10734982144',['lucide-terminal-square']=
'rbxassetid://10734981995',['lucide-text-cursor']='rbxassetid://10734982395',[
'lucide-text-cursor-input']='rbxassetid://10734982297',['lucide-thermometer']=
'rbxassetid://10734983134',['lucide-thermometer-snowflake']=
'rbxassetid://10734982571',['lucide-thermometer-sun']='rbxassetid://10734982771'
,['lucide-thumbs-down']='rbxassetid://10734983359',['lucide-thumbs-up']=
'rbxassetid://10734983629',['lucide-ticket']='rbxassetid://10734983868',[
'lucide-timer']='rbxassetid://10734984606',['lucide-timer-off']=
'rbxassetid://10734984138',['lucide-timer-reset']='rbxassetid://10734984355',[
'lucide-toggle-left']='rbxassetid://10734984834',['lucide-toggle-right']=
'rbxassetid://10734985040',['lucide-tornado']='rbxassetid://10734985247',[
'lucide-toy-brick']='rbxassetid://10747361919',['lucide-train']=
'rbxassetid://10747362105',['lucide-trash']='rbxassetid://10747362393',[
'lucide-trash-2']='rbxassetid://10747362241',['lucide-tree-deciduous']=
'rbxassetid://10747362534',['lucide-tree-pine']='rbxassetid://10747362748',[
'lucide-trees']='rbxassetid://10747363016',['lucide-trending-down']=
'rbxassetid://10747363205',['lucide-trending-up']='rbxassetid://10747363465',[
'lucide-triangle']='rbxassetid://10747363621',['lucide-trophy']=
'rbxassetid://10747363809',['lucide-truck']='rbxassetid://10747364031',[
'lucide-tv']='rbxassetid://10747364593',['lucide-tv-2']=
'rbxassetid://10747364302',['lucide-type']='rbxassetid://10747364761',[
'lucide-umbrella']='rbxassetid://10747364971',['lucide-underline']=
'rbxassetid://10747365191',['lucide-undo']='rbxassetid://10747365484',[
'lucide-undo-2']='rbxassetid://10747365359',['lucide-unlink']=
'rbxassetid://10747365771',['lucide-unlink-2']='rbxassetid://10747397871',[
'lucide-unlock']='rbxassetid://10747366027',['lucide-upload']=
'rbxassetid://10747366434',['lucide-upload-cloud']='rbxassetid://10747366266',[
'lucide-usb']='rbxassetid://10747366606',['lucide-user']=
'rbxassetid://10747373176',['lucide-user-check']='rbxassetid://10747371901',[
'lucide-user-cog']='rbxassetid://10747372167',['lucide-user-minus']=
'rbxassetid://10747372346',['lucide-user-plus']='rbxassetid://10747372702',[
'lucide-user-x']='rbxassetid://10747372992',['lucide-users']=
'rbxassetid://10747373426',['lucide-utensils']='rbxassetid://10747373821',[
'lucide-utensils-crossed']='rbxassetid://10747373629',['lucide-venetian-mask']=
'rbxassetid://10747374003',['lucide-verified']='rbxassetid://10747374131',[
'lucide-vibrate']='rbxassetid://10747374489',['lucide-vibrate-off']=
'rbxassetid://10747374269',['lucide-video']='rbxassetid://10747374938',[
'lucide-video-off']='rbxassetid://10747374721',['lucide-view']=
'rbxassetid://10747375132',['lucide-voicemail']='rbxassetid://10747375281',[
'lucide-volume']='rbxassetid://10747376008',['lucide-volume-1']=
'rbxassetid://10747375450',['lucide-volume-2']='rbxassetid://10747375679',[
'lucide-volume-x']='rbxassetid://10747375880',['lucide-wheat']=
'rbxassetid://80877624162595',['lucide-wallet']='rbxassetid://10747376205',[
'lucide-wand']='rbxassetid://10747376565',['lucide-wand-2']=
'rbxassetid://10747376349',['lucide-watch']='rbxassetid://10747376722',[
'lucide-waves']='rbxassetid://10747376931',['lucide-webcam']=
'rbxassetid://10747381992',['lucide-wifi']='rbxassetid://10747382504',[
'lucide-wifi-off']='rbxassetid://10747382268',['lucide-wind']=
'rbxassetid://10747382750',['lucide-wrap-text']='rbxassetid://10747383065',[
'lucide-wrench']='rbxassetid://10747383470',['lucide-x']=
'rbxassetid://10747384394',['lucide-x-circle']='rbxassetid://10747383819',[
'lucide-x-octagon']='rbxassetid://10747384037',['lucide-x-square']=
'rbxassetid://10747384217',['lucide-zoom-in']='rbxassetid://10747384552',[
'lucide-zoom-out']='rbxassetid://10747384679',['lucide-cat']=
'rbxassetid://16935650691',['lucide-message-circle-question']=
'rbxassetid://16970049192',['lucide-webhook']='rbxassetid://17320556264',[
'lucide-dumbbell']='rbxassetid://18273453053'}do local ah=
[[https://raw.githubusercontent.com/hungquan99/Interface/refs/heads/main/lucideicons.lua]]
local ai,aj=pcall(function()return loadstring(game:HttpGet(ah))()end)if ai and
typeof(aj)=='table'then for ak,al in next,aj do ag[ak]=al end end end function n
.GetIcon(ah,ai)if ai~=nil and ag['lucide-'..ai]then return ag['lucide-'..ai]end
return nil end function n.Tooltip(ah)return aa.Tooltip()end local ah={}ah.
__index=ah ah.__namecall=function(ai,aj,...)return ah[aj](...)end for ai,aj in
pairs(ac)do ah['Add'..aj.__type]=function(ak,al,am)aj.Container=ak.Container aj.
Type=ak.Type aj.ScrollFrame=ak.ScrollFrame aj.Library=n return aj:New(al,am)end
end n.Elements=ah if g:IsStudio()then makefolder=function(...)return...end
makefile=function(...)return...end isfile=function(...)return...end isfolder=
function(...)return...end readfile=function(...)return...end writefile=function(
...)return...end listfiles=function(...)return{...}end end local ai={}do ai.
Folder='FluentSettings'ai.Ignore={}ai.Parser={Toggle={Save=function(aj,ak)return
{type='Toggle',idx=aj,value=ak.Value}end,Load=function(aj,ak)if ai.Options[aj]
then ai.Options[aj]:SetValue(ak.value)end end},Slider={Save=function(aj,ak)
return{type='Slider',idx=aj,value=tostring(ak.Value)}end,Load=function(aj,ak)if
ai.Options[aj]then ai.Options[aj]:SetValue(ak.value)end end},Dropdown={Save=
function(aj,ak)return{type='Dropdown',idx=aj,value=ak.Value,mutli=ak.Multi}end,
Load=function(aj,ak)if ai.Options[aj]then ai.Options[aj]:SetValue(ak.value)end
end},Colorpicker={Save=function(aj,ak)return{type='Colorpicker',idx=aj,value=ak.
Value:ToHex(),transparency=ak.Transparency}end,Load=function(aj,ak)if ai.Options
[aj]then ai.Options[aj]:SetValueRGB(Color3.fromHex(ak.value),ak.transparency)end
end},Keybind={Save=function(aj,ak)return{type='Keybind',idx=aj,mode=ak.Mode,key=
ak.Value}end,Load=function(aj,ak)if ai.Options[aj]then ai.Options[aj]:SetValue(
ak.key,ak.mode)end end},Input={Save=function(aj,ak)return{type='Input',idx=aj,
text=ak.Value}end,Load=function(aj,ak)if ai.Options[aj]and type(ak.text)==
'string'then ai.Options[aj]:SetValue(ak.text)end end}}function ai.
SetIgnoreIndexes(aj,ak)for al,am in next,ak do aj.Ignore[am]=true end end
function ai.SetFolder(aj,ak)aj.Folder=ak aj:BuildFolderTree()end function ai.
Save(aj,ak)if(not ak)then return false,'no config file is selected'end local al,
am=aj.Folder..'/'..ak..'.json',{objects={}}for an,ao in next,ai.Options do if aj
.Parser[ao.Type]and not aj.Ignore[an]then table.insert(am.objects,aj.Parser[ao.
Type].Save(an,ao))end end local an,ao=pcall(f.JSONEncode,f,am)if not an then
return false,'failed to encode data'end writefile(al,ao)return true end if not g
:IsStudio()then function ai.Load(aj,ak)if(not ak)then return false,
'no config file is selected'end local al=aj.Folder..'/'..ak..'.json'if not
isfile(al)then return false,'Create Config Save File'end local am,an=pcall(f.
JSONDecode,f,readfile(al))if not am then return false,'decode error'end for ao,
ap in next,an.objects do if aj.Parser[ap.type]and not aj.Ignore[ap.idx]then task
.spawn(function()aj.Parser[ap.type].Load(ap.idx,ap)end)end end n.SettingLoaded=
true return true,an end end function ai.IgnoreThemeSettings(aj)aj:
SetIgnoreIndexes{'InterfaceTheme','AcrylicToggle','TransparentToggle',
'MenuKeybind'}end function ai.BuildFolderTree(aj)local ak={aj.Folder,aj.Folder..
'/'}for al=1,#ak do local am=ak[al]if not isfolder(am)then makefolder(am)end end
end function ai.RefreshConfigList(aj)local ak,al=listfiles(aj.Folder..'/'),{}for
am=1,#ak do local an=ak[am]if an:sub(-5)=='.json'then local ao=an:find('.json',1
,true)local ap,aq=ao,an:sub(ao,ao)while aq~='/'and aq~='\\'and aq~=''do ao=ao-1
aq=an:sub(ao,ao)end if aq=='/'or aq=='\\'then local ar=an:sub(ao+1,ap-1)if ar~=
'options'then table.insert(al,ar)end end end end return al end function ai.
SetLibrary(aj,ak)aj.Library=ak aj.Options=ak.Options end if not g:IsStudio()then
function ai.LoadAutoloadConfig(aj)if isfile(aj.Folder..'/autoload.txt')then
local ak=readfile(aj.Folder..'/autoload.txt')local al,am=aj:Load(ak)if not al
then return aj.Library:Notify{Title='Interface',Content='Config loader',
SubContent='Failed to load autoload config: '..am,Duration=7}end aj.Library:
Notify{Title='Interface',Content='Config loader',SubContent=string.format(
'Auto loaded config %q',ak),Duration=7}end end end function ai.
BuildConfigSection(aj,ak)assert(aj.Library,'Must set SaveManager.Library')local
al=ak:AddSection('Configuration','settings')al:AddInput('SaveManager_ConfigName'
,{Title='Config name'})al:AddDropdown('SaveManager_ConfigList',{Title=
'Config list',Values=aj:RefreshConfigList(),AllowNull=true})al:AddButton{Title=
'Create config',Callback=function()local am=ai.Options.SaveManager_ConfigName.
Value if am:gsub(' ','')==''then return aj.Library:Notify{Title='Interface',
Content='Config loader',SubContent='Invalid config name (empty)',Duration=7}end
local an,ao=aj:Save(am)if not an then return aj.Library:Notify{Title='Interface'
,Content='Config loader',SubContent='Failed to save config: '..ao,Duration=7}end
aj.Library:Notify{Title='Interface',Content='Config loader',SubContent=string.
format('Created config %q',am),Duration=7}ai.Options.SaveManager_ConfigList:
SetValues(aj:RefreshConfigList())ai.Options.SaveManager_ConfigList:SetValue(nil)
end}al:AddButton{Title='Load config',Callback=function()local am=ai.Options.
SaveManager_ConfigList.Value local an,ao=aj:Load(am)if not an then return aj.
Library:Notify{Title='Interface',Content='Config loader',SubContent=
'Failed to load config: '..ao,Duration=7}end aj.Library:Notify{Title='Interface'
,Content='Config loader',SubContent=string.format('Loaded config %q',am),
Duration=7}end}al:AddButton{Title='Save config',Callback=function()local am=ai.
Options.SaveManager_ConfigList.Value local an,ao=aj:Save(am)if not an then
return aj.Library:Notify{Title='Interface',Content='Config loader',SubContent=
'Failed to overwrite config: '..ao,Duration=7}end aj.Library:Notify{Title=
'Interface',Content='Config loader',SubContent=string.format(
'Overwrote config %q',am),Duration=7}end}al:AddButton{Title='Refresh list',
Callback=function()ai.Options.SaveManager_ConfigList:SetValues(aj:
RefreshConfigList())ai.Options.SaveManager_ConfigList:SetValue(nil)end}local am
am=al:AddButton{Title='Set as autoload',Description=
'Current autoload config: none',Callback=function()local an=ai.Options.
SaveManager_ConfigList.Value writefile(aj.Folder..'/autoload.txt',an)am:SetDesc(
'Current autoload config: '..an)aj.Library:Notify{Title='Interface',Content=
'Config loader',SubContent=string.format('Set %q to auto load',an),Duration=7}
end}if isfile(aj.Folder..'/autoload.txt')then local an=readfile(aj.Folder..
'/autoload.txt')am:SetDesc('Current autoload config: '..an)end ai:
SetIgnoreIndexes{'SaveManager_ConfigList','SaveManager_ConfigName'}end if not g:
IsStudio()then ai:BuildFolderTree()end end local aj={}do aj.Folder=
'FluentSettings'aj.Settings={Acrylic=true,Transparency=true,MenuKeybind='M'}
function aj.SetTheme(ak,al)aj.Settings.Theme=al end function aj.SetFolder(ak,al)
ak.Folder=al ak:BuildFolderTree()end function aj.SetLibrary(ak,al)ak.Library=al
end function aj.BuildFolderTree(ak)local al,am={},ak.Folder:split'/'for an=1,#am
do al[#al+1]=table.concat(am,'/',1,an)end table.insert(al,ak.Folder)table.
insert(al,ak.Folder..'/')for an=1,#al do local ao=al[an]if not isfolder(ao)then
makefolder(ao)end end end function aj.SaveSettings(ak)writefile(ak.Folder..
'/options.json',f:JSONEncode(aj.Settings))end function aj.LoadSettings(ak)local
al=ak.Folder..'/options.json'if isfile(al)then local am=readfile(al)if not g:
IsStudio()then pcall(f.JSONDecode,f,am)end if success then for an,ao in next,
decoded do aj.Settings[an]=ao end end end end function aj.BuildInterfaceSection(
ak,al)assert(ak.Library,'Must set InterfaceManager.Library')local am,an=ak.
Library,aj.Settings aj:LoadSettings()local ao=al:AddSection('Interface',
'monitor')local ap=ao:AddDropdown('InterfaceTheme',{Title='Theme',Description=
'Changes the interface theme.',Values=am.Themes,Default=ak.Library.Theme,
Callback=function(ap)am:SetTheme(ap)an.Theme=ap aj:SaveSettings()end})ap:
SetValue(an.Theme)if am.UseAcrylic and not i then ao:AddToggle('AcrylicToggle',{
Title='Acrylic',Description='The blurred background requires graphic quality 8+'
,Default=an.Acrylic,Callback=function(aq)am:ToggleAcrylic(aq)an.Acrylic=aq aj:
SaveSettings()end})elseif i then an.Acrylic=false end ao:AddSlider(
'WindowTransparency',{Title='Window Transparency',Description=
'Adjusts the window transparency.',Default=1,Min=0,Max=3,Rounding=1,Callback=
function(aq)am:SetWindowTransparency(aq)end})local aq=ao:AddKeybind(
'MenuKeybind',{Title='Minimize Bind',Default=am.MinimizeKey.Name or an.
MenuKeybind})aq:OnChanged(function()an.MenuKeybind=aq.Value aj:SaveSettings()end
)am.MinimizeKeybind=aq end end function n.CreateWindow(ak,al)assert(al.Title,
'Window - Missing Title')if n.Window then print
'You cannot create more than one window.'return end n.MinimizeKey=al.MinimizeKey
or Enum.KeyCode.LeftControl n.UseAcrylic=al.Acrylic or false n.Acrylic=al.
Acrylic or false n.Theme=al.Theme or'Dark'if al.Acrylic then N.init()end local
am=al.Icon if not j then if n:GetIcon(am)then am=n:GetIcon(am)end if am==''or am
==nil then am=nil end end local an=aa.Window{Parent=E,Size=al.Size,Title=al.
Title,Icon=am,SubTitle=al.SubTitle,TabWidth=al.TabWidth,Search=al.Search,
UserInfoTitle=al.UserInfoTitle,UserInfo=al.UserInfo,UserInfoTop=al.UserInfoTop,
UserInfoSubtitle=al.UserInfoSubtitle,UserInfoSubtitleColor=al.
UserInfoSubtitleColor,DropdownsOutsideWindow=al.DropdownsOutsideWindow,
SidebarCollapsible=al.SidebarCollapsible,Sidebar=al.Sidebar}n.Window=an table.
insert(n.Windows,an)aj:SetTheme(al.Theme)n:SetTheme(al.Theme)return an end
function n.CreateMinimizer(ak,al)al=al or{}if ak.Minimizer and ak.Minimizer.
Parent then return ak.Minimizer end local am=game:GetService'CoreGui'local an=am
:FindFirstChild'SkullHubMinimizeUI'if an then an:Destroy()end local ao=Instance.
new'ScreenGui'ao.Name='SkullHubMinimizeUI'ao.ResetOnSpawn=false ao.
ZIndexBehavior=Enum.ZIndexBehavior.Sibling ao.DisplayOrder=1000 ao.Parent=am l(
ao)local ap='rbxassetid://95183678717613'if type(al.Icon)=='string'and al.Icon~=
''then pcall(function()local aq=n:GetIcon(al.Icon)if aq then ap=aq elseif string
.match(al.Icon,'^rbxassetid://%d+$')then ap=al.Icon end end)end local aq=
Instance.new'ImageButton'aq.Name='MinimizeButton'aq.Parent=ao aq.Size=al.Size or
(i and UDim2.new(0,60,0,60)or UDim2.new(0,50,0,50))aq.Position=al.Position or
UDim2.new(1,-70,1,-85)aq.BackgroundTransparency=(typeof(al.Transparency)==
'number')and math.clamp(al.Transparency,0,1)or 0.3 aq.BorderSizePixel=0 aq.
ClipsDescendants=true aq.Image=ap aq.ScaleType=Enum.ScaleType.Fit aq.Active=true
aq.ZIndex=1000 aq.Visible=(al.Visible~=false)Instance.new('UICorner',aq).
CornerRadius=UDim.new(1,0)local ar=Instance.new'UIStroke'ar.ApplyStrokeMode=Enum
.ApplyStrokeMode.Border ar.Transparency=0.5 ar.Parent=aq C.AddThemeObject(aq,{
BackgroundColor3='Dialog'})C.AddThemeObject(ar,{Color='DialogBorder'})local as,
at,au=TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),aq.Size,
{dragging=false,isDragging=false,dragStart=Vector2.zero,startPos=Vector2.zero,
threshold=10}C.AddSignal(aq.MouseButton1Click,function()if au.isDragging then
return end b:Create(aq,as,{BackgroundTransparency=math.min(aq.
BackgroundTransparency+0.2,1),Size=at-UDim2.fromOffset(5,5),Rotation=5}):Play()
task.wait(0.1)b:Create(aq,as,{BackgroundTransparency=(typeof(al.Transparency)==
'number')and math.clamp(al.Transparency,0,1)or 0.3,Size=at,Rotation=0}):Play()if
n.Window then n.Window:Minimize()end end)C.AddSignal(aq.MouseEnter,function()b:
Create(aq,as,{Size=at+UDim2.fromOffset(5,5)}):Play()end)C.AddSignal(aq.
MouseLeave,function()b:Create(aq,as,{Size=at}):Play()end)local function 
LocalButtonPosition()return aq.AbsolutePosition-ao.AbsolutePosition end local av
=B.GroupMotor.new{X=0,Y=0}av:onStep(function(aw)aq.Position=UDim2.fromOffset(aw.
X,aw.Y)end)C.AddSignal(aq.InputBegan,function(aw)if aw.UserInputType==Enum.
UserInputType.MouseButton1 or aw.UserInputType==Enum.UserInputType.Touch then au
.isDragging=false au.dragging=true au.dragStart=Vector2.new(aw.Position.X,aw.
Position.Y)au.startPos=LocalButtonPosition()av:setGoal{X=B.Instant.new(au.
startPos.X),Y=B.Instant.new(au.startPos.Y)}local ax ax=aw.Changed:Connect(
function()if aw.UserInputState==Enum.UserInputState.End then au.dragging=false
ax:Disconnect()end end)end end)C.AddSignal(h.InputChanged,function(aw)if not au.
dragging then return end if aw.UserInputType==Enum.UserInputType.MouseMovement
or aw.UserInputType==Enum.UserInputType.Touch then local ax=Vector2.new(aw.
Position.X,aw.Position.Y)-au.dragStart if ax.Magnitude>au.threshold then au.
isDragging=true end local ay,az,aA=au.startPos+ax,GetScreenSize(),aq.
AbsoluteSize av:setGoal{X=B.Spring.new(math.clamp(ay.X,0,math.max(0,az.X-aA.X)),
{frequency=22}),Y=B.Spring.new(math.clamp(ay.Y,0,math.max(0,az.Y-aA.Y)),{
frequency=22})}end end)OnScreenSizeChanged(function()local aw,ax=GetScreenSize()
,aq.AbsoluteSize if ax.X<1 or ax.Y<1 then return end local ay=
LocalButtonPosition()local az,aA=math.clamp(ay.X,0,math.max(0,aw.X-ax.X)),math.
clamp(ay.Y,0,math.max(0,aw.Y-ax.Y))if math.abs(az-ay.X)<1 and math.abs(aA-ay.Y)<
1 then return end aq.Position=UDim2.fromOffset(az,aA)end)ak.Minimizer=ao ak.
MinimizerButton=aq ak.MinimizerButtonStroke=ar return ao end function n.SetTheme
(ak,al)if n.Window and table.find(n.Themes,al)then n.Theme=al C.UpdateTheme()if
al=='Glass'then n:SetWindowTransparency(0.9)end end end function n.SetLocale(ak,
al)return o.Set(al)end function n.GetLocale(ak)return o.Get()end function n.
GetSupportedLocales(ak)return o.GetSupported()end function n.OnLocaleChanged(ak,
al)return o.OnChanged(al)end function n.Destroy(ak)if n.Window then n.Unloaded=
true if n.UseAcrylic then n.Window.AcrylicPaint.Model:Destroy()if N.Disable then
N.Disable()end end C.Disconnect()n.GUI:Destroy()end if n.Minimizer then pcall(
function()if n.MinimizerButton then C.Registry[n.MinimizerButton]=nil end if n.
MinimizerButtonStroke then C.Registry[n.MinimizerButtonStroke]=nil end n.
Minimizer:Destroy()end)n.Minimizer=nil n.MinimizerButton=nil n.
MinimizerButtonStroke=nil end end function n.ToggleAcrylic(ak,al)if n.Window
then if n.UseAcrylic then n.Acrylic=al if n.Window.AcrylicPaint and n.Window.
AcrylicPaint.SetEnabled then n.Window.AcrylicPaint.SetEnabled(al)elseif n.Window
.AcrylicPaint and n.Window.AcrylicPaint.Model then n.Window.AcrylicPaint.Model.
Transparency=al and 0.95 or 1 end if al then if N.Enable then N.Enable()end
elseif N.Disable then N.Disable()end end end end function n.ToggleTransparency(
ak,al)if n.Window then n.Window.AcrylicPaint.Frame.Background.
BackgroundTransparency=al and 0.35 or 0 end end function n.SetWindowTransparency
(ak,al)if n.Window and n.UseAcrylic then al=math.clamp(al,0,3)if n.Theme==
'Glass'then local am=0.8+(al*0.05)if al>1 then am=0.85+((al-1)*0.04)end if al>2
then am=0.93+((al-2)*0.04)end n.Window.AcrylicPaint.SetTransparency(am)local an=
0.7+(al*0.08)if al>1 then an=0.78+((al-1)*0.07)end if al>2 then an=0.85+((al-2)*
0.1)end n.Window.AcrylicPaint.Frame.Background.BackgroundTransparency=math.min(
an,0.99)n.NotificationTransparency=al for ao,ap in pairs(n.ActiveNotifications
or{})do if ap and ap.ApplyTransparency then ap:ApplyTransparency()end end else n
.Window.AcrylicPaint.SetTransparency(L)n.Window.AcrylicPaint.Frame.Background.
BackgroundTransparency=al*0.3 end end end function n.RefreshAcrylic(ak)if n.
UseAcrylic and N.Refresh then N.Refresh()end end function n.Notify(ak,al)return
ae:New(al)end task.wait(0.01)return n,ai,aj,i
