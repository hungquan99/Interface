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
HoverChange=0.07},Darker={Name='Darker',Accent=Color3.fromRGB(56,109,223),
AcrylicMain=Color3.fromRGB(30,30,30),AcrylicBorder=Color3.fromRGB(60,60,60),
AcrylicGradient=ColorSequence.new(Color3.fromRGB(17,17,17),Color3.fromRGB(18,18,
18)),AcrylicNoise=0.94,TitleBarLine=Color3.fromRGB(65,65,65),Tab=Color3.fromRGB(
100,100,100),Element=Color3.fromRGB(70,70,70),ElementBorder=Color3.fromRGB(25,25
,25),InElementBorder=Color3.fromRGB(55,55,55),ElementTransparency=0.82,
DropdownFrame=Color3.fromRGB(120,120,120),DropdownHolder=Color3.fromRGB(35,35,35
),DropdownBorder=Color3.fromRGB(25,25,25),Dialog=Color3.fromRGB(35,35,35),
DialogHolder=Color3.fromRGB(25,25,25),DialogHolderLine=Color3.fromRGB(20,20,20),
DialogButton=Color3.fromRGB(35,35,35),DialogButtonBorder=Color3.fromRGB(55,55,55
),DialogBorder=Color3.fromRGB(50,50,50),DialogInput=Color3.fromRGB(45,45,45),
DialogInputLine=Color3.fromRGB(120,120,120)},Amoled={Name='Amoled',Accent=Color3
.fromRGB(255,255,255),AcrylicMain=Color3.fromRGB(0,0,0),AcrylicBorder=Color3.
fromRGB(20,20,20),AcrylicGradient=ColorSequence.new(Color3.fromRGB(0,0,0),Color3
.fromRGB(0,0,0)),AcrylicNoise=1,TitleBarLine=Color3.fromRGB(25,25,25),Tab=Color3
.fromRGB(40,40,40),Element=Color3.fromRGB(15,15,15),ElementBorder=Color3.
fromRGB(0,0,0),InElementBorder=Color3.fromRGB(40,40,40),ElementTransparency=0.95
,ToggleSlider=Color3.fromRGB(40,40,40),ToggleToggled=Color3.fromRGB(255,255,255)
,SliderRail=Color3.fromRGB(40,40,40),DropdownFrame=Color3.fromRGB(20,20,20),
DropdownHolder=Color3.fromRGB(0,0,0),DropdownBorder=Color3.fromRGB(0,0,0),
DropdownOption=Color3.fromRGB(40,40,40),Keybind=Color3.fromRGB(40,40,40),Input=
Color3.fromRGB(40,40,40),InputFocused=Color3.fromRGB(0,0,0),InputIndicator=
Color3.fromRGB(60,60,60),InputIndicatorFocus=Color3.fromRGB(255,255,255),Dialog=
Color3.fromRGB(0,0,0),DialogHolder=Color3.fromRGB(0,0,0),DialogHolderLine=Color3
.fromRGB(20,20,20),DialogButton=Color3.fromRGB(15,15,15),DialogButtonBorder=
Color3.fromRGB(30,30,30),DialogBorder=Color3.fromRGB(27,27,27),DialogInput=
Color3.fromRGB(15,15,15),DialogInputLine=Color3.fromRGB(60,60,60),Text=Color3.
fromRGB(255,255,255),SubText=Color3.fromRGB(170,170,170),Hover=Color3.fromRGB(40
,40,40),HoverChange=0.04},Light={Name='Light',Accent=Color3.fromRGB(0,103,192),
AcrylicMain=Color3.fromRGB(200,200,200),AcrylicBorder=Color3.fromRGB(120,120,120
),AcrylicGradient=ColorSequence.new(Color3.fromRGB(255,255,255),Color3.fromRGB(
255,255,255)),AcrylicNoise=0.96,TitleBarLine=Color3.fromRGB(160,160,160),Tab=
Color3.fromRGB(90,90,90),Element=Color3.fromRGB(255,255,255),ElementBorder=
Color3.fromRGB(180,180,180),InElementBorder=Color3.fromRGB(150,150,150),
ElementTransparency=0.65,ToggleSlider=Color3.fromRGB(40,40,40),ToggleToggled=
Color3.fromRGB(255,255,255),SliderRail=Color3.fromRGB(40,40,40),DropdownFrame=
Color3.fromRGB(200,200,200),DropdownHolder=Color3.fromRGB(240,240,240),
DropdownBorder=Color3.fromRGB(200,200,200),DropdownOption=Color3.fromRGB(150,150
,150),Keybind=Color3.fromRGB(120,120,120),Input=Color3.fromRGB(200,200,200),
InputFocused=Color3.fromRGB(100,100,100),InputIndicator=Color3.fromRGB(80,80,80)
,InputIndicatorFocus=Color3.fromRGB(0,103,192),Dialog=Color3.fromRGB(255,255,255
),DialogHolder=Color3.fromRGB(240,240,240),DialogHolderLine=Color3.fromRGB(228,
228,228),DialogButton=Color3.fromRGB(255,255,255),DialogButtonBorder=Color3.
fromRGB(190,190,190),DialogBorder=Color3.fromRGB(140,140,140),DialogInput=Color3
.fromRGB(250,250,250),DialogInputLine=Color3.fromRGB(160,160,160),Text=Color3.
fromRGB(0,0,0),SubText=Color3.fromRGB(40,40,40),Hover=Color3.fromRGB(50,50,50),
HoverChange=0.16},Rose={Name='Rose',Accent=Color3.fromRGB(219,48,123),
AcrylicMain=Color3.fromRGB(35,25,30),AcrylicBorder=Color3.fromRGB(145,35,75),
AcrylicGradient=ColorSequence.new(Color3.fromRGB(65,25,45),Color3.fromRGB(75,30,
50)),AcrylicNoise=0.92,TitleBarLine=Color3.fromRGB(150,65,95),Tab=Color3.
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
=0.04}}local n={Version='1.2.2',OpenFrames={},Options={},Themes=m.Names,Windows=
{},Window=nil,WindowFrame=nil,Unloaded=false,Creator=nil,DialogOpen=false,
UseAcrylic=false,Acrylic=false,Transparency=true,MinimizeKeybind=nil,MinimizeKey
=Enum.KeyCode.LeftControl}local function isMotor(o)local p=tostring(o):match
'^Motor%((.+)%)$'if p then return true,p else return false end end local o={}o.
__index=o function o.new(p,q)return setmetatable({signal=p,connected=true,
_handler=q},o)end function o.disconnect(p)if p.connected then p.connected=false
for q,r in pairs(p.signal._connections)do if r==p then table.remove(p.signal.
_connections,q)return end end end end local p={}p.__index=p function p.new()
return setmetatable({_connections={},_threads={}},p)end function p.fire(q,...)
for r,s in pairs(q._connections)do s._handler(...)end for r,s in pairs(q.
_threads)do coroutine.resume(s,...)end q._threads={}end function p.connect(q,r)
local s=o.new(q,r)table.insert(q._connections,s)return s end function p.wait(q)
table.insert(q._threads,coroutine.running())return coroutine.yield()end local q=
{}q.__index=q function q.new(r,s)assert(r,'Missing argument #1: targetValue')s=s
or{}return setmetatable({_targetValue=r,_velocity=s.velocity or 1},q)end
function q.step(r,s,t)local u,v,w=s.value,r._velocity,r._targetValue local x=t*v
local y=x>=math.abs(w-u)u=u+x*(w>u and 1 or-1)if y then u=r._targetValue v=0 end
return{complete=y,value=u,velocity=v}end local r={}r.__index=r function r.new(s)
return setmetatable({_targetValue=s},r)end function r.step(s)return{complete=
true,value=s._targetValue}end local s,t,u,v=0.001,0.001,0.0001,{}v.__index=v
function v.new(w,x)assert(w,'Missing argument #1: targetValue')x=x or{}return
setmetatable({_targetValue=w,_frequency=x.frequency or 4,_dampingRatio=x.
dampingRatio or 1},v)end function v.step(w,x,y)local z,A,B,C,D=w._dampingRatio,w
._frequency*2*math.pi,w._targetValue,x.value,x.velocity or 0 local E,F,G,H=C-B,
math.exp(-z*A*y),nil,nil if z==1 then G=(E*(1+A*y)+D*y)*F+B H=(D*(1-A*y)-E*(A*A*
y))*F elseif z<1 then local I=math.sqrt(1-z*z)local J,K,L=math.cos(A*I*y),math.
sin(A*I*y),nil if I>u then L=K/I else local M=y*A L=M+((M*M)*(I*I)*(I*I)/20-I*I)
*(M*M*M)/6 end local M if A*I>u then M=K/(A*I)else local N=A*I M=y+((y*y)*(N*N)*
(N*N)/20-N*N)*(y*y*y)/6 end G=(E*(J+z*L)+D*M)*F+B H=(D*(J-L*z)-E*(L*A))*F else
local I=math.sqrt(z*z-1)local J,K=-A*(z-I),-A*(z+I)local L=(D-E*J)/(2*A*I)local
M=E-L local N,O=M*math.exp(J*y),L*math.exp(K*y)G=N+O+B H=N*J+O*K end local I=
math.abs(H)<s and math.abs(G-B)<t return{complete=I,value=I and B or G,velocity=
H}end local w,x=function()end,{}x.__index=x function x.new()return setmetatable(
{_onStep=p.new(),_onStart=p.new(),_onComplete=p.new()},x)end function x.onStep(y
,z)return y._onStep:connect(z)end function x.onStart(y,z)return y._onStart:
connect(z)end function x.onComplete(y,z)return y._onComplete:connect(z)end
function x.start(y)if not y._connection then y._connection=g.RenderStepped:
Connect(function(z)y:step(z)end)end end function x.stop(y)if y._connection then
y._connection:Disconnect()y._connection=nil end end x.destroy=x.stop x.step=w x.
getValue=w x.setGoal=w function x.__tostring(y)return'Motor'end local y=
setmetatable({},x)y.__index=y function y.new(z,A)assert(z,
'Missing argument #1: initialValue')assert(typeof(z)=='number',
'initialValue must be a number!')local B=setmetatable(x.new(),y)if A~=nil then B
._useImplicitConnections=A else B._useImplicitConnections=true end B._goal=nil B
._state={complete=true,value=z}return B end function y.step(z,A)if z._state.
complete then return true end local B=z._goal:step(z._state,A)z._state=B z.
_onStep:fire(B.value)if B.complete then if z._useImplicitConnections then z:
stop()end z._onComplete:fire()end return B.complete end function y.getValue(z)
return z._state.value end function y.setGoal(z,A)z._state.complete=false z._goal
=A z._onStart:fire()if z._useImplicitConnections then z:start()end end function
y.__tostring(z)return'Motor(Single)'end local z=setmetatable({},x)z.__index=z
local function toMotor(A)if isMotor(A)then return A end local B=typeof(A)if B==
'number'then return y.new(A,false)elseif B=='table'then return z.new(A,false)end
error(('Unable to convert %q to motor; type %s is unsupported'):format(A,B),2)
end function z.new(A,B)assert(A,'Missing argument #1: initialValues')assert(
typeof(A)=='table','initialValues must be a table!')assert(not A.step,
[[initialValues contains disallowed property "step". Did you mean to put a table of values here?]]
)local C=setmetatable(x.new(),z)if B~=nil then C._useImplicitConnections=B else
C._useImplicitConnections=true end C._complete=true C._motors={}for D,E in
pairs(A)do C._motors[D]=toMotor(E)end return C end function z.step(A,B)if A.
_complete then return true end local C=true for D,E in pairs(A._motors)do local
F=E:step(B)if not F then C=false end end A._onStep:fire(A:getValue())if C then
if A._useImplicitConnections then A:stop()end A._complete=true A._onComplete:
fire()end return C end function z.setGoal(A,B)assert(not B.step,
[[goals contains disallowed property "step". Did you mean to put a table of goals here?]]
)A._complete=false A._onStart:fire()for C,D in pairs(B)do local E=assert(A.
_motors[C],('Unknown motor for key %s'):format(C))E:setGoal(D)end if A.
_useImplicitConnections then A:start()end end function z.getValue(A)local B={}
for C,D in pairs(A._motors)do B[C]=D:getValue()end return B end function z.
__tostring(A)return'Motor(Group)'end local A,B={SingleMotor=y,GroupMotor=z,
Instant=r,Linear=q,Spring=v,isMotor=isMotor},{Registry={},Signals={},
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
ApplyCustomProps(C,D)if D.ThemeTag then B.AddThemeObject(C,D.ThemeTag)end end
function B.AddSignal(C,D)local E=C:Connect(D)table.insert(B.Signals,E)return E
end function B.Disconnect()for C=#B.Signals,1,-1 do local D=table.remove(B.
Signals,C)if D.Disconnect then D:Disconnect()end end end B.Themes=m B.Theme=B.
Theme or'Dark'function B.GetThemeProperty(C)local D=B.Themes[B.Theme]if D then
return D[C]end return B.Themes.Dark[C]end function B.UpdateTheme()if not B.
Themes[B.Theme]then B.Theme='Dark'end for C,D in next,B.Registry do for E,F in
next,D.Properties do local G=B.GetThemeProperty(F)if G then C[E]=G end end end
local C=B.GetThemeProperty'ElementTransparency'if C then for D,E in next,B.
TransparencyMotors do E:setGoal(A.Instant.new(C))end end end function B.
AddThemeObject(C,D)local E=#B.Registry+1 local F={Object=C,Properties=D,Idx=E}B.
Registry[C]=F B.UpdateTheme()return C end function B.OverrideTag(C,D)B.Registry[
C].Properties=D B.UpdateTheme()end function B.GetThemeProperty(C)if m[n.Theme][C
]then return m[n.Theme][C]end return m.Dark[C]end function B.New(C,D,E)local F=
Instance.new(C)for G,H in next,B.DefaultProperties[C]or{}do F[G]=H end for G,H
in next,D or{}do if G~='ThemeTag'then F[G]=H end end for G,H in next,E or{}do H.
Parent=F end ApplyCustomProps(F,D)return F end function B.SpringMotor(C,D,E,F,G)
F=F or false G=G or false local H=A.SingleMotor.new(C)H:onStep(function(I)D[E]=I
end)if G then table.insert(B.TransparencyMotors,H)end local function SetValue(I,
J)J=J or false if not F then if not J then if E=='BackgroundTransparency'and n.
DialogOpen then return end end end H:setGoal(A.Spring.new(I,{frequency=8}))end
return H,SetValue end n.Creator=B local C=B.New local D=C('ScreenGui',{Parent=
game:GetService'CoreGui'})n.GUI=D l(D)local function GetScreenSize()local E=D.
AbsoluteSize if E.X<1 or E.Y<1 then return d.ViewportSize end return E end local 
function OnScreenSizeChanged(E)B.AddSignal(d:GetPropertyChangedSignal
'ViewportSize',E)B.AddSignal(D:GetPropertyChangedSignal'AbsoluteSize',E)end
local E,F=i and 6 or 16,Vector2.new(300,240)local function FitSizeToScreen(G)
local H=GetScreenSize()local I,J,K,L=math.max(F.X,H.X-E*2),math.max(F.Y,H.Y-E*2)
,G.X.Offset,G.Y.Offset if K<1 or L<1 then return UDim2.fromOffset(math.min(F.X,I
),math.min(F.Y,J))end local M=math.min(1,I/K,J/L)K=math.min(K*M,I)L=math.min(L*M
,J)return UDim2.fromOffset(math.floor(math.max(K,math.min(F.X,I))),math.floor(
math.max(L,math.min(F.Y,J))))end local function FitTabWidth(G,H,I)G=G or 160 if
not I or I<1 or H>=I then return G end return math.floor(math.clamp(G*(H/I),math
.min(84,G),G))end n.Mobile=i n.GetScreenSize=GetScreenSize function n.
SafeCallback(G,H,...)if not H then return end local I,J=pcall(H,...)if not I
then local K,L=J:find':%d+: 'if not L then return n:Notify{Title='Interface',
Content='Callback error',SubContent=J,Duration=5}end return n:Notify{Title=
'Interface',Content='Callback error',SubContent=J:sub(L+1),Duration=5}end end
function n.Round(G,H,I)if I==0 then return math.floor(H)end H=tostring(H)return
H:find'%.'and tonumber(H:sub(1,H:find'%.'+I))or H end local function map(G,H,I,J
,K)return(G-H)*(K-J)/(I-H)+J end local function viewportPointToWorld(G,H)local I
=game:GetService'Workspace'.CurrentCamera:ScreenPointToRay(G.X,G.Y)return I.
Origin+I.Direction*H end local function getOffset()local G=game:GetService
'Workspace'.CurrentCamera.ViewportSize.Y return map(G,0,2560,8,56)end local G,H=
unpack{viewportPointToWorld,getOffset}local I=Instance.new('Folder',game:
GetService'Workspace'.CurrentCamera)local function createAcrylic()local J=B.New(
'Part',{Name='Body',Color=Color3.new(0,0,0),Material=Enum.Material.Glass,Size=
Vector3.new(1,1,0),Anchored=true,CanCollide=false,Locked=true,CastShadow=false,
Transparency=0.95},{B.New('SpecialMesh',{MeshType=Enum.MeshType.Brick,Offset=
Vector3.new(0,0,-1E-6)})})return J end function AcrylicBlur()local function 
createAcrylicBlur(J)local K={}J=J or 0.001 local L,M={topLeft=Vector2.new(),
topRight=Vector2.new(),bottomRight=Vector2.new()},createAcrylic()M.Parent=I
local function updatePositions(N,O)L.topLeft=O L.topRight=O+Vector2.new(N.X,0)L.
bottomRight=O+N end local function render()local N=game:GetService'Workspace'.
CurrentCamera if N then N=N.CFrame end local O=N if not O then O=CFrame.new()end
local P,Q,R,S=O,L.topLeft,L.topRight,L.bottomRight local T,U,V=G(Q,J),G(R,J),G(S
,J)local W,X=(U-T).Magnitude,(U-V).Magnitude M.CFrame=CFrame.fromMatrix((T+V)/2,
P.XVector,P.YVector,P.ZVector)M.Mesh.Scale=Vector3.new(W,X,0)end local function 
onChange(N)local O=H()local P,Q=N.AbsoluteSize-Vector2.new(O,O),N.
AbsolutePosition+Vector2.new(O/2,O/2)updatePositions(P,Q)task.spawn(render)end
local function renderOnChange()local N=game:GetService'Workspace'.CurrentCamera
if not N then return end table.insert(K,N:GetPropertyChangedSignal'CFrame':
Connect(render))table.insert(K,N:GetPropertyChangedSignal'ViewportSize':Connect(
render))table.insert(K,N:GetPropertyChangedSignal'FieldOfView':Connect(render))
task.spawn(render)end M.Destroying:Connect(function()for N,O in K do pcall(
function()O:Disconnect()end)end end)renderOnChange()return onChange,M end return
function(J)local K,L,M={},createAcrylicBlur(J)local N=B.New('Frame',{
BackgroundTransparency=1,Size=UDim2.fromScale(1,1)})B.AddSignal(N:
GetPropertyChangedSignal'AbsolutePosition',function()L(N)end)B.AddSignal(N:
GetPropertyChangedSignal'AbsoluteSize',function()L(N)end)K.AddParent=function(O)
B.AddSignal(O:GetPropertyChangedSignal'Visible',function()K.SetVisibility(O.
Visible)end)end K.SetVisibility=function(O)M.Transparency=O and 0.95 or 1 end K.
Frame=N K.Model=M return K end end function AcrylicPaint()local J,K=B.New,
AcrylicBlur()return function(L)local M={}M.Frame=J('Frame',{Size=UDim2.
fromScale(1,1),BackgroundTransparency=0.9,BackgroundColor3=Color3.fromRGB(255,
255,255),BorderSizePixel=0},{J('ImageLabel',{Image='rbxassetid://8992230677',
ScaleType='Slice',SliceCenter=Rect.new(Vector2.new(99,99),Vector2.new(99,99)),
AnchorPoint=Vector2.new(0.5,0.5),Size=UDim2.new(1,120,1,116),Position=UDim2.new(
0.5,0,0.5,0),BackgroundTransparency=1,ImageColor3=Color3.fromRGB(0,0,0),
ImageTransparency=0.7}),J('UICorner',{CornerRadius=UDim.new(0,8)}),J('Frame',{
BackgroundTransparency=0.45,Size=UDim2.fromScale(1,1),Name='Background',ThemeTag
={BackgroundColor3='AcrylicMain'}},{J('UICorner',{CornerRadius=UDim.new(0,8)})})
,J('Frame',{BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=
0.4,Size=UDim2.fromScale(1,1)},{J('UICorner',{CornerRadius=UDim.new(0,8)}),J(
'UIGradient',{Rotation=90,ThemeTag={Color='AcrylicGradient'}})}),J('ImageLabel',
{Image='rbxassetid://9968344105',ImageTransparency=0.98,ScaleType=Enum.ScaleType
.Tile,TileSize=UDim2.new(0,128,0,128),Size=UDim2.fromScale(1,1),
BackgroundTransparency=1},{J('UICorner',{CornerRadius=UDim.new(0,8)})}),J(
'ImageLabel',{Image='rbxassetid://9968344227',ImageTransparency=0.9,ScaleType=
Enum.ScaleType.Tile,TileSize=UDim2.new(0,128,0,128),Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,ThemeTag={ImageTransparency='AcrylicNoise'}},{J(
'UICorner',{CornerRadius=UDim.new(0,8)})}),J('Frame',{BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),ZIndex=2},{J('UICorner',{CornerRadius=UDim.new(0,8)}),
J('UIStroke',{Transparency=0.5,Thickness=1,ThemeTag={Color='AcrylicBorder'}})})}
)local N if n.UseAcrylic then N=K()N.Frame.Parent=M.Frame M.Model=N.Model M.
AddParent=N.AddParent M.SetVisibility=N.SetVisibility end return M end end local
J={AcrylicBlur=AcrylicBlur(),CreateAcrylic=createAcrylic,AcrylicPaint=
AcrylicPaint()}function J.init()function J.Enable()end function J.Disable()end
end local K={Assets={Close='rbxassetid://9886659671',Min=
'rbxassetid://9886659276',Max='rbxassetid://9886659406',Restore=
'rbxassetid://9886659001'}}K.Element=(function()local L=B.New return function(M,
N,O,P,Q)local R,S={},Q or{}R.TitleLabel=L('TextLabel',{FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle
.Normal),Text=M,TextColor3=Color3.fromRGB(240,240,240),TextSize=13,
TextXAlignment=Enum.TextXAlignment.Left,Size=UDim2.new(1,0,0,14),
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
LayoutOrder=2,ThemeTag={TextColor3='Text'}})R.Header=L('Frame',{AutomaticSize=
Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.new(1,0,0,14)},{L(
'UIListLayout',{Padding=UDim.new(0,5),FillDirection=Enum.FillDirection.
Horizontal,SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.
VerticalAlignment.Center})})if S and S.Icon then local T=S.Icon pcall(function()
if n and n.GetIcon then local U=n:GetIcon(S.Icon)if U then T=U end end end)R.
IconImage=L('ImageLabel',{Image=T,Size=UDim2.fromOffset(16,16),
BackgroundTransparency=1,LayoutOrder=1,ThemeTag={ImageColor3='Text'}})R.
IconImage.Parent=R.Header end R.TitleLabel.Parent=R.Header R.DescLabel=L(
'TextLabel',{FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',Text=N,
TextColor3=Color3.fromRGB(200,200,200),TextSize=12,TextWrapped=true,
TextXAlignment=Enum.TextXAlignment.Left,BackgroundColor3=Color3.fromRGB(255,255,
255),AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.new(
1,0,0,14),ThemeTag={TextColor3='SubText'}})R.LabelHolder=L('Frame',{
AutomaticSize=Enum.AutomaticSize.Y,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,Position=UDim2.fromOffset(10,0),Size=UDim2.new(1,-28,0,
0)},{L('UIListLayout',{SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=
Enum.VerticalAlignment.Center}),L('UIPadding',{PaddingBottom=UDim.new(0,13),
PaddingTop=UDim.new(0,13)}),R.Header,R.DescLabel})R.Border=L('UIStroke',{
Transparency=0.5,ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Color=Color3.
fromRGB(0,0,0),ThemeTag={Color='ElementBorder'}})R.Frame=L('TextButton',{Visible
=S.Visible and S.Visible or true,Size=UDim2.new(1,0,0,0),BackgroundTransparency=
0.89,BackgroundColor3=Color3.fromRGB(130,130,130),Parent=O,AutomaticSize=Enum.
AutomaticSize.Y,Text='',LayoutOrder=7,ThemeTag={BackgroundColor3='Element',
BackgroundTransparency='ElementTransparency'}},{L('UICorner',{CornerRadius=UDim.
new(0,4)}),R.Border,R.LabelHolder})function R.SetTitle(T,U)R.TitleLabel.Text=U
local V=(U~=nil and U~='')R.Header.Visible=V if not V then if R.IconImage then
if not R.DescRow then R.DescRow=L('Frame',{AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,Size=UDim2.new(1,0,0,14),LayoutOrder=2},{L(
'UIListLayout',{Padding=UDim.new(0,5),FillDirection=Enum.FillDirection.
Horizontal,SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.
VerticalAlignment.Center})})R.DescRow.Parent=R.LabelHolder end if not R.
DescIconImage then R.DescIconImage=L('ImageLabel',{Image=R.IconImage.Image,Size=
UDim2.fromOffset(16,16),BackgroundTransparency=1,LayoutOrder=1,ThemeTag={
ImageColor3='Text'}})R.DescIconImage.Parent=R.DescRow else R.DescIconImage.Image
=R.IconImage.Image R.DescIconImage.Parent=R.DescRow end R.DescLabel.Parent=R.
DescRow R.DescLabel.LayoutOrder=2 R.DescLabel.Size=UDim2.new(1,-24,0,14)else if
R.DescRow then R.DescRow:Destroy()R.DescRow=nil R.DescIconImage=nil end R.
DescLabel.Parent=R.LabelHolder R.DescLabel.LayoutOrder=2 R.DescLabel.Size=UDim2.
new(1,0,0,14)end else if R.DescRow then R.DescRow:Destroy()R.DescRow=nil R.
DescIconImage=nil end R.DescLabel.Parent=R.LabelHolder R.DescLabel.LayoutOrder=2
R.DescLabel.Size=UDim2.new(1,0,0,14)end if n.Windows and#n.Windows>0 then local
W=n.Windows[#n.Windows]if W and W.AllElements and W.AllElements[R.Frame]then W.
AllElements[R.Frame].title=U end end end function R.Visible(T,U)R.Frame.Visible=
U end function R.SetDesc(T,U)if U==nil then U=''end if U==''then R.DescLabel.
Visible=false else R.DescLabel.Visible=true end R.DescLabel.Text=U if n.Windows
and#n.Windows>0 then local V=n.Windows[#n.Windows]if V and V.AllElements and V.
AllElements[R.Frame]then V.AllElements[R.Frame].description=U end end end
function R.GetTitle(T)return R.TitleLabel.Text end function R.GetDesc(T)return R
.DescLabel.Text end function R.Destroy(T)R.Frame:Destroy()end R.Header.Visible=
not(M==nil or M=='')R:SetTitle(M or'')R:SetDesc(N)if n.Windows and#n.Windows>0
then local T=n.Windows[#n.Windows]if T and T.RegisterElement then T.
RegisterElement(R.Frame,M,'Element',N)end end if P then local T,U,V=n.Themes,B.
SpringMotor(B.GetThemeProperty'ElementTransparency',R.Frame,
'BackgroundTransparency',false,true)B.AddSignal(R.Frame.MouseEnter,function()V(B
.GetThemeProperty'ElementTransparency'-B.GetThemeProperty'HoverChange')end)B.
AddSignal(R.Frame.MouseLeave,function()V(B.GetThemeProperty'ElementTransparency'
)end)B.AddSignal(R.Frame.MouseButton1Down,function()V(B.GetThemeProperty
'ElementTransparency'+B.GetThemeProperty'HoverChange')end)B.AddSignal(R.Frame.
MouseButton1Up,function()V(B.GetThemeProperty'ElementTransparency'-B.
GetThemeProperty'HoverChange')end)end return R end end)()K.Section=(function()
local L,M,N,O,P,Q=B.New,'rbxassetid://10709790948',TweenInfo.new(0.25,Enum.
EasingStyle.Sine,Enum.EasingDirection.Out),0.16,0.4,0.0009 local function 
GetSectionAnimInfo(R)local S=math.clamp(O+math.abs(R)*Q,O,P)return TweenInfo.
new(S,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut)end return function(R,S,T
,U)local V={}V.Collapsed=false V.ContentHeight=0 V.Animating=false V.AnimToken=0
V.Layout=L('UIListLayout',{Padding=UDim.new(0,5)})V.Container=L('Frame',{Size=
UDim2.new(1,0,0,26),Position=UDim2.fromOffset(0,24),BackgroundTransparency=1,
ClipsDescendants=true},{V.Layout})local W,X=L('Frame',{Size=UDim2.new(1,-20,1,0)
,BackgroundTransparency=1},{L('UIListLayout',{Padding=UDim.new(0,5),
FillDirection=Enum.FillDirection.Horizontal,SortOrder=Enum.SortOrder.LayoutOrder
,VerticalAlignment=Enum.VerticalAlignment.Center}),T and L('ImageLabel',{Image=T
,Size=UDim2.fromOffset(16,16),BackgroundTransparency=1,LayoutOrder=1,ThemeTag={
ImageColor3='Text'}})or nil,L('TextLabel',{RichText=true,Text=R,TextTransparency
=0,FontFace=Font.new('rbxassetid://12187365364',Enum.FontWeight.SemiBold,Enum.
FontStyle.Normal),TextSize=18,TextXAlignment='Left',TextYAlignment='Center',Size
=UDim2.fromScale(0,1),AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=
1,LayoutOrder=2,ThemeTag={TextColor3='Text'}})}),L('ImageLabel',{Image=M,Size=
UDim2.fromOffset(14,14),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,0,
0.5,0),BackgroundTransparency=1,Rotation=0,ThemeTag={ImageColor3='SubText'}})
local Y=L('TextButton',{Text='',AutoButtonColor=false,Size=UDim2.new(1,-16,0,18)
,Position=UDim2.fromOffset(0,2),BackgroundTransparency=1},{W,X})V.Root=L('Frame'
,{BackgroundTransparency=1,Size=UDim2.new(1,0,0,26),LayoutOrder=7,Parent=S},{Y,V
.Container})B.AddSignal(V.Layout:GetPropertyChangedSignal'AbsoluteContentSize',
function()V.ContentHeight=V.Layout.AbsoluteContentSize.Y if V.Collapsed or V.
Animating then return end V.Container.Size=UDim2.new(1,0,0,V.ContentHeight)V.
Root.Size=UDim2.new(1,0,0,V.ContentHeight+25)end)function V.SetCollapsed(Z,_,aa)
_=not not _ if V.Collapsed==_ then return end V.Collapsed=_ local ab,ac,ad,ae=_
and 0 or V.ContentHeight,_ and 25 or(V.ContentHeight+25),_ and 180 or 0,V.
Container.Size.Y.Offset local af=ab-ae local ag=GetSectionAnimInfo(af)if aa then
if V.ContainerTween then V.ContainerTween:Cancel()end if V.RootTween then V.
RootTween:Cancel()end if V.ArrowTween then V.ArrowTween:Cancel()end V.Animating=
false V.Container.Size=UDim2.new(1,0,0,ab)V.Root.Size=UDim2.new(1,0,0,ac)X.
Rotation=ad else if V.ContainerTween then V.ContainerTween:Cancel()end if V.
RootTween then V.RootTween:Cancel()end if V.ArrowTween then V.ArrowTween:Cancel(
)end V.Animating=true V.AnimToken=V.AnimToken+1 local ah=V.AnimToken V.
ContainerTween=b:Create(V.Container,ag,{Size=UDim2.new(1,0,0,ab)})V.RootTween=b:
Create(V.Root,ag,{Size=UDim2.new(1,0,0,ac)})V.ArrowTween=b:Create(X,N,{Rotation=
ad})V.ContainerTween:Play()V.RootTween:Play()V.ArrowTween:Play()V.ContainerTween
.Completed:Connect(function()if V.AnimToken~=ah then return end V.Animating=
false if not V.Collapsed then V.Container.Size=UDim2.new(1,0,0,V.ContentHeight)V
.Root.Size=UDim2.new(1,0,0,V.ContentHeight+25)end end)end end function V.Toggle(
aa)V:SetCollapsed(not V.Collapsed)end function V.IsCollapsed(aa)return V.
Collapsed end B.AddSignal(Y.MouseButton1Click,function()V:Toggle()end)if U then
V:SetCollapsed(true,true)end if n.Windows and#n.Windows>0 then local aa=n.
Windows[#n.Windows]if aa and aa.RegisterElement then aa.RegisterElement(V.Root,R
,'Section')end end return V end end)()K.Tab=(function()local aa,ab,ac,ad,ae=B.
New,A.Spring.new,A.Instant.new,K,{Window=nil,Tabs={},Containers={},SelectedTab=0
,TabCount=0}function ae.Init(af,ag)ae.Window=ag return ae end function ae.
GetCurrentTabPos(af)local ag,ah=ae.Window.TabHolder.AbsolutePosition.Y,ae.Tabs[
ae.SelectedTab].Frame.AbsolutePosition.Y return ah-ag end function ae.New(af,ag,
ah,L)local M,N=ae.Window,n.Elements ae.TabCount=ae.TabCount+1 local O,P=ae.
TabCount,{Selected=false,Name=ag,Type='Tab'}if not j then if n:GetIcon(ah)then
ah=n:GetIcon(ah)end if ah==''or nil then ah=nil end end P.Frame=aa('TextButton',
{Size=UDim2.new(1,0,0,34),BackgroundTransparency=1,Parent=L,ThemeTag={
BackgroundColor3='Tab'}},{aa('UICorner',{CornerRadius=UDim.new(0,6)}),aa(
'TextLabel',{AnchorPoint=Vector2.new(0,0.5),Position=not j and ah and UDim2.new(
0,30,0.5,0)or UDim2.new(0,12,0.5,0),Text=ag,RichText=true,TextColor3=Color3.
fromRGB(255,255,255),TextTransparency=0,FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=12,TextXAlignment='Left',TextYAlignment='Center',Size
=UDim2.new(1,-12,1,0),BackgroundTransparency=1,ThemeTag={TextColor3='Text'}}),
aa('ImageLabel',{AnchorPoint=Vector2.new(0,0.5),Size=UDim2.fromOffset(16,16),
Position=UDim2.new(0,8,0.5,0),BackgroundTransparency=1,Image=ah and ah or nil,
ThemeTag={ImageColor3='Text'}})})local Q=aa('UIListLayout',{Padding=UDim.new(0,5
),SortOrder=Enum.SortOrder.LayoutOrder})P.Root=aa('Frame',{Name='TabRoot',Size=
UDim2.fromScale(1,1),BackgroundTransparency=1,Visible=false,Parent=M.
ContainerHolder})P.FixedHeader=aa('Frame',{Name='FixedHeader',Size=UDim2.new(1,0
,0,0),AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,Parent=P.Root}
,{aa('UIListLayout',{Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder}
)})P.ContainerFrame=aa('ScrollingFrame',{Size=UDim2.fromScale(1,1),Position=
UDim2.fromOffset(0,0),BackgroundTransparency=1,Parent=P.Root,BottomImage=
'rbxassetid://6889812791',MidImage='rbxassetid://6889812721',TopImage=
'rbxassetid://6276641225',ScrollBarImageColor3=Color3.fromRGB(255,255,255),
ScrollBarImageTransparency=0.95,ScrollBarThickness=3,BorderSizePixel=0,
CanvasSize=UDim2.fromScale(0,0),ScrollingDirection=Enum.ScrollingDirection.Y,
ScrollingEnabled=true},{Q,aa('UIPadding',{PaddingRight=UDim.new(0,10),
PaddingLeft=UDim.new(0,1),PaddingTop=UDim.new(0,1),PaddingBottom=UDim.new(0,1)})
})local R=4 local function UpdateTabContainerBounds()local S=P.FixedHeader.
AbsoluteSize.Y local T=S>0 and(S+R)or 0 P.ContainerFrame.Position=UDim2.new(0,0,
0,T)P.ContainerFrame.Size=UDim2.new(1,0,1,-T)end B.AddSignal(P.FixedHeader:
GetPropertyChangedSignal'AbsoluteSize',UpdateTabContainerBounds)
UpdateTabContainerBounds()B.AddSignal(Q:GetPropertyChangedSignal
'AbsoluteContentSize',function()P.ContainerFrame.CanvasSize=UDim2.new(0,0,0,Q.
AbsoluteContentSize.Y+2)end)P.Motor,P.SetTransparency=B.SpringMotor(1,P.Frame,
'BackgroundTransparency')B.AddSignal(P.Frame.MouseEnter,function()P.
SetTransparency(P.Selected and 0.85 or 0.89)end)B.AddSignal(P.Frame.MouseLeave,
function()P.SetTransparency(P.Selected and 0.89 or 1)end)B.AddSignal(P.Frame.
MouseButton1Down,function()P.SetTransparency(0.92)end)B.AddSignal(P.Frame.
MouseButton1Up,function()P.SetTransparency(P.Selected and 0.85 or 0.89)end)B.
AddSignal(P.Frame.MouseButton1Click,function()ae:SelectTab(O)end)ae.Containers[O
]=P.Root ae.Tabs[O]=P P.Container=P.ContainerFrame P.ScrollFrame=P.Container P.
SubTabs={}P.SubTabCount=0 P.SelectedSubTab=nil P.SubTabSwitchToken=0 function P.
ScrollSubTabIntoView(S,T)local U=P.SubTabBarHolder if not U or not T or not T.
Button then return end local V,W=T.Button,U.AbsoluteSize.X if W<=0 then return
end local X=U.CanvasPosition.X local Y=(V.AbsolutePosition.X-U.AbsolutePosition.
X)+X local Z,_=Y+V.AbsoluteSize.X,X if Y<X then _=Y-10 elseif Z>X+W then _=Z-W+
10 end local ai=math.max(0,U.CanvasSize.X.Offset-W)_=math.clamp(_,0,ai)P.
SubTabBarScrollMotor:setGoal(ab(_,{frequency=7}))end function P.SelectSubTab(ai,
S)if not P.SubTabs[S]or P.SelectedSubTab==S then return end local T=P.
SelectedSubTab P.SelectedSubTab=S for U,V in next,P.SubTabs do V.Selected=(U==S)
V.SetTransparency(V.Selected and 0.85 or 1)V.SetUnderline(V.Selected and 0.1 or
1)end pcall(function()P:ScrollSubTabIntoView(P.SubTabs[S])end)if not T then P.
SubTabs[S].Page.Visible=true P.SubTabPagesAnim.GroupTransparency=0 return end
local U=(S>T)and 1 or-1 P.SubTabSwitchToken=P.SubTabSwitchToken+1 local V=P.
SubTabSwitchToken task.spawn(function()P.SubTabPagesHolder.Parent=P.
SubTabPagesAnim P.SubTabPosMotor:setGoal(ab(U*15,{frequency=10}))P.
SubTabBackMotor:setGoal(ab(1,{frequency=10}))task.wait(0.12)if P.
SubTabSwitchToken~=V then return end for W,X in next,P.SubTabs do X.Page.Visible
=false end P.SubTabs[S].Page.Visible=true P.SubTabPosMotor:setGoal(ac(-U*15))P.
SubTabPosMotor:setGoal(ab(0,{frequency=5}))P.SubTabBackMotor:setGoal(ab(0,{
frequency=8}))task.wait(0.12)if P.SubTabSwitchToken==V then P.SubTabPagesHolder.
Parent=P.SubTabSlot end end)end function P.AddSubTab(ai,S,T)if not P.
SubTabBarHolder then local U,V,W=aa('UIListLayout',{FillDirection=Enum.
FillDirection.Horizontal,Padding=UDim.new(0,6),SortOrder=Enum.SortOrder.
LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Top}),3,5 P.SubTabBarHolder
=aa('ScrollingFrame',{Name='SubTabBar',Size=UDim2.new(1,0,0,30),
BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-1E3,Parent=P.FixedHeader
,ScrollingDirection=Enum.ScrollingDirection.X,ScrollBarThickness=V,
ScrollBarImageTransparency=0.95,ScrollBarImageColor3=Color3.fromRGB(255,255,255)
,BottomImage='rbxassetid://6889812791',MidImage='rbxassetid://6889812721',
TopImage='rbxassetid://6276641225',CanvasSize=UDim2.fromScale(0,0),
ElasticBehavior=Enum.ElasticBehavior.WhenScrollable,HorizontalScrollBarInset=
Enum.ScrollBarInset.ScrollBar},{U,aa('UIPadding',{PaddingTop=UDim.new(0,2),
PaddingRight=UDim.new(0,8)})})local function UpdateSubTabBarHeight()local X,Y=U.
AbsoluteContentSize.X+8,P.SubTabBarHolder.AbsoluteSize.X local Z=Y>0 and X>Y+1 P
.SubTabBarHolder.Size=UDim2.new(1,0,0,Z and(30+W+V)or 30)end B.AddSignal(U:
GetPropertyChangedSignal'AbsoluteContentSize',function()P.SubTabBarHolder.
CanvasSize=UDim2.new(0,U.AbsoluteContentSize.X+8,0,0)UpdateSubTabBarHeight()end)
B.AddSignal(P.SubTabBarHolder:GetPropertyChangedSignal'AbsoluteSize',
UpdateSubTabBarHeight)P.SubTabBarScrollMotor=A.SingleMotor.new(0)P.
SubTabBarScrollMotor:onStep(function(X)P.SubTabBarHolder.CanvasPosition=Vector2.
new(X,0)end)aa('Frame',{Name='SubTabBarDivider',Size=UDim2.new(1,0,0,1),
BackgroundTransparency=0.6,BorderSizePixel=0,LayoutOrder=-999,Parent=P.
FixedHeader,ThemeTag={BackgroundColor3='TitleBarLine'}})P.SubTabSlot=aa('Frame',
{Name='SubTabSlot',Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,LayoutOrder=-998,Parent=P.Container})P.SubTabPagesAnim=
aa('CanvasGroup',{Name='SubTabPagesAnim',Size=UDim2.new(1,0,0,0),AutomaticSize=
Enum.AutomaticSize.Y,BackgroundTransparency=1,ClipsDescendants=true,Parent=P.
SubTabSlot})local X=aa('UIListLayout',{Padding=UDim.new(0,0),SortOrder=Enum.
SortOrder.LayoutOrder})P.SubTabPagesHolder=aa('Frame',{Name='SubTabPagesHolder',
Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,Parent=P.SubTabSlot},{X})P.SubTabPosMotor=A.SingleMotor
.new(0)P.SubTabPosMotor:onStep(function(Y)P.SubTabPagesAnim.Position=UDim2.
fromOffset(Y,0)end)P.SubTabBackMotor=A.SingleMotor.new(0)P.SubTabBackMotor:
onStep(function(Y)P.SubTabPagesAnim.GroupTransparency=Y end)end local U=T if not
j then if n:GetIcon(U)then U=n:GetIcon(U)end if U==''or nil then U=nil end end P
.SubTabCount=P.SubTabCount+1 local V,W=P.SubTabCount,{Selected=false,Name=S,Type
='SubTab'}W.Button=aa('TextButton',{Name='SubTab_'..S,Size=UDim2.new(0,0,0,28),
AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,AutoButtonColor=
false,Text='',Parent=P.SubTabBarHolder,ThemeTag={BackgroundColor3='Tab'}},{aa(
'UICorner',{CornerRadius=UDim.new(0,6)}),aa('UIPadding',{PaddingLeft=UDim.new(0,
12),PaddingRight=UDim.new(0,12)}),aa('TextLabel',{Name='Label',AnchorPoint=
Vector2.new(0,0.5),Position=U and UDim2.new(0,20,0.5,0)or UDim2.new(0,0,0.5,0),
Text=S,RichText=true,FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle
.Normal),TextSize=12,TextXAlignment='Left',TextYAlignment='Center',Size=UDim2.
new(0,0,1,0),AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,
ThemeTag={TextColor3='Text'}}),aa('ImageLabel',{Name='Icon',AnchorPoint=Vector2.
new(0,0.5),Size=UDim2.fromOffset(14,14),Position=UDim2.new(0,0,0.5,0),
BackgroundTransparency=1,Image=U and U or nil,ThemeTag={ImageColor3='Text'}}),
aa('Frame',{Name='Underline',AnchorPoint=Vector2.new(0.5,1),Position=UDim2.new(
0.5,0,1,-1),Size=UDim2.new(1,-14,0,2),BackgroundTransparency=1,ThemeTag={
BackgroundColor3='Accent'}},{aa('UICorner',{CornerRadius=UDim.new(1,0)})})})W.
Motor,W.SetTransparency=B.SpringMotor(1,W.Button,'BackgroundTransparency')W.
UnderlineMotor,W.SetUnderline=B.SpringMotor(1,W.Button.Underline,
'BackgroundTransparency')B.AddSignal(W.Button.MouseEnter,function()W.
SetTransparency(W.Selected and 0.8 or 0.93)end)B.AddSignal(W.Button.MouseLeave,
function()W.SetTransparency(W.Selected and 0.85 or 1)end)B.AddSignal(W.Button.
MouseButton1Down,function()W.SetTransparency(0.7)end)B.AddSignal(W.Button.
MouseButton1Up,function()W.SetTransparency(W.Selected and 0.8 or 0.93)end)B.
AddSignal(W.Button.MouseButton1Click,function()P:SelectSubTab(V)end)W.Page=aa(
'Frame',{Name='SubTabPage_'..S,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.
AutomaticSize.Y,BackgroundTransparency=1,LayoutOrder=V,Visible=false,Parent=P.
SubTabPagesHolder},{aa('UIListLayout',{Padding=UDim.new(0,5),SortOrder=Enum.
SortOrder.LayoutOrder})})W.Container=W.Page W.ScrollFrame=P.Container function W
.AddSection(X,Y,Z,_,aj)local ak,al={Type='Section',Idx=aj},Z if not j then if n:
GetIcon(al)then al=n:GetIcon(al)end if al==''or nil then al=nil end end local am
=ad.Section(Y,W.Container,al,_)ak.Container=am.Container ak.ScrollFrame=W.
ScrollFrame ak.SetCollapsed=am.SetCollapsed ak.Toggle=am.Toggle ak.IsCollapsed=
am.IsCollapsed function ak.SetValue(an,ao)ak:SetCollapsed(not not ao,true)end
setmetatable(ak,N)if aj then n.Options[aj]=ak end return ak end setmetatable(W,N
)P.SubTabs[V]=W if P.SubTabCount==1 then P:SelectSubTab(V)end return W end
function P.AddSection(ai,aj,ak,al,am)local an,ao={Type='Section',Idx=am},ak if
not j then if n:GetIcon(ao)then ao=n:GetIcon(ao)end if ao==''or nil then ao=nil
end end local S=ad.Section(aj,P.Container,ao,al)an.Container=S.Container an.
ScrollFrame=P.Container an.SetCollapsed=S.SetCollapsed an.Toggle=S.Toggle an.
IsCollapsed=S.IsCollapsed function an.SetValue(T,U)an:SetCollapsed(not not U,
true)end setmetatable(an,N)if am then n.Options[am]=an end return an end
setmetatable(P,N)return P end ae.SwitchToken=0 function ae.SelectTab(af,ag)local
ah=ae.Window ae.SelectedTab=ag for ai,aj in next,ae.Tabs do aj.SetTransparency(1
)aj.Selected=false end ae.Tabs[ag].SetTransparency(0.89)ae.Tabs[ag].Selected=
true ah.TabDisplay.Text=ae.Tabs[ag].Name ah.SelectorPosMotor:setGoal(ab(ae:
GetCurrentTabPos(),{frequency=6}))ae.SwitchToken=ae.SwitchToken+1 local ai=ae.
SwitchToken task.spawn(function()ah.ContainerHolder.Parent=ah.ContainerAnim ah.
ContainerPosMotor:setGoal(ab(15,{frequency=10}))ah.ContainerBackMotor:setGoal(
ab(1,{frequency=10}))task.wait(0.12)if ae.SwitchToken~=ai then return end for aj
,ak in next,ae.Containers do ak.Visible=false end ae.Containers[ag].Visible=true
ah.ContainerPosMotor:setGoal(ab(0,{frequency=5}))ah.ContainerBackMotor:setGoal(
ab(0,{frequency=8}))task.wait(0.12)if ae.SwitchToken==ai then ah.ContainerHolder
.Parent=ah.ContainerCanvas end end)end return ae end)()K.Button=(function()local
aa,ab=B.New,A.Spring.new return function(ac,ad,ae)ae=ae or false local af={}af.
Title=aa('TextLabel',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',TextColor3=Color3.fromRGB(200,200,200
),TextSize=14,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,
TextYAlignment=Enum.TextYAlignment.Center,BackgroundColor3=Color3.fromRGB(255,
255,255),AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.
fromScale(1,1),ThemeTag={TextColor3='Text'}})af.HoverFrame=aa('Frame',{Size=
UDim2.fromScale(1,1),BackgroundTransparency=1,ThemeTag={BackgroundColor3='Hover'
}},{aa('UICorner',{CornerRadius=UDim.new(0,4)})})af.Frame=aa('TextButton',{Size=
UDim2.new(0,0,0,32),Parent=ad,ThemeTag={BackgroundColor3='DialogButton'}},{aa(
'UICorner',{CornerRadius=UDim.new(0,4)}),aa('UIStroke',{ApplyStrokeMode=Enum.
ApplyStrokeMode.Border,Transparency=0.65,ThemeTag={Color='DialogButtonBorder'}})
,af.HoverFrame,af.Title})local ag,ah=B.SpringMotor(1,af.HoverFrame,
'BackgroundTransparency',ae)B.AddSignal(af.Frame.MouseEnter,function()ah(0.97)
end)B.AddSignal(af.Frame.MouseLeave,function()ah(1)end)B.AddSignal(af.Frame.
MouseButton1Down,function()ah(1)end)B.AddSignal(af.Frame.MouseButton1Up,function
()ah(0.97)end)return af end end)()K.Dialog=(function()local aa,ab,ac,ad=A.Spring
.new,A.Instant.new,B.New,{Window=nil}function ad.Init(ae,af)ad.Window=af return
ad end function ad.Create(ae)local af={Buttons=0}af.TintFrame=ac('TextButton',{
Text='',Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.fromRGB(0,0,0),
BackgroundTransparency=1,Parent=ad.Window.Root},{ac('UICorner',{CornerRadius=
UDim.new(0,8)})})local ag,ah=B.SpringMotor(1,af.TintFrame,
'BackgroundTransparency',true)af.ButtonHolder=ac('Frame',{Size=UDim2.new(1,-40,1
,-40),AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),
BackgroundTransparency=1},{ac('UIListLayout',{Padding=UDim.new(0,10),
FillDirection=Enum.FillDirection.Horizontal,HorizontalAlignment=Enum.
HorizontalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder})})af.
ButtonHolderFrame=ac('Frame',{Size=UDim2.new(1,0,0,70),Position=UDim2.new(0,0,1,
-70),ThemeTag={BackgroundColor3='DialogHolder'}},{ac('Frame',{Size=UDim2.new(1,0
,0,1),ThemeTag={BackgroundColor3='DialogHolderLine'}}),af.ButtonHolder})af.Title
=ac('TextLabel',{FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',
Enum.FontWeight.SemiBold,Enum.FontStyle.Normal),Text='Dialog',TextColor3=Color3.
fromRGB(240,240,240),TextSize=22,TextXAlignment=Enum.TextXAlignment.Left,Size=
UDim2.new(1,0,0,22),Position=UDim2.fromOffset(20,25),BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,ThemeTag={TextColor3='Text'}})af.
Scale=ac('UIScale',{Scale=1})local ai,aj=B.SpringMotor(1.1,af.Scale,'Scale')af.
Root=ac('CanvasGroup',{Size=UDim2.fromOffset(300,165),AnchorPoint=Vector2.new(
0.5,0.5),Position=UDim2.fromScale(0.5,0.5),GroupTransparency=1,Parent=af.
TintFrame,ThemeTag={BackgroundColor3='Dialog'}},{ac('UICorner',{CornerRadius=
UDim.new(0,8)}),ac('UIStroke',{Transparency=0.5,ThemeTag={Color='DialogBorder'}}
),af.Scale,af.Title,af.ButtonHolderFrame})local ak,al=B.SpringMotor(1,af.Root,
'GroupTransparency')function af.Open(am)n.DialogOpen=true af.Scale.Scale=1.1 ah(
0.75)al(0)aj(1)end function af.Close(am)n.DialogOpen=false ah(1)al(1)aj(1.1)af.
Root.UIStroke:Destroy()task.wait(0.15)af.TintFrame:Destroy()end function af.
Button(am,an,ao)af.Buttons=af.Buttons+1 an=an or'Button'ao=ao or function()end
local L=K.Button('',af.ButtonHolder,true)L.Title.Text=an for M,N in next,af.
ButtonHolder:GetChildren()do if N:IsA'TextButton'then N.Size=UDim2.new(1/af.
Buttons,-(((af.Buttons-1)*10)/af.Buttons),0,32)end end B.AddSignal(L.Frame.
MouseButton1Click,function()n:SafeCallback(ao)pcall(function()af:Close()end)end)
return L end return af end return ad end)()K.Notification=(function()local ab,ac
,ad,ae=A.Spring.new,A.Instant.new,B.New,{}function ae.Init(af,ag)n.
ActiveNotifications=n.ActiveNotifications or{}local ah=i and 12 or 30 ae.Holder=
ad('Frame',{Position=UDim2.new(1,-ah,1,-ah),Size=UDim2.new(0,310,1,-ah),
AnchorPoint=Vector2.new(1,1),BackgroundTransparency=1,Parent=ag},{ad(
'UIListLayout',{HorizontalAlignment=Enum.HorizontalAlignment.Center,SortOrder=
Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Bottom,
Padding=UDim.new(0,20)})})local function FitHolder()local ai=GetScreenSize()ae.
Holder.Size=UDim2.new(0,math.clamp(ai.X-ah*2,180,310),1,-ah)end FitHolder()
OnScreenSizeChanged(FitHolder)end function ae.New(af,ag)ag.Title=ag.Title or
'Title'ag.Content=ag.Content or'Content'ag.SubContent=ag.SubContent or''ag.
Duration=ag.Duration or nil local ah={Closed=false}ah.AcrylicPaint=J.
AcrylicPaint()ah.Title=ad('TextLabel',{Position=UDim2.new(0,14,0,17),Text=ag.
Title,RichText=true,TextColor3=Color3.fromRGB(255,255,255),TextTransparency=0,
FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',TextSize=13,
TextXAlignment='Left',TextYAlignment='Center',Size=UDim2.new(1,-12,0,12),
TextWrapped=true,BackgroundTransparency=1,ThemeTag={TextColor3='Text'}})ah.
ContentLabel=ad('TextLabel',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',Text=ag.Content,TextColor3=Color3.
fromRGB(240,240,240),TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,
AutomaticSize=Enum.AutomaticSize.Y,Size=UDim2.new(1,0,0,14),BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,TextWrapped=true,ThemeTag={
TextColor3='Text'}})ah.SubContentLabel=ad('TextLabel',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',Text=ag.SubContent,TextColor3=Color3.
fromRGB(240,240,240),TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,
AutomaticSize=Enum.AutomaticSize.Y,Size=UDim2.new(1,0,0,14),BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,TextWrapped=true,ThemeTag={
TextColor3='SubText'}})ah.LabelHolder=ad('Frame',{AutomaticSize=Enum.
AutomaticSize.Y,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,Position=UDim2.fromOffset(14,40),Size=UDim2.new(1,-28,0
,0)},{ad('UIListLayout',{SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=
Enum.VerticalAlignment.Center,Padding=UDim.new(0,3)}),ah.ContentLabel,ah.
SubContentLabel})ah.CloseButton=ad('TextButton',{Text='',Position=UDim2.new(1,-
14,0,13),Size=UDim2.fromOffset(20,20),AnchorPoint=Vector2.new(1,0),
BackgroundTransparency=1},{ad('ImageLabel',{Image=K.Close,Size=UDim2.fromOffset(
16,16),Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,ThemeTag={ImageColor3='Text'}})})ah.Root=ad('Frame',{
BackgroundTransparency=1,Size=UDim2.new(1,0,1,0),Position=UDim2.fromScale(1,0)},
{ah.AcrylicPaint.Frame,ah.Title,ah.CloseButton,ah.LabelHolder})if ag.Content==''
then ah.ContentLabel.Visible=false end if ag.SubContent==''then ah.
SubContentLabel.Visible=false end ah.Holder=ad('Frame',{BackgroundTransparency=1
,Size=UDim2.new(1,0,0,200),Parent=ae.Holder},{ah.Root})local ai=A.GroupMotor.new
{Scale=1,Offset=60}ai:onStep(function(aj)ah.Root.Position=UDim2.new(aj.Scale,aj.
Offset,0,0)end)B.AddSignal(ah.CloseButton.MouseButton1Click,function()ah:Close()
end)function ah.ApplyTransparency(aj)if n.Theme=='Glass'and n.UseAcrylic then
local ak=n.NotificationTransparency or 1 local al=0.85+(ak*0.08)if ak>1 then al=
0.93+((ak-1)*0.04)end local am=0.8+(ak*0.1)if ak>1 then am=0.9+((ak-1)*0.05)end
if ah.AcrylicPaint and ah.AcrylicPaint.Model then ah.AcrylicPaint.Model.
Transparency=math.min(al,0.97)end if ah.AcrylicPaint and ah.AcrylicPaint.Frame
and ah.AcrylicPaint.Frame.Background then ah.AcrylicPaint.Frame.Background.
BackgroundTransparency=math.min(am,0.95)end end end function ah.Open(aj)local ak
=ah.LabelHolder.AbsoluteSize.Y ah.Holder.Size=UDim2.new(1,0,0,58+ak)ai:setGoal{
Scale=ab(0,{frequency=5}),Offset=ab(0,{frequency=5})}task.defer(function()task.
wait(0.1)ah:ApplyTransparency()end)end function ah.Close(aj)if not ah.Closed
then ah.Closed=true for ak,al in pairs(n.ActiveNotifications or{})do if al==ah
then table.remove(n.ActiveNotifications,ak)break end end task.spawn(function()ai
:setGoal{Scale=ab(1,{frequency=5}),Offset=ab(60,{frequency=5})}task.wait(0.4)if
n.UseAcrylic then ah.AcrylicPaint.Model:Destroy()end ah.Holder:Destroy()end)end
end table.insert(n.ActiveNotifications,ah)ah:Open()if ag.Duration then task.
delay(ag.Duration,function()ah:Close()end)end return ah end return ae end)()K.
Textbox=(function()local ab=B.New return function(ac,ad)ad=ad or false local ae=
{}ae.Input=ab('TextBox',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',TextColor3=Color3.fromRGB(200,200,200
),TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.
TextYAlignment.Center,BackgroundColor3=Color3.fromRGB(255,255,255),AutomaticSize
=Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.fromScale(1,1),
Position=UDim2.fromOffset(10,0),ThemeTag={TextColor3='Text',PlaceholderColor3=
'SubText'}})ae.Container=ab('Frame',{BackgroundTransparency=1,ClipsDescendants=
true,Position=UDim2.new(0,6,0,0),Size=UDim2.new(1,-12,1,0)},{ae.Input})ae.
Indicator=ab('Frame',{Size=UDim2.new(1,-4,0,1),Position=UDim2.new(0,2,1,0),
AnchorPoint=Vector2.new(0,1),BackgroundTransparency=ad and 0.5 or 0,ThemeTag={
BackgroundColor3=ad and'InputIndicator'or'DialogInputLine'}})ae.Frame=ab('Frame'
,{Size=UDim2.new(0,0,0,30),BackgroundTransparency=ad and 0.9 or 0,Parent=ac,
ThemeTag={BackgroundColor3=ad and'Input'or'DialogInput'}},{ab('UICorner',{
CornerRadius=UDim.new(0,4)}),ab('UIStroke',{ApplyStrokeMode=Enum.ApplyStrokeMode
.Border,Transparency=ad and 0.5 or 0.65,ThemeTag={Color=ad and'InElementBorder'
or'DialogButtonBorder'}}),ae.Indicator,ae.Container})local function Update()
local af,ag=2,ae.Container.AbsoluteSize.X if not ae.Input:IsFocused()or ae.Input
.TextBounds.X<=ag-2*af then ae.Input.Position=UDim2.new(0,af,0,0)else local ah=
ae.Input.CursorPosition if ah~=-1 then local ai=string.sub(ae.Input.Text,1,ah-1)
local aj=c:GetTextSize(ai,ae.Input.TextSize,ae.Input.Font,Vector2.new(math.huge,
math.huge)).X local ak=ae.Input.Position.X.Offset+aj if ak<af then ae.Input.
Position=UDim2.fromOffset(af-aj,0)elseif ak>ag-af-1 then ae.Input.Position=UDim2
.fromOffset(ag-aj-af-1,0)end end end end task.spawn(Update)B.AddSignal(ae.Input:
GetPropertyChangedSignal'Text',Update)B.AddSignal(ae.Input:
GetPropertyChangedSignal'CursorPosition',Update)B.AddSignal(ae.Input.Focused,
function()Update()ae.Indicator.Size=UDim2.new(1,-2,0,2)ae.Indicator.Position=
UDim2.new(0,1,1,0)ae.Indicator.BackgroundTransparency=0 B.OverrideTag(ae.Frame,{
BackgroundColor3=ad and'InputFocused'or'DialogHolder'})B.OverrideTag(ae.
Indicator,{BackgroundColor3='InputIndicatorFocus'})end)B.AddSignal(ae.Input.
FocusLost,function()Update()ae.Indicator.Size=UDim2.new(1,-4,0,1)ae.Indicator.
Position=UDim2.new(0,2,1,0)ae.Indicator.BackgroundTransparency=0.5 B.
OverrideTag(ae.Frame,{BackgroundColor3=ad and'Input'or'DialogInput'})B.
OverrideTag(ae.Indicator,{BackgroundColor3=ad and'InputIndicator'or
'DialogInputLine'})end)return ae end end)()K.TitleBar=(function()local ab,ac=B.
New,B.AddSignal return function(ad)local ae={}local function BarButton(af,ag,ah,
ai)local aj={Callback=ai or function()end}aj.Frame=ab('TextButton',{Size=UDim2.
new(0,34,1,-8),AnchorPoint=Vector2.new(1,0),BackgroundTransparency=1,Parent=ah,
Position=ag,Text='',ThemeTag={BackgroundColor3='Text'}},{ab('UICorner',{
CornerRadius=UDim.new(0,7)}),ab('ImageLabel',{Image=af,Size=UDim2.fromOffset(16,
16),Position=UDim2.fromScale(0.5,0.5),AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,Name='Icon',ThemeTag={ImageColor3='Text'}})})local ak,
al=B.SpringMotor(1,aj.Frame,'BackgroundTransparency')ac(aj.Frame.MouseEnter,
function()al(0.94)end)ac(aj.Frame.MouseLeave,function()al(1,true)end)ac(aj.Frame
.MouseButton1Down,function()al(0.96)end)ac(aj.Frame.MouseButton1Up,function()al(
0.94)end)ac(aj.Frame.MouseButton1Click,aj.Callback)aj.SetCallback=function(am)aj
.Callback=am end return aj end ae.Frame=ab('Frame',{Size=UDim2.new(1,0,0,42),
BackgroundTransparency=1,Parent=ad.Parent},{ab('Frame',{Size=UDim2.new(1,-16,1,0
),Position=UDim2.new(0,12,0,0),BackgroundTransparency=1},{ab('UIListLayout',{
Padding=UDim.new(0,5),FillDirection=Enum.FillDirection.Horizontal,SortOrder=Enum
.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center}),ad.Icon
and ab('ImageLabel',{Image=ad.Icon,Size=UDim2.fromOffset(20,20),
BackgroundTransparency=1,LayoutOrder=1,ThemeTag={ImageColor3='Text'}})or nil,ab(
'TextLabel',{RichText=true,Text=ad.Title,FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=12,TextXAlignment='Left',TextYAlignment='Center',Size
=UDim2.fromScale(0,1),AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=
1,LayoutOrder=ad.Icon and 2 or 1,ThemeTag={TextColor3='Text'}}),ad.SubTitle and
ab('TextLabel',{RichText=true,Text=ad.SubTitle,TextTransparency=0.4,FontFace=
Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum
.FontStyle.Normal),TextSize=12,TextXAlignment='Left',TextYAlignment='Center',
Size=UDim2.fromScale(0,1),AutomaticSize=Enum.AutomaticSize.X,
BackgroundTransparency=1,LayoutOrder=ad.Icon and 3 or 2,ThemeTag={TextColor3=
'Text'}})or nil}),ab('Frame',{BackgroundTransparency=0.5,Size=UDim2.new(1,0,0,1)
,Position=UDim2.new(0,0,1,0),ThemeTag={BackgroundColor3='TitleBarLine'}})})ae.
CloseButton=BarButton(K.Assets.Close,UDim2.new(1,-4,0,4),ae.Frame,function()n.
Window:Dialog{Title='Close',Content=
'Are you sure you want to unload the interface?',Buttons={{Title='Yes',Callback=
function()pcall(function()local af,ag=n.Window and n.Window.Root,n.Window and n.
Window.RootScale if af and ag then local ah,ai,aj,ak=af.AbsoluteSize.X,af.
AbsoluteSize.Y,af.Position.X.Offset,af.Position.Y.Offset b:Create(ag,TweenInfo.
new(0.18,Enum.EasingStyle.Quart,Enum.EasingDirection.In),{Scale=0}):Play()b:
Create(af,TweenInfo.new(0.18,Enum.EasingStyle.Quart,Enum.EasingDirection.In),{
Position=UDim2.fromOffset(aj+ah/2,ak+ai/2)}):Play()end end)task.delay(0.18,
function()n:Destroy()end)end},{Title='No'}}}end)ae.MaxButton=BarButton(K.Assets.
Max,UDim2.new(1,-40,0,4),ae.Frame,function()ad.Window.Maximize(not ad.Window.
Maximized)end)ae.MinButton=BarButton(K.Assets.Min,UDim2.new(1,-80,0,4),ae.Frame,
function()n.Window:Minimize()end)return ae end end)()K.Window=(function()local
ab,ac,ad=A.Spring.new,A.Instant.new,B.New return function(ae)local af=ae.Size or
UDim2.fromOffset(480,360)local ag,ah,ai,aj,ak={Minimized=false,Maximized=false,
Size=FitSizeToScreen(af),RequestedSize=af,CurrentPos=0,TabWidth=0,Position=UDim2
.fromOffset(0,0),DropdownsOutsideWindow=ae.DropdownsOutsideWindow==true},false
local al,am=false local an=false ag.AcrylicPaint=J.AcrylicPaint()local function 
CenterWindow()local ao=GetScreenSize()local L,M=math.max(0,(ao.X-ag.Size.X.
Offset)/2),math.max(0,(ao.Y-ag.Size.Y.Offset)/2)ag.Position=UDim2.fromOffset(
math.floor(L),math.floor(M))if ag.Root then ag.Root.Position=ag.Position end end
local function CurrentTabWidth(ao)return FitTabWidth(ae.TabWidth,ao,af.X.Offset)
end ag.TabWidth=CurrentTabWidth(ag.Size.X.Offset)local ao,L,M,N=ad('Frame',{Size
=UDim2.fromOffset(4,0),BackgroundColor3=Color3.fromRGB(76,194,255),Position=
UDim2.fromOffset(0,(ag.TabHolderTop or 45)+0),AnchorPoint=Vector2.new(0,0.5),
ThemeTag={BackgroundColor3='Accent'}},{ad('UICorner',{CornerRadius=UDim.new(0,9)
})}),26,i and 58 or 44,8 local O=M-N local P=ad('Frame',{Name='ResizeGrip',Size=
UDim2.fromOffset(M,M),BackgroundTransparency=1,ClipsDescendants=true,Position=
UDim2.new(1,-M+O,1,-M+O)},{ad('Frame',{Name='GripArc',AnchorPoint=Vector2.new(
0.5,0.5),Position=UDim2.fromOffset(0,0),Size=UDim2.fromOffset(L,L),
BackgroundTransparency=1},{ad('UICorner',{CornerRadius=UDim.new(1,0)}),ad(
'UIStroke',{Name='GripStroke',Thickness=4,Transparency=0.55,ThemeTag={Color=
'TitleBarLine'}})})})local Q,R,S,T,U=P.GripArc.GripStroke,0.55,0.2,4,4.75 local
V,W=B.SpringMotor(R,Q,'Transparency')local X,Y=B.SpringMotor(T,Q,'Thickness')B.
AddSignal(P.MouseEnter,function()W(S)Y(U)end)B.AddSignal(P.MouseLeave,function()
W(R)Y(T)end)ag.TabHolder=ad('ScrollingFrame',{Size=UDim2.new(1,0,1,-45),Position
=UDim2.new(0,0,0,45),BackgroundTransparency=1,ScrollBarImageTransparency=1,
ScrollBarThickness=0,BorderSizePixel=0,CanvasSize=UDim2.fromScale(0,0),
ScrollingDirection=Enum.ScrollingDirection.Y},{ad('UIListLayout',{Padding=UDim.
new(0,4)})})local Z,_={},{}local function UpdateElementVisibility(ap)ap=string.
lower(ap or'')for aq,ar in pairs(_)do if aq and aq.Parent then local as=ap==''or
string.find(string.lower(ar.title),ap,1,true)or(ar.description and string.find(
string.lower(ar.description),ap,1,true))aq.Visible=as end end task.spawn(
function()task.wait(0.01)if ag and ag.TabHolder then for aq,ar in pairs(ag.
TabHolder:GetChildren())do if ar:IsA'ScrollingFrame'then local as=ar:
FindFirstChild'UIListLayout'if as then ar.CanvasSize=UDim2.new(0,0,0,as.
AbsoluteContentSize.Y+2)end end end end end)end local function RegisterElement(
ap,aq,ar,as)if ap and aq then _[ap]={title=aq,type=ar or'Element',description=as
or''}end end ag.ShowSearch=(ae.Search==nil)and true or(ae.Search and true or
false)local ap=ad('Frame',{Size=UDim2.new(1,0,0,35),Position=UDim2.new(0,0,0,0),
BackgroundTransparency=0.9,ZIndex=10,Visible=ag.ShowSearch,ThemeTag={
BackgroundColor3='Element'}},{ad('UICorner',{CornerRadius=UDim.new(0,6)}),ad(
'UIStroke',{ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Transparency=0.8,
Thickness=1,ThemeTag={Color='ElementBorder'}})})local aq=K.Textbox(ap,true)aq.
Frame.Size=UDim2.new(1,-44,1,-8)aq.Frame.Position=UDim2.new(0,10,0,4)aq.Input.
PlaceholderText='Search...'aq.Input.Text=''ad('ImageLabel',{Size=UDim2.
fromOffset(18,18),Position=UDim2.new(1,-18,0.5,0),AnchorPoint=Vector2.new(0.5,
0.5),BackgroundTransparency=1,Image='rbxassetid://10734943674',Parent=ap,
ThemeTag={ImageColor3='SubText'}})B.AddSignal(aq.Input:GetPropertyChangedSignal
'Text',function()local ar=aq.Input.Text UpdateElementVisibility(ar)end)B.
AddSignal(aq.Input.FocusLost,function(ar)end)B.AddSignal(h.InputBegan,function(
ar,as)if as then return end if ar.KeyCode==Enum.KeyCode.Escape and aq.Input:
IsFocused()then aq.Input.Text=''aq.Input:ReleaseFocus()end end)ag.SearchElements
=Z ag.AllElements=_ ag.RegisterElement=RegisterElement ag.
UpdateElementVisibility=UpdateElementVisibility local ar=ad('Frame',{Size=UDim2.
new(0,ag.TabWidth,1,ag.ShowSearch and-66 or-31),Position=UDim2.new(0,12,0,ag.
ShowSearch and 54 or 19),BackgroundTransparency=1,ClipsDescendants=true},{ag.
TabHolder,ao,ap})ag.TabDisplay=ad('TextLabel',{RichText=true,Text='Tab',
TextTransparency=0,FontFace=Font.new('rbxassetid://12187365364',Enum.FontWeight.
SemiBold,Enum.FontStyle.Normal),TextSize=28,TextXAlignment='Left',TextYAlignment
='Center',Size=UDim2.new(1,-16,0,28),Position=UDim2.fromOffset(ag.TabWidth+26,56
),BackgroundTransparency=1,ThemeTag={TextColor3='Text'}})ag.ContainerHolder=ad(
'Frame',{Size=UDim2.fromScale(1,1),BackgroundTransparency=1})ag.ContainerAnim=
ad('CanvasGroup',{Size=UDim2.fromScale(1,1),BackgroundTransparency=1})ag.
ContainerCanvas=ad('Frame',{Size=UDim2.new(1,-ag.TabWidth-32,1,-102),Position=
UDim2.fromOffset(ag.TabWidth+26,90),BackgroundTransparency=1},{ag.ContainerAnim,
ag.ContainerHolder})local function ApplyTabWidth(as)ag.TabWidth=as ar.Size=UDim2
.new(0,as,ar.Size.Y.Scale,ar.Size.Y.Offset)ag.TabDisplay.Position=UDim2.
fromOffset(as+26,56)ag.ContainerCanvas.Size=UDim2.new(1,-as-32,1,-102)ag.
ContainerCanvas.Position=UDim2.fromOffset(as+26,90)end local as=ad('Frame',{Name
='BottomDragHandle',AnchorPoint=Vector2.new(0.5,0),Position=UDim2.new(0.5,0,1,6)
,Size=UDim2.fromOffset(56,4),BackgroundTransparency=0.55,BorderSizePixel=0,
ThemeTag={BackgroundColor3='TitleBarLine'}},{ad('UICorner',{CornerRadius=UDim.
new(1,0)})})ag.Root=ad('Frame',{BackgroundTransparency=1,Size=ag.Size,Position=
ag.Position,Parent=ae.Parent},{ag.AcrylicPaint.Frame,ag.TabDisplay,ag.
ContainerCanvas,ar,P,as})ag.RootScale=ad('UIScale',{Scale=0,Parent=ag.Root})
CenterWindow()ag.TitleBar=K.TitleBar{Title=ae.Title,SubTitle=ae.SubTitle,Icon=ae
.Icon,Parent=ag.Root,Window=ag,UserInfoTitle=ae.UserInfoTitle,UserInfo=ae.
UserInfo,UserInfoSubtitle=ae.UserInfoSubtitle,UserInfoSubtitleColor=ae.
UserInfoSubtitleColor}if ae.UserInfo then local function parseColor(at)if
typeof(at)=='Color3'then return at end return m[n.Theme].SubText or Color3.
fromRGB(170,170,170)end local at=56 local au=ad('Frame',{Name='UserInfoSection',
BackgroundTransparency=1,Size=UDim2.new(1,0,0,at),Position=ae.UserInfoTop and
UDim2.fromOffset(0,0)or UDim2.new(0,12,1,-(at+2)),Parent=ar})ad('Frame',{Name=
'UserInfoSeparator',BackgroundTransparency=0.5,Size=UDim2.new(1,0,0,1),Position=
ae.UserInfoTop and UDim2.fromOffset(0,at+2)or UDim2.new(0,12,1,-(at+10)),Parent=
ar,ThemeTag={BackgroundColor3='TitleBarLine'}})local av=28 local aw=ad(
'ImageLabel',{Name='Avatar',BackgroundTransparency=1,Size=UDim2.fromOffset(av,av
),Position=UDim2.new(0,0,0.5,0),AnchorPoint=Vector2.new(0,0.5),Image=
'rbxassetid://0',Parent=au},{ad('UICorner',{CornerRadius=UDim.new(1,0)}),ad(
'UIStroke',{Transparency=0.7,Thickness=1,ThemeTag={Color='ElementBorder'}})})
pcall(function()local ax=game:GetService'Players'local ay,az=ax:
GetUserThumbnailAsync(ax.LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.
ThumbnailSize.Size100x100)if az and ay then aw.Image=ay end end)local ax,ay=
tostring((ae.UserInfoTitle~=nil and ae.UserInfoTitle)or(a.Name or'User')),(ae.
UserInfoSubtitle~=nil)and tostring(ae.UserInfoSubtitle)or''ad('TextLabel',{Name=
'UserName',BackgroundTransparency=1,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Bottom,FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle
.Normal),TextSize=13,Text=ax,Size=UDim2.new(1,-av-12,0.5,0),Position=UDim2.new(0
,av+12,0,-2),Parent=au,ThemeTag={TextColor3='Text'}})ad('TextLabel',{Name=
'UserSubtitle',BackgroundTransparency=1,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top,FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),TextSize=12,TextTransparency=0.2,Text=ay,TextColor3=
parseColor(ae.UserInfoSubtitleColor),Size=UDim2.new(1,-av-12,0.5,0),Position=
UDim2.new(0,av+12,0.5,2),Parent=au})if ae.UserInfoTop then ar.Position=UDim2.
new(0,12,0,39)ar.Size=UDim2.new(0,ag.TabWidth,1,-31)ap.Position=UDim2.new(0,0,0,
at+6)ag.TabHolder.Position=UDim2.new(0,0,0,45+at+6)ag.TabHolder.Size=UDim2.new(1
,0,1,-(45+at+24))ag.TabHolderTop=45+at+6 else ag.TabHolder.Size=UDim2.new(1,0,1,
-(45+at+24))ag.TabHolderTop=45 end end if n.UseAcrylic then ag.AcrylicPaint.
AddParent(ag.Root)end local at,au=A.GroupMotor.new{X=ag.Size.X.Offset,Y=ag.Size.
Y.Offset},A.GroupMotor.new{X=ag.Position.X.Offset,Y=ag.Position.Y.Offset}_G.
CDDrag=0 ag.SelectorPosMotor=A.SingleMotor.new(17)ag.SelectorSizeMotor=A.
SingleMotor.new(0)ag.ContainerBackMotor=A.SingleMotor.new(0)ag.ContainerPosMotor
=A.SingleMotor.new(94)at:onStep(function(av)task.wait(_G.CDDrag/10)ag.Root.Size=
UDim2.new(0,av.X,0,av.Y)end)au:onStep(function(av)task.wait(_G.CDDrag/10)ag.Root
.Position=UDim2.new(0,av.X,0,av.Y)end)local av=A.SingleMotor.new(0)av:onStep(
function(aw)ag.RootScale.Scale=aw local ax=ag.MinimizeAnimBase if ax then ag.
Root.Position=UDim2.fromOffset(ax.X+ax.SizeX*(1-aw)/2,ax.Y+ax.SizeY*(1-aw)/2)end
end)av:onComplete(function()if ag.Minimized then ag.Root.Visible=false else ag.
MinimizeAnimBase=nil end end)ag.RootScaleMotor=av local aw,ax=0,0 ag.
SelectorPosMotor:onStep(function(ay)local az,aA=ag.TabHolderTop or 45,16 ao.
Position=UDim2.new(0,0,0,az+ay+aA)local aB=tick()local aC=aB-ax if aw~=nil then
ag.SelectorSizeMotor:setGoal(ab((math.abs(ay-aw)/(aC*60))+16))aw=ay end ax=aB
end)ag.SelectorSizeMotor:onStep(function(ay)ao.Size=UDim2.new(0,4,0,ay)end)ag.
ContainerBackMotor:onStep(function(ay)ag.ContainerAnim.GroupTransparency=ay end)
ag.ContainerPosMotor:onStep(function(ay)ag.ContainerAnim.Position=UDim2.
fromOffset(0,ay)end)local ay,az ag.Maximize=function(aA,aB,aC)ag.Maximized=aA ag
.TitleBar.MaxButton.Frame.Icon.Image=aA and K.Assets.Restore or K.Assets.Max if
aA then ay=ag.Size.X.Offset az=ag.Size.Y.Offset end local aD,aE if aA then local
aF=GetScreenSize()aD,aE=aF.X,aF.Y else local aF=(ay and az)and UDim2.fromOffset(
ay,az)or(ag.UserSize or ag.RequestedSize)local aG=FitSizeToScreen(aF)aD,aE=aG.X.
Offset,aG.Y.Offset end at:setGoal{X=A[aC and'Instant'or'Spring'].new(aD,{
frequency=6}),Y=A[aC and'Instant'or'Spring'].new(aE,{frequency=6})}ag.Size=UDim2
.fromOffset(aD,aE)ApplyTabWidth(CurrentTabWidth(aD))if not aB then au:setGoal{X=
ab(aA and 0 or ag.Position.X.Offset,{frequency=6}),Y=ab(aA and 0 or ag.Position.
Y.Offset,{frequency=6})}end if aA and not aB then ag.Position=UDim2.fromOffset(0
,0)end end local function ClampWindowPosition(aA)local aB,aC,aD,aE,aF,aG,aH=
GetScreenSize(),ag.Size.X.Offset,ag.Size.Y.Offset,nil,nil,nil,nil if i then aE,
aF=0,0 aG,aH=math.max(0,aB.X-aC),math.max(0,aB.Y-aD)else aE,aF=math.min(0,-(aC-
120)),0 aG,aH=math.max(0,aB.X-120),math.max(0,aB.Y-40)end local aI,aJ=math.
clamp(ag.Position.X.Offset,aE,aG),math.clamp(ag.Position.Y.Offset,aF,aH)if aI==
ag.Position.X.Offset and aJ==ag.Position.Y.Offset then return end ag.Position=
UDim2.fromOffset(math.floor(aI),math.floor(aJ))au:setGoal{X=aA and ac(ag.
Position.X.Offset)or ab(ag.Position.X.Offset,{frequency=6}),Y=aA and ac(ag.
Position.Y.Offset)or ab(ag.Position.Y.Offset,{frequency=6})}end local function 
RecenterWindow(aA)local aB=GetScreenSize()ag.Position=UDim2.fromOffset(math.
floor(math.max(0,(aB.X-ag.Size.X.Offset)/2)),math.floor(math.max(0,(aB.Y-ag.Size
.Y.Offset)/2)))au:setGoal{X=aA and ac(ag.Position.X.Offset)or ab(ag.Position.X.
Offset,{frequency=6}),Y=aA and ac(ag.Position.Y.Offset)or ab(ag.Position.Y.
Offset,{frequency=6})}end local function RefitWindow(aA)if ag.Maximized then ag.
Maximize(true,false,true)return end local aB=FitSizeToScreen(ag.UserSize or ag.
RequestedSize)ag.Size=aB ApplyTabWidth(CurrentTabWidth(aB.X.Offset))at:setGoal{X
=aA and ac(aB.X.Offset)or ab(aB.X.Offset,{frequency=6}),Y=aA and ac(aB.Y.Offset)
or ab(aB.Y.Offset,{frequency=6})}if ag.UserMoved then ClampWindowPosition(aA)
else RecenterWindow(aA)end local aC=ag.MinimizeAnimBase if aC then aC.X,aC.Y=ag.
Position.X.Offset,ag.Position.Y.Offset aC.SizeX,aC.SizeY=ag.Size.X.Offset,ag.
Size.Y.Offset end end OnScreenSizeChanged(function()RefitWindow(true)end)
function ag.FitToScreen(aA,aB)RefitWindow(aB~=false)end local function 
BindWindowDrag(aA)B.AddSignal(aA.InputBegan,function(aB)if aB.UserInputType==
Enum.UserInputType.MouseButton1 or aB.UserInputType==Enum.UserInputType.Touch
then ah=true aj=aB.Position ak=ag.Root.Position if ag.Maximized then ak=UDim2.
fromOffset(e.X-(e.X*((ay-100)/ag.Root.AbsoluteSize.X)),e.Y-(e.Y*(az/ag.Root.
AbsoluteSize.Y)))end aB.Changed:Connect(function()if aB.UserInputState==Enum.
UserInputState.End then ah=false end end)end end)B.AddSignal(aA.InputChanged,
function(aB)if aB.UserInputType==Enum.UserInputType.MouseMovement or aB.
UserInputType==Enum.UserInputType.Touch then ai=aB end end)end BindWindowDrag(ag
.TitleBar.Frame)BindWindowDrag(as)local aA,aB=B.SpringMotor(0.55,as,
'BackgroundTransparency')B.AddSignal(as.MouseEnter,function()aB(0.2)end)B.
AddSignal(as.MouseLeave,function()aB(0.55)end)B.AddSignal(P.InputBegan,function(
aC)if aC.UserInputType==Enum.UserInputType.MouseButton1 or aC.UserInputType==
Enum.UserInputType.Touch then al=true am=aC.Position end end)B.AddSignal(h.
InputChanged,function(aC)if aC==ai and ah then local aD=aC.Position-aj local aE,
aF=ak.X.Offset+aD.X,ak.Y.Offset+aD.Y if i then local aG=GetScreenSize()aE=math.
clamp(aE,0,math.max(0,aG.X-ag.Size.X.Offset))aF=math.clamp(aF,0,math.max(0,aG.Y-
ag.Size.Y.Offset))end ag.Position=UDim2.fromOffset(aE,aF)ag.UserMoved=true au:
setGoal{X=ac(ag.Position.X.Offset),Y=ac(ag.Position.Y.Offset)}if ag.Maximized
then ag.Maximize(false,true,true)end end if(aC.UserInputType==Enum.UserInputType
.MouseMovement or aC.UserInputType==Enum.UserInputType.Touch)and al then local
aD,aE=aC.Position-am,ag.Size local aF,aG=Vector3.new(aE.X.Offset,aE.Y.Offset,0)+
Vector3.new(1,1,0)*aD,GetScreenSize()local aH,aI=math.max(F.X,aG.X-E*2),math.
max(F.Y,aG.Y-E*2)local aJ,aK,aL,aM=math.min(470,aH),math.min(380,aI),i and aH or
2048,i and aI or 2048 local aN=Vector2.new(math.clamp(aF.X,aJ,aL),math.clamp(aF.
Y,aK,aM))at:setGoal{X=A.Instant.new(aN.X),Y=A.Instant.new(aN.Y)}ApplyTabWidth(
CurrentTabWidth(aN.X))end end)B.AddSignal(h.InputEnded,function(aC)if not al
then return end if aC.UserInputType~=Enum.UserInputType.MouseButton1 and aC.
UserInputType~=Enum.UserInputType.Touch then return end al=false ag.Size=UDim2.
fromOffset(at:getValue().X,at:getValue().Y)ag.UserSize=ag.Size end)B.AddSignal(
ag.TabHolder.UIListLayout:GetPropertyChangedSignal'AbsoluteContentSize',function
()ag.TabHolder.CanvasSize=UDim2.new(0,0,0,ag.TabHolder.UIListLayout.
AbsoluteContentSize.Y)end)B.AddSignal(h.InputBegan,function(aC)if type(n.
MinimizeKeybind)=='table'and n.MinimizeKeybind.Type=='Keybind'and not h:
GetFocusedTextBox()then if aC.KeyCode.Name==n.MinimizeKeybind.Value then ag:
Minimize()end elseif aC.KeyCode==n.MinimizeKey and not h:GetFocusedTextBox()then
ag:Minimize()end end)function ag.Minimize(aC)ag.Minimized=not ag.Minimized for
aD,aE in next,n.Options do if aE and aE.Type=='Dropdown'and aE.Opened then
pcall(function()aE:Close()end)end end ag.RootScale.Scale=1 ag.Root.Visible=not
ag.Minimized if not an then an=true local aD=n.MinimizeKeybind and n.
MinimizeKeybind.Value or n.MinimizeKey.Name if not i then n:Notify{Title=
'Interface',Content='Press '..aD..' to toggle the interface.',Duration=6}else n:
Notify{Title='Interface',Content='Tap to the button to toggle the interface.',
Duration=6}end end function ag.ToggleSearch(aD)ag.ShowSearch=not ag.ShowSearch
ap.Visible=ag.ShowSearch ar.Size=UDim2.new(0,ag.TabWidth,1,ag.ShowSearch and-66
or-31)ar.Position=UDim2.new(0,12,0,ag.ShowSearch and 54 or 19)end end function
ag.Destroy(aC)if n.UseAcrylic then ag.AcrylicPaint.Model:Destroy()end ag.Root:
Destroy()end local aC=K.Dialog:Init(ag)function ag.Dialog(aD,aE)local aF=aC:
Create()aF.Title.Text=aE.Title local aG=ad('ScrollingFrame',{
BackgroundTransparency=1,ScrollBarImageTransparency=0.7,ScrollBarThickness=4,
BottomImage='rbxassetid://6889812791',MidImage='rbxassetid://6889812721',
TopImage='rbxassetid://6276641225',Position=UDim2.fromOffset(20,60),Size=UDim2.
new(1,-40,1,-110),CanvasSize=UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.
AutomaticSize.Y,ScrollingDirection=Enum.ScrollingDirection.Y,Parent=aF.Root})
local aH,aI=ad('TextLabel',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',Text=aE.Content,TextColor3=Color3.
fromRGB(240,240,240),TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top,AutomaticSize=Enum.AutomaticSize.Y,
TextWrapped=true,Size=UDim2.new(1,-8,0,0),BackgroundTransparency=1,Parent=aG,
ThemeTag={TextColor3='Text'}}),GetScreenSize()local aJ,aK=math.max(240,aI.X-40),
math.max(165,aI.Y-40)ad('UISizeConstraint',{MinSize=Vector2.new(math.min(300,aJ)
,math.min(165,aK)),MaxSize=Vector2.new(math.min(620,aJ),math.huge),Parent=aF.
Root})local aL=math.min(620,aJ,math.max(240,ag.Size.X.Offset-40))local aM=math.
max(math.min(300,aL),math.min(aL,aH.TextBounds.X+40))aF.Root.Size=UDim2.
fromOffset(aM,math.min(165,aK))aG.Size=UDim2.new(1,-40,1,-110)task.defer(
function()local aN=aH.TextBounds.Y local aO=math.clamp(aN+110,math.min(165,aK),
math.min(420,aK))aF.Root.Size=UDim2.fromOffset(aM,aO)aG.CanvasSize=UDim2.
fromOffset(0,aN)end)for aN,aO in next,aE.Buttons do aF:Button(aO.Title,aO.
Callback)end aF:Open()end local aD=K.Tab:Init(ag)function ag.AddTab(aE,aF)return
aD:New(aF.Title,aF.Icon,ag.TabHolder)end function ag.SelectTab(aE,aF)aD:
SelectTab(aF)end B.AddSignal(ag.TabHolder:GetPropertyChangedSignal
'CanvasPosition',function()aw=aD:GetCurrentTabPos()+16 ax=0 ag.SelectorPosMotor:
setGoal(ac(aD:GetCurrentTabPos()))end)do ag.MinimizeAnimBase={X=ag.Root.Position
.X.Offset,Y=ag.Root.Position.Y.Offset,SizeX=ag.Root.Size.X.Offset,SizeY=ag.Root.
Size.Y.Offset}ag.RootScaleMotor:setGoal(ab(1,{frequency=5}))end return ag end
end)()local ab,ac={},B.AddSignal local function BuildLabelStack(ad,ae,af)local
ag,ah=C('TextLabel',{FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle
.Normal),Text=ad or'',TextColor3=Color3.fromRGB(240,240,240),TextSize=13,
TextXAlignment=Enum.TextXAlignment.Left,AutomaticSize=Enum.AutomaticSize.Y,Size=
UDim2.new(1,0,0,14),BackgroundTransparency=1,LayoutOrder=1,Visible=ad~=nil and
ad~='',ThemeTag={TextColor3='Text'}}),C('TextLabel',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',Text=ae or'',TextColor3=Color3.
fromRGB(200,200,200),TextSize=12,TextWrapped=true,TextXAlignment=Enum.
TextXAlignment.Left,AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,
Size=UDim2.new(1,0,0,14),LayoutOrder=2,Visible=ae~=nil and ae~='',ThemeTag={
TextColor3='SubText'}})local ai=C('Frame',{AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),LayoutOrder=af},{C(
'UIListLayout',{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,2)}),ag,
ah})return ai,ag,ah end local function BuildLargeInputBox(ad,ae)local af=C(
'TextBox',{FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',
TextColor3=Color3.fromRGB(200,200,200),TextSize=13,TextXAlignment=Enum.
TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,TextWrapped=true,
MultiLine=true,ClearTextOnFocus=false,BackgroundTransparency=1,Text=ae.Default
or'',PlaceholderText=ae.Placeholder or'',Size=UDim2.new(1,0,0,0),Position=UDim2.
new(0,0,0,0),ThemeTag={TextColor3='Text',PlaceholderColor3='SubText'}})local ag=
C('ScrollingFrame',{Size=UDim2.new(1,-16,1,-12),Position=UDim2.new(0,8,0,6),
BackgroundTransparency=1,BorderSizePixel=0,CanvasSize=UDim2.fromOffset(0,0),
ScrollingDirection=Enum.ScrollingDirection.Y,ScrollBarThickness=4,
ScrollBarImageColor3=Color3.fromRGB(255,255,255),ScrollBarImageTransparency=0.75
,BottomImage='rbxassetid://6889812791',MidImage='rbxassetid://6889812721',
TopImage='rbxassetid://6276641225'},{af})local ah=C('Frame',{Size=UDim2.new(1,0,
0,ae.Height or 100),BackgroundTransparency=0.9,ClipsDescendants=true,Parent=ad,
LayoutOrder=2,ThemeTag={BackgroundColor3='Input'}},{C('UICorner',{CornerRadius=
UDim.new(0,4)}),C('UIStroke',{ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
Transparency=0.5,ThemeTag={Color='InElementBorder'}}),ag})local function 
UpdateHeight()local ai=ag.AbsoluteSize.X if ai<=0 then return end local aj=af.
Text if aj==''then aj=(af.PlaceholderText~=''and af.PlaceholderText)or' 'end
local ak=c:GetTextSize(aj,af.TextSize,af.Font,Vector2.new(ai,math.huge))local al
=math.max(ak.Y+6,ag.AbsoluteSize.Y)af.Size=UDim2.new(1,0,0,al)ag.CanvasSize=
UDim2.fromOffset(0,al)end task.defer(UpdateHeight)B.AddSignal(af:
GetPropertyChangedSignal'Text',UpdateHeight)B.AddSignal(ag:
GetPropertyChangedSignal'AbsoluteSize',UpdateHeight)return ah,af end local 
function BuildConnectedCard(ad,ae,af,ag)local ah,ai,aj,ak=C('Frame',{Size=UDim2.
new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=0.89,
BackgroundColor3=Color3.fromRGB(130,130,130),Parent=ad,Visible=ae.Visible and ae
.Visible or true,LayoutOrder=7,ThemeTag={BackgroundColor3='Element',
BackgroundTransparency='ElementTransparency'}},{C('UICorner',{CornerRadius=UDim.
new(0,4)}),C('UIStroke',{Transparency=0.5,ApplyStrokeMode=Enum.ApplyStrokeMode.
Border,ThemeTag={Color='ElementBorder'}}),C('UIListLayout',{SortOrder=Enum.
SortOrder.LayoutOrder})}),BuildLabelStack(ae.Title,ae.Description,1)ai.Size=
UDim2.new(1,-ag,0,0)local al=C('TextButton',{Text='',AutomaticSize=Enum.
AutomaticSize.Y,Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,Parent=ah,
LayoutOrder=1},{C('UIPadding',{PaddingTop=UDim.new(0,13),PaddingBottom=UDim.new(
0,8),PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,10)}),ai})C('Frame',{
Size=UDim2.new(1,-20,0,1),Position=UDim2.new(0.5,0,0,0),AnchorPoint=Vector2.new(
0.5,0),BackgroundTransparency=0.5,Parent=ah,LayoutOrder=2,ThemeTag={
BackgroundColor3='ElementBorder'}})local am=C('Frame',{AutomaticSize=Enum.
AutomaticSize.Y,Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,Parent=ah,
LayoutOrder=3},{C('UIPadding',{PaddingTop=UDim.new(0,5),PaddingBottom=UDim.new(0
,13),PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,10)}),C('UIListLayout',{
SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6)})})if(af.Title and af
.Title~='')or(af.Description and af.Description~='')then local an=
BuildLabelStack(af.Title,af.Description,1)an.Parent=am end local an,ao if af.
Size=='Large'then an,ao=BuildLargeInputBox(am,af)else local ap=K.Textbox(am,true
)ap.Frame.Size=UDim2.new(1,0,0,30)ap.Frame.LayoutOrder=2 ap.Input.MultiLine=
false ap.Input.Text=af.Default or''ap.Input.PlaceholderText=af.Placeholder or''
an,ao=ap.Frame,ap.Input end do local ap,aq=B.SpringMotor(B.GetThemeProperty
'ElementTransparency',ah,'BackgroundTransparency',false,true)B.AddSignal(al.
MouseEnter,function()aq(B.GetThemeProperty'ElementTransparency'-B.
GetThemeProperty'HoverChange')end)B.AddSignal(al.MouseLeave,function()aq(B.
GetThemeProperty'ElementTransparency')end)B.AddSignal(al.MouseButton1Down,
function()aq(B.GetThemeProperty'ElementTransparency'+B.GetThemeProperty
'HoverChange')end)B.AddSignal(al.MouseButton1Up,function()aq(B.GetThemeProperty
'ElementTransparency'-B.GetThemeProperty'HoverChange')end)end return ah,al,aj,ak
,an,ao end local function HookConnectedInput(ad,ae,af,ag)ae.Callback=ae.Callback
or function(ah)end if ae.Finished==nil then ae.Finished=(ae.Size=='Large')end ad
.InputValue=ae.Default or''ad.Input={Frame=af,Box=ag}function ad.SetInputValue(
ah,ai)ai=ai or''if ae.Size~='Large'and ai:find'[\r\n]'then ai=ai:gsub('[\r\n]+',
' ')end if ae.MaxLength and#ai>ae.MaxLength then ai=ai:sub(1,ae.MaxLength)end if
ae.Numeric and ai:len()>0 and not tonumber(ai)then ai=ad.InputValue end ad.
InputValue=ai if ag.Text~=ai then ag.Text=ai end n:SafeCallback(ae.Callback,ad.
InputValue)n:SafeCallback(ad.InputChanged,ad.InputValue)end function ad.
OnInputChanged(ah,ai)ad.InputChanged=ai ai(ad.InputValue)end if ae.Finished then
B.AddSignal(ag.FocusLost,function(ah)if not ah and ae.Size~='Large'then return
end ad:SetInputValue(ag.Text)end)else B.AddSignal(ag:GetPropertyChangedSignal
'Text',function()ad:SetInputValue(ag.Text)end)end end ab.Button=(function()local
ad={}ad.__index=ad ad.__type='Button'function ad.New(ae,af)assert(af.Title,
'Button - Missing Title')af.Callback=af.Callback or function()end local ag=af.
Input if ag==true then ag={}end local ah=type(ag)=='table'if ah then ag.Size=(ag
.Size=='Large')and'Large'or'Small'end if not ah then local ai=K.Element(af.Title
,af.Description,ae.Container,true,af)C('ImageLabel',{Image=
'rbxassetid://10709791437',Size=UDim2.fromOffset(16,16),AnchorPoint=Vector2.new(
1,0.5),Position=UDim2.new(1,-10,0.5,0),BackgroundTransparency=1,Parent=ai.Frame,
ThemeTag={ImageColor3='Text'}})B.AddSignal(ai.Frame.MouseButton1Click,function()
n:SafeCallback(af.Callback)end)return ai end local ai,aj,ak,al,am,an=
BuildConnectedCard(ae.Container,af,ag,34)C('ImageLabel',{Image=
'rbxassetid://10709791437',Size=UDim2.fromOffset(16,16),AnchorPoint=Vector2.new(
1,0.5),Position=UDim2.new(1,-10,0.5,0),BackgroundTransparency=1,Parent=aj,
ThemeTag={ImageColor3='Text'}})B.AddSignal(aj.MouseButton1Click,function()n:
SafeCallback(af.Callback)end)local ao={Frame=ai,Type='Button'}function ao.
SetTitle(ap,aq)ak.Text=aq ak.Visible=aq~=nil and aq~=''end function ao.SetDesc(
ap,aq)al.Text=aq or''al.Visible=aq~=nil and aq~=''end function ao.Visible(ap,aq)
ai.Visible=aq end HookConnectedInput(ao,ag,am,an)return ao end return ad end)()
ab.Toggle=(function()local ad={}ad.__index=ad ad.__type='Toggle'function ad.New(
ae,af,ag)assert(ag.Title,'Toggle - Missing Title')local ah,ai={Value=ag.Default
or false,Callback=ag.Callback or function(ah)end,Type='Toggle'},ag.Input if ai==
true then ai={}end local aj=type(ai)=='table'if aj then ai.Size=(ai.Size==
'Large')and'Large'or'Small'end local ak,al=C('ImageLabel',{AnchorPoint=Vector2.
new(0,0.5),Size=UDim2.fromOffset(14,14),Position=UDim2.new(0,2,0.5,0),Image=
'http://www.roblox.com/asset/?id=12266946128',ImageTransparency=0.5,ThemeTag={
ImageColor3='ToggleSlider'}}),C('UIStroke',{Transparency=0.5,ThemeTag={Color=
'ToggleSlider'}})local am,an,ao,ap,aq,ar,as=C('Frame',{Size=UDim2.fromOffset(36,
18),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-10,0.5,0),
BackgroundTransparency=1,ThemeTag={BackgroundColor3='Accent'}},{C('UICorner',{
CornerRadius=UDim.new(0,9)}),al,ak}),nil,nil,nil,nil,nil,nil if not aj then an=K
.Element(ag.Title,ag.Description,ae.Container,true,ag)an.DescLabel.Size=UDim2.
new(1,-54,0,14)am.Parent=an.Frame ao=an.Frame else local at at,ao,ar,as,ap,aq=
BuildConnectedCard(ae.Container,ag,ai,54)am.Parent=ao an={Frame=at}end ah.
Elements=an function ah.SetTitle(at,au)if aj then ar.Text=au ar.Visible=au~=nil
and au~=''else an.SetTitle(au)end end function ah.SetDesc(at,au)if aj then as.
Text=au or''as.Visible=au~=nil and au~=''else an.SetDesc(au)end end function ah.
Visible(at,au)an.Frame.Visible=au end function ah.OnChanged(at,au)ah.Changed=au
au(ah.Value)end function ah.SetValue(at,au)au=not not au ah.Value=au B.
OverrideTag(al,{Color=ah.Value and'Accent'or'ToggleSlider'})B.OverrideTag(ak,{
ImageColor3=ah.Value and'ToggleToggled'or'ToggleSlider'})b:Create(ak,TweenInfo.
new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Position=UDim2.new(0,
ah.Value and 19 or 2,0.5,0)}):Play()b:Create(am,TweenInfo.new(0.25,Enum.
EasingStyle.Quint,Enum.EasingDirection.Out),{BackgroundTransparency=ah.Value and
0.45 or 1}):Play()ak.ImageTransparency=ah.Value and 0 or 0.5 n:SafeCallback(ah.
Callback,ah.Value)n:SafeCallback(ah.Changed,ah.Value)end function ah.Destroy(at)
an.Frame:Destroy()n.Options[af]=nil end B.AddSignal(ao.MouseButton1Click,
function()ah:SetValue(not ah.Value)end)ah:SetValue(ah.Value)if aj then
HookConnectedInput(ah,ai,ap,aq)end n.Options[af]=ah return ah end return ad end
)()ab.Dropdown=(function()local ad={}ad.__index=ad ad.__type='Dropdown'local ae=
B.New function ad.New(af,ag,ah)local ai=false if n.Window and n.Window.
DropdownsOutsideWindow~=nil then ai=n.Window.DropdownsOutsideWindow elseif n.
Windows and#n.Windows>0 then for aj=#n.Windows,1,-1 do local ak=n.Windows[aj]if
ak and ak.DropdownsOutsideWindow~=nil then ai=ak.DropdownsOutsideWindow break
end end end local aj={Values=ah.Values,Value=ah.Default,Multi=ah.Multi,Buttons={
},Opened=false,Type='Dropdown',Callback=ah.Callback or function()end,Search=(ah.
Search==nil)and true or ah.Search,KeepSearch=ah.KeepSearch==true,OpenToRight=ai}
if aj.Multi and ah.AllowNull then aj.Value={}end local ak=K.Element(ah.Title,ah.
Description,af.Container,false,ah)ak.DescLabel.Size=UDim2.new(1,-170,0,14)aj.
SetTitle=ak.SetTitle aj.SetDesc=ak.SetDesc aj.Visible=ak.Visible aj.Elements=ak
local al,am,an=af.Container,ae('TextLabel',{FontFace=Font.new(
'rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum.
FontStyle.Normal),Text='',TextColor3=Color3.fromRGB(240,240,240),TextSize=14,
AutomaticSize=Enum.AutomaticSize.Y,TextYAlignment=Enum.TextYAlignment.Center,
TextXAlignment=Enum.TextXAlignment.Left,Size=UDim2.new(1,-40,0.5,0),Position=
UDim2.new(0,8,0.5,0),AnchorPoint=Vector2.new(0,0.5),BackgroundTransparency=1,
TextTruncate=Enum.TextTruncate.AtEnd,ThemeTag={TextColor3='Text'}}),ae(
'ImageLabel',{Image='rbxassetid://10709790948',Size=UDim2.fromOffset(16,16),
AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-8,0.5,0),
BackgroundTransparency=1,Rotation=180,ThemeTag={ImageColor3='SubText'}})local ao
=ae('TextButton',{Size=UDim2.fromOffset(160,30),Position=UDim2.new(1,-10,0.5,0),
AnchorPoint=Vector2.new(1,0.5),BackgroundTransparency=0.9,Parent=ak.Frame,
ThemeTag={BackgroundColor3='DropdownFrame'}},{ae('UICorner',{CornerRadius=UDim.
new(0,5)}),ae('UIStroke',{Transparency=0.5,ApplyStrokeMode=Enum.ApplyStrokeMode.
Border,ThemeTag={Color='InElementBorder'}}),an,am})aj.DisplayLabel=am aj.Inner=
ao if ah.FullWidth then ak.DescLabel.Size=UDim2.new(1,0,0,14)ao.AnchorPoint=
Vector2.new(0,0)ao.Position=UDim2.fromOffset(0,0)ao.Size=UDim2.new(1,0,0,30)ao.
LayoutOrder=5 ao.Parent=ak.LabelHolder end local ap=ae('UIListLayout',{Padding=
UDim.new(0,3)})local aq,ar,as,at,au,av=ae('ScrollingFrame',{Size=UDim2.new(1,-5,
1,-10),Position=UDim2.fromOffset(5,5),BackgroundTransparency=1,BottomImage=
'rbxassetid://6889812791',MidImage='rbxassetid://6889812721',TopImage=
'rbxassetid://6276641225',ScrollBarImageColor3=Color3.fromRGB(255,255,255),
ScrollBarImageTransparency=0.75,ScrollBarThickness=5,BorderSizePixel=0,
CanvasSize=UDim2.fromScale(0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,
ScrollingDirection=Enum.ScrollingDirection.Y},{ap}),nil,nil,nil,nil,nil if aj.
Search then au=ae('Frame',{Size=UDim2.new(1,-10,0,28),Position=UDim2.fromOffset(
5,5),BackgroundTransparency=0.7,BackgroundColor3=Color3.fromRGB(20,20,20),
ThemeTag={BackgroundColor3='Element'},ZIndex=24},{ae('UICorner',{CornerRadius=
UDim.new(0,4)})})av=ae('TextBox',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',TextColor3=Color3.fromRGB(200,200,200
),TextSize=13,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.
TextYAlignment.Center,BackgroundTransparency=1,Size=UDim2.new(1,-36,1,0),
Position=UDim2.new(0,8,0,0),PlaceholderText='Search...',PlaceholderColor3=Color3
.fromRGB(120,120,120),ClearTextOnFocus=false,Text='',Parent=au,ThemeTag={
TextColor3='Text',PlaceholderColor3='SubText'},ZIndex=24})ae('ImageLabel',{Size=
UDim2.fromOffset(16,16),Position=UDim2.new(1,-13,0.5,0),AnchorPoint=Vector2.new(
0.5,0.5),BackgroundTransparency=1,Image='rbxassetid://10734943674',Parent=au,
ImageTransparency=0.3,ZIndex=25,ThemeTag={ImageColor3='SubText'}})aq.Position=
UDim2.fromOffset(5,38)aq.Size=UDim2.new(1,-5,1,-43)local aw=0 local function 
ApplyFilter()aw=aw+1 local ax=aw task.spawn(function()task.wait(0.01)if ax~=aw
then return end local ay=(av.Text or''):lower()for az,aA in next,aq:GetChildren(
)do if not aA:IsA'UIListLayout'then local aB=aA:FindFirstChild'ButtonLabel'and
aA.ButtonLabel.Text or''aA.Visible=ay==''or aB:lower():find(ay,1,true)~=nil end
end task.wait()at()task.wait()as()task.wait()ar()end)end B.AddSignal(av:
GetPropertyChangedSignal'Text',ApplyFilter)end local aw if ah.
DropdownsOutsideWindow then aw=0.25 else aw=0 end local ax=ae('Frame',{Size=
UDim2.fromScale(1,0.6),BackgroundTransparency=aw,ThemeTag={BackgroundColor3=
'DropdownHolder'}},{au,aq,ae('UICorner',{CornerRadius=UDim.new(0,7)}),ae(
'UIStroke',{ApplyStrokeMode=Enum.ApplyStrokeMode.Border,ThemeTag={Color=
'DropdownBorder'}}),ae('ImageLabel',{BackgroundTransparency=1,Image=
'http://www.roblox.com/asset/?id=5554236805',ScaleType=Enum.ScaleType.Slice,
SliceCenter=Rect.new(23,23,277,277),Size=UDim2.fromScale(1,1)+UDim2.fromOffset(
30,30),Position=UDim2.fromOffset(-15,-15),ImageColor3=Color3.fromRGB(0,0,0),
ImageTransparency=0.1})})local ay=ae('Frame',{BackgroundTransparency=1,Size=
UDim2.fromOffset(170,300),Parent=n.GUI,Visible=false},{ax,ae('UISizeConstraint',
{MinSize=Vector2.new(170,0)})})table.insert(n.OpenFrames,ay)local az if n.Window
and n.Window.Root then az=n.Window.Root elseif n.Windows and#n.Windows>0 then
for aA=#n.Windows,1,-1 do local aB=n.Windows[aA]if aB and aB.Root then az=aB.
Root break end end end if not az and al then local aA=al.Parent while aA do if
aA:IsA'Frame'then if aA:FindFirstChild'ContainerCanvas'or(aA.Name and aA:
FindFirstChild'TitleBar')then az=aA break end end if aA:IsA'ScreenGui'then break
end aA=aA.Parent end end function ar()if not ay or not ao then return end local
aA,aB,aC,aD,aE,aF,aG,aH=ao.AbsolutePosition.X,ao.AbsolutePosition.Y,ao.
AbsoluteSize.X,ao.AbsoluteSize.Y,ay.AbsoluteSize.X,ay.AbsoluteSize.Y,d.
ViewportSize.Y,d.ViewportSize.X if not az then if n.Window and n.Window.Root
then az=n.Window.Root elseif n.Windows and#n.Windows>0 then for aI=#n.Windows,1,
-1 do local aJ=n.Windows[aI]if aJ and aJ.Root then az=aJ.Root break end end end
if not az and al then local aI=al.Parent while aI do if aI:IsA'Frame'then if aI:
FindFirstChild'ContainerCanvas'or(aI.Name and aI:FindFirstChild'TitleBar')then
az=aI break end end if aI:IsA'ScreenGui'then break end aI=aI.Parent end end end
local aI,aJ=aA-1,false if az then local aK,aL=az.AbsolutePosition.X,az.
AbsoluteSize.X local aM=aK+aL if aj.OpenToRight then aI=aM+5 if aj.SavedY==nil
then aj.SavedY=aB end aJ=true else local aN=aA+aE-1 if aN>aM then aI=math.max(aK
+5,aM-aE-5)end aj.SavedY=nil end else local aK=aA+aE-1 if aK>aH then if aj.
OpenToRight then aI=aH+5 if aj.SavedY==nil then aj.SavedY=aB end aJ=true else aI
=math.max(5,aH-aE-5)end aj.SavedY=nil end end local aK if aJ and az then local
aL,aM=az.AbsolutePosition.Y,az.AbsoluteSize.Y local aN=aL+aM/2 aK=aN-aF/2 local
aO,L,M,N=aL,aL+aM,0,aG if aK+aF>N then aK=N-aF-5 end if aK<M then aK=M+5 end if
aK+aF>L then aK=L-aF-5 end if aK<aO then aK=aO+5 end elseif aJ and aj.SavedY
then aK=aj.SavedY local aL,aM=aG-(aj.SavedY+aD),aj.SavedY if aF>aL and aF<=aM
then aK=aj.SavedY-aF-5 elseif aF>aL and aF>aM then if aL>aM then aK=aj.SavedY+aD
+5 else aK=math.max(5,aj.SavedY-aF-5)end else aK=aj.SavedY+aD+5 end else local
aL,aM=aG-(aB+aD),aB if aF<=aL then aK=aB+aD+5 elseif aF<=aM then aK=aB-aF-5 else
if aL>aM then aK=aB+aD+5 else aK=math.max(5,aB-aF-5)end end end ay.Position=
UDim2.fromOffset(aI,aK)end local aA=0 function as()if not ay or not ax then
return end local aB=0 for aC,aD in next,aq:GetChildren()do if not aD:IsA
'UIListLayout'and aD.Visible then aB=aB+1 end end local aC,aD,aE,aF=32,3,aj.
Search and 38 or 0,10 local aG,aH=(aB>0)and(aB*aC+(aB-1)*aD+aF+aE)or(aF+aE),392
local aI,aJ=math.min(aG,aH),math.max(170,aA>0 and(aA+20)or 170)if ah.FullWidth
and ao then aJ=math.max(aJ,ao.AbsoluteSize.X)end ay.Size=UDim2.fromOffset(aJ,aI)
local aK=aB>10 ax.Size=UDim2.fromScale(1,aK and(aI/math.max(aI,1))or 1)end
function at()aq.CanvasSize=UDim2.fromOffset(0,ap.AbsoluteContentSize.Y)end ar()
as()at()if aj.OpenToRight then if az then B.AddSignal(az:
GetPropertyChangedSignal'AbsolutePosition',function()if aj.Opened then aj.SavedY
=nil ar()end end)B.AddSignal(az:GetPropertyChangedSignal'AbsoluteSize',function(
)if aj.Opened then ar()end end)end else B.AddSignal(ao:GetPropertyChangedSignal
'AbsolutePosition',ar)if az then B.AddSignal(az:GetPropertyChangedSignal
'AbsolutePosition',function()if aj.Opened then ar()end end)B.AddSignal(az:
GetPropertyChangedSignal'AbsoluteSize',function()if aj.Opened then ar()end end)
end end B.AddSignal(ap:GetPropertyChangedSignal'AbsoluteContentSize',function()
at()task.wait()as()task.wait()ar()end)B.AddSignal(ao.MouseButton1Click,function(
)if aj.Opened then aj:Close()return end aj:Open()end)B.AddSignal(ao.InputBegan,
function(aB)if aB.UserInputType==Enum.UserInputType.Touch then if aj.Opened then
aj:Close()return end aj:Open()end end)B.AddSignal(am:GetPropertyChangedSignal
'Text',function()for aB,aC in next,aq:GetChildren()do if not aC:IsA
'UIListLayout'then aC.Visible=true end end ar()as()end)B.AddSignal(h.InputBegan,
function(aB)if aB.UserInputType==Enum.UserInputType.MouseButton1 or aB.
UserInputType==Enum.UserInputType.Touch then local aC,aD=ax.AbsolutePosition,ax.
AbsoluteSize if e.X<aC.X or e.X>aC.X+aD.X or e.Y<(aC.Y-20-1)or e.Y>aC.Y+aD.Y
then aj:Close()end end end)local aB=af.ScrollFrame function aj.Open(aC)aj.Opened
=true if aj.OpenToRight then aj.SavedY=nil end for aD,aE in ipairs(n.OpenFrames)
do if aE~=ay and aE.Visible then aE.Visible=false end end if av and not aj.
KeepSearch then av.Text=''end ay.Visible=true ar()as()at()task.wait()b:Create(ax
,TweenInfo.new(0.3,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{Size=UDim2.
fromScale(1,1)}):Play()b:Create(an,TweenInfo.new(0.3,Enum.EasingStyle.Quart,Enum
.EasingDirection.Out),{Rotation=0}):Play()end function aj.Close(aC)aj.Opened=
false if aj.OpenToRight then aj.SavedY=nil end ax.Size=UDim2.fromScale(1,1)ay.
Visible=false b:Create(an,TweenInfo.new(0.3,Enum.EasingStyle.Quart,Enum.
EasingDirection.Out),{Rotation=180}):Play()aj:Display()for aD,aE in next,aq:
GetChildren()do if not aE:IsA'UIListLayout'then aE.Visible=true end end end
function aj.Display(aC)local aD,aE=aj.Values,''if ah.Multi then for aF,aG in
next,aD do if aj.Value[aG]then aE=aE..aG..', 'end end aE=aE:sub(1,#aE-2)else aE=
aj.Value or''end am.Text=(aE==''and'--'or aE)end function aj.GetActiveValues(aC)
if ah.Multi then local aD={}for aE,aF in next,aj.Value do table.insert(aD,aE)end
return aD else return aj.Value and 1 or 0 end end function aj.SetActiveValues(aC
,aD)aj.Value=aD n:SafeCallback(aj.Callback,aj.Value)n:SafeCallback(aj.Changed,aj
.Value)aj:BuildDropdownList()end function aj.BuildDropdownList(aC)local aD,aE=aj
.Values,{}for aF,aG in next,aq:GetChildren()do if not aG:IsA'UIListLayout'then
aG:Destroy()end end local aF=0 for aG,aH in next,aD do local aI={}aF=aF+1 local
aJ,aK=ae('Frame',{Size=UDim2.fromOffset(4,14),BackgroundColor3=Color3.fromRGB(76
,194,255),Position=UDim2.fromOffset(-1,16),AnchorPoint=Vector2.new(0,0.5),
ThemeTag={BackgroundColor3='Accent'}},{ae('UICorner',{CornerRadius=UDim.new(0,2)
})}),ae('TextLabel',{FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json'
,Text=aH,TextColor3=Color3.fromRGB(200,200,200),TextSize=13,TextXAlignment=Enum.
TextXAlignment.Left,BackgroundColor3=Color3.fromRGB(255,255,255),AutomaticSize=
Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.fromScale(1,1),Position
=UDim2.fromOffset(10,0),Name='ButtonLabel',ThemeTag={TextColor3='Text'}})local
aL,aM=ae('TextButton',{Size=UDim2.new(1,-5,0,32),BackgroundTransparency=1,ZIndex
=23,Text='',Parent=aq,ThemeTag={BackgroundColor3='DropdownOption'}},{aJ,aK,ae(
'UICorner',{CornerRadius=UDim.new(0,6)})}),nil if ah.Multi then aM=aj.Value[aH]
else aM=aj.Value==aH end local aN,aO=B.SpringMotor(1,aL,'BackgroundTransparency'
)local L,M=B.SpringMotor(1,aJ,'BackgroundTransparency')local N=A.SingleMotor.
new(6)N:onStep(function(O)aJ.Size=UDim2.new(0,4,0,O)end)B.AddSignal(aL.
MouseEnter,function()aO(aM and 0.85 or 0.89)end)B.AddSignal(aL.MouseLeave,
function()aO(aM and 0.89 or 1)end)B.AddSignal(aL.MouseButton1Down,function()aO(
0.92)end)B.AddSignal(aL.MouseButton1Up,function()aO(aM and 0.85 or 0.89)end)
function aI.UpdateButton(O)if ah.Multi then aM=aj.Value[aH]if aM then aO(0.89)
end else aM=aj.Value==aH aO(aM and 0.89 or 1)end N:setGoal(A.Spring.new(aM and
14 or 6,{frequency=6}))M(aM and 0 or 1)end ac(aL.Activated,function()if ah.
NoSelect then return end local O=not aM if aj:GetActiveValues()==1 and not O and
not ah.AllowNull then else if ah.Multi then aM=O aj.Value[aH]=aM and true or nil
else aM=O aj.Value=aM and aH or nil for P,Q in next,aE do Q:UpdateButton()end
end aI:UpdateButton()aj:Display()n:SafeCallback(aj.Callback,aj.Value)n:
SafeCallback(aj.Changed,aj.Value)end end)aI:UpdateButton()aj:Display()if ah.
OnRowBuilt then n:SafeCallback(ah.OnRowBuilt,{Button=aL,Label=aK,Selector=aJ,
Value=aH})end aE[aL]=aI end aA=0 for aG,aH in next,aE do if aG.ButtonLabel then
local aI=aG.ButtonLabel.TextBounds.X if aI>aA then aA=aI end end end aA=math.
max(150,aA+40)at()as()end function aj.SetValues(aC,aD)if aD then aj.Values=aD
end aj:BuildDropdownList()end function aj.OnChanged(aC,aD)aj.Changed=aD aD(aj.
Value)end function aj.SetValue(aC,aD)if aj.Multi then local aE={}for aF,aG in
next,aD do if table.find(aj.Values,aF)then aE[aF]=true end end aj.Value=aE else
if not aD then aj.Value=nil elseif table.find(aj.Values,aD)then aj.Value=aD end
end aj:BuildDropdownList()n:SafeCallback(aj.Callback,aj.Value)n:SafeCallback(aj.
Changed,aj.Value)end function aj.Destroy(aC)ak:Destroy()n.Options[ag]=nil end aj
:BuildDropdownList()aj:Display()local aC={}if type(ah.Default)=='string'then
local aD=table.find(aj.Values,ah.Default)if aD then table.insert(aC,aD)end
elseif type(ah.Default)=='table'then for aD,aE in next,ah.Default do local aF=
table.find(aj.Values,aE)if aF then table.insert(aC,aF)end end elseif type(ah.
Default)=='number'and aj.Values[ah.Default]~=nil then table.insert(aC,ah.Default
)end if next(aC)then for aD=1,#aC do local aE=aC[aD]if ah.Multi then aj.Value[aj
.Values[aE] ]=true else aj.Value=aj.Values[aE]end if not ah.Multi then break end
end aj:BuildDropdownList()aj:Display()end n.Options[ag]=aj return aj end return
ad end)()ab.Paragraph=(function()local ad={}ad.__index=ad ad.__type='Paragraph'
function ad.New(ae,af)af.Content=af.Content or''local ag=K.Element(af.Title,af.
Content,ad.Container,false,af)ag.Frame.BackgroundTransparency=0.92 ag.Border.
Transparency=0.6 ag.SetTitle=ag.SetTitle ag.SetDesc=ag.SetDesc ag.Visible=ag.
Visible ag.Elements=ag return ag end return ad end)()ab.Slider=(function()local
ad={}ad.__index=ad ad.__type='Slider'function ad.New(ae,af,ag)assert(ag.Title,
'Slider - Missing Title.')assert(ag.Default,'Slider - Missing default value.')
assert(ag.Min,'Slider - Missing minimum value.')assert(ag.Max,
'Slider - Missing maximum value.')assert(ag.Rounding,
'Slider - Missing rounding value.')local ah,ai,aj={Value=nil,Min=ag.Min,Max=ag.
Max,Rounding=ag.Rounding,Callback=ag.Callback or function(ah)end,Type='Slider'},
false,K.Element(ag.Title,ag.Description,ae.Container,false,ag)aj.DescLabel.Size=
UDim2.new(1,-170,0,14)ah.Elements=aj ah.SetTitle=aj.SetTitle ah.SetDesc=aj.
SetDesc ah.Visible=aj.Visible local ak=C('ImageLabel',{AnchorPoint=Vector2.new(0
,0.5),Position=UDim2.new(0,-7,0.5,0),Size=UDim2.fromOffset(14,14),Image=
'http://www.roblox.com/asset/?id=12266946128',ThemeTag={ImageColor3='Accent'}})
local al,am,an,ao=C('Frame',{BackgroundTransparency=1,Position=UDim2.fromOffset(
7,0),Size=UDim2.new(1,-14,1,0)},{ak}),C('Frame',{Size=UDim2.new(0,0,1,0),
ThemeTag={BackgroundColor3='Accent'}},{C('UICorner',{CornerRadius=UDim.new(1,0)}
)}),C('TextLabel',{FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',
Text='Value',TextSize=12,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.
Right,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,Size
=UDim2.new(0,100,0,14),Position=UDim2.new(0,-4,0.5,0),AnchorPoint=Vector2.new(1,
0.5),ThemeTag={TextColor3='SubText'}}),C('TextBox',{FontFace=Font.new
'rbxasset://fonts/families/GothamSSm.json',Text='',TextSize=12,TextXAlignment=
Enum.TextXAlignment.Right,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=0.8,Size=UDim2.new(0,0,0,14),Position=UDim2.new(0,-4,0.5,
0),AnchorPoint=Vector2.new(1,0.5),PlaceholderText='Value',ClearTextOnFocus=false
,Visible=true,TextWrapped=false,TextTransparency=1,BackgroundTransparency=1,
ThemeTag={TextColor3='SubText',BackgroundColor3='Element'}},{C('UICorner',{
CornerRadius=UDim.new(0,3)}),C('UIStroke',{ApplyStrokeMode=Enum.ApplyStrokeMode.
Border,Color=Color3.fromRGB(0,0,0),Transparency=1,Thickness=1})})C('Frame',{Size
=UDim2.new(1,0,0,4),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-10,0.5,
0),BackgroundTransparency=0.4,Parent=aj.Frame,ThemeTag={BackgroundColor3=
'SliderRail'}},{C('UICorner',{CornerRadius=UDim.new(1,0)}),C('UISizeConstraint',
{MaxSize=Vector2.new(150,math.huge)}),an,ao,am,al})local ap,aq=false,false local 
function calculateInputWidth(ar)local as,at,au,av=game:GetService'TextService':
GetTextSize(ar or'0',12,Enum.Font.SourceSans,Vector2.new(1000,14)),8,25,80
return math.max(au,math.min(av,as.X+at))end B.AddSignal(aj.Frame.MouseEnter,
function()ap=true if not ao:IsFocused()then an.Visible=false ao.Text=tostring(ah
.Value)local ar=calculateInputWidth(tostring(ah.Value))ao.Size=UDim2.new(0,ar,0,
14)aq=true local as=TweenInfo.new(0.25,Enum.EasingStyle.Quart,Enum.
EasingDirection.Out)b:Create(ao,as,{TextTransparency=0,BackgroundTransparency=
0.8}):Play()b:Create(ao.UIStroke,as,{Transparency=0.7}):Play()end end)B.
AddSignal(aj.Frame.MouseLeave,function()ap=false if not ao:IsFocused()and aq
then local ar=TweenInfo.new(0.2,Enum.EasingStyle.Quart,Enum.EasingDirection.In)b
:Create(ao,ar,{TextTransparency=1,BackgroundTransparency=1}):Play()b:Create(ao.
UIStroke,ar,{Transparency=1}):Play()task.wait(0.2)an.Visible=true aq=false end
end)B.AddSignal(ao.Changed,function(ar)if ar=='Text'then local as=ao.Text local
at=as:gsub('[^%d%.%-]','')if at:find'%-'and at:find'%-'~=1 then at=at:gsub('%-',
'')end local au=0 at=at:gsub('%.',function()au=au+1 return au==1 and'.'or''end)
if at~=as then ao.Text=at end if ao.Visible then local av=calculateInputWidth(at
)ao.Size=UDim2.new(0,av,0,14)end end end)B.AddSignal(ao.FocusLost,function(ar)
local as=tonumber(ao.Text)if as then ah:SetValue(as)else ao.Text=tostring(ah.
Value)end if not ap then local at=TweenInfo.new(0.2,Enum.EasingStyle.Quart,Enum.
EasingDirection.In)b:Create(ao,at,{TextTransparency=1,BackgroundTransparency=1})
:Play()b:Create(ao.UIStroke,at,{Transparency=1}):Play()task.wait(0.2)an.Visible=
true aq=false end end)B.AddSignal(ao.Focused,function()ao.Text=tostring(ah.Value
)end)B.AddSignal(ao.InputBegan,function(ar)if ar.UserInputType==Enum.
UserInputType.MouseButton1 or ar.UserInputType==Enum.UserInputType.Touch then ai
=false end end)B.AddSignal(ak.InputBegan,function(ar)if ar.UserInputType==Enum.
UserInputType.MouseButton1 or ar.UserInputType==Enum.UserInputType.Touch then ai
=true end end)B.AddSignal(ak.InputEnded,function(ar)if ar.UserInputType==Enum.
UserInputType.MouseButton1 or ar.UserInputType==Enum.UserInputType.Touch then ai
=false end end)B.AddSignal(h.InputChanged,function(ar)if ai then local as if ar.
UserInputType==Enum.UserInputType.MouseMovement then as=ar.Position elseif ar.
UserInputType==Enum.UserInputType.Touch then as=ar.Position end if as then local
at=math.clamp((as.X-al.AbsolutePosition.X)/al.AbsoluteSize.X,0,1)ah:SetValue(ah.
Min+((ah.Max-ah.Min)*at))end end end)B.AddSignal(al.InputBegan,function(ar)if ar
.UserInputType==Enum.UserInputType.Touch then ai=true local as=math.clamp((ar.
Position.X-al.AbsolutePosition.X)/al.AbsoluteSize.X,0,1)ah:SetValue(ah.Min+((ah.
Max-ah.Min)*as))end end)B.AddSignal(al.InputEnded,function(ar)if ar.
UserInputType==Enum.UserInputType.Touch then ai=false end end)function ah.
OnChanged(ar,as)ah.Changed=as as(ah.Value)end function ah.SetValue(ar,as)ar.
Value=n:Round(math.clamp(as,ah.Min,ah.Max),ah.Rounding)ak.Position=UDim2.new((ar
.Value-ah.Min)/(ah.Max-ah.Min),-7,0.5,0)am.Size=UDim2.fromScale((ar.Value-ah.Min
)/(ah.Max-ah.Min),1)an.Text=tostring(ar.Value)if ao.Visible then ao.Text=
tostring(ar.Value)local at=calculateInputWidth(tostring(ar.Value))ao.Size=UDim2.
new(0,at,0,14)end n:SafeCallback(ah.Callback,ar.Value)n:SafeCallback(ah.Changed,
ar.Value)end function ah.Destroy(ar)aj:Destroy()n.Options[af]=nil end ah:
SetValue(ag.Default)n.Options[af]=ah return ah end return ad end)()ab.Keybind=(
function()local ad={}ad.__index=ad ad.__type='Keybind'function ad.New(ae,af,ag)
assert(ag.Title,'KeyBind - Missing Title')assert(ag.Default,
'KeyBind - Missing default value.')local ah,ai,aj={Value=ag.Default,Toggled=
false,Mode=ag.Mode or'Toggle',Type='Keybind',Callback=ag.Callback or function(ah
)end,ChangedCallback=ag.ChangedCallback or function(ah)end},false,K.Element(ag.
Title,ag.Description,ae.Container,true)ah.SetTitle=aj.SetTitle ah.SetDesc=aj.
SetDesc ah.Visible=aj.Visible ah.Elements=aj local ak=C('TextLabel',{FontFace=
Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum
.FontStyle.Normal),Text=ag.Default,TextColor3=Color3.fromRGB(240,240,240),
TextSize=13,TextXAlignment=Enum.TextXAlignment.Center,Size=UDim2.new(0,0,0,14),
Position=UDim2.new(0,0,0.5,0),AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=
Color3.fromRGB(255,255,255),AutomaticSize=Enum.AutomaticSize.X,
BackgroundTransparency=1,ThemeTag={TextColor3='Text'}})local al=C('TextButton',{
Size=UDim2.fromOffset(0,30),Position=UDim2.new(1,-10,0.5,0),AnchorPoint=Vector2.
new(1,0.5),BackgroundTransparency=0.9,Parent=aj.Frame,AutomaticSize=Enum.
AutomaticSize.X,ThemeTag={BackgroundColor3='Keybind'}},{C('UICorner',{
CornerRadius=UDim.new(0,5)}),C('UIPadding',{PaddingLeft=UDim.new(0,8),
PaddingRight=UDim.new(0,8)}),C('UIStroke',{Transparency=0.5,ApplyStrokeMode=Enum
.ApplyStrokeMode.Border,ThemeTag={Color='InElementBorder'}}),ak})function ah.
GetState(am)if h:GetFocusedTextBox()and ah.Mode~='Always'then return false end
if ah.Mode=='Always'then return true elseif ah.Mode=='Hold'then if ah.Value==
'None'then return false end local an=ah.Value if an=='MouseLeft'or an==
'MouseRight'then return an=='MouseLeft'and h:IsMouseButtonPressed(Enum.
UserInputType.MouseButton1)or an=='MouseRight'and h:IsMouseButtonPressed(Enum.
UserInputType.MouseButton2)else return h:IsKeyDown(Enum.KeyCode[ah.Value])end
else return ah.Toggled end end function ah.SetValue(am,an,ao)an=an or ah.Key ao=
ao or ah.Mode ak.Text=an ah.Value=an ah.Mode=ao end function ah.OnClick(am,an)ah
.Clicked=an end function ah.OnChanged(am,an)ah.Changed=an an(ah.Value)end
function ah.DoClick(am)n:SafeCallback(ah.Callback,ah.Toggled)n:SafeCallback(ah.
Clicked,ah.Toggled)end function ah.Destroy(am)aj:Destroy()n.Options[af]=nil end
B.AddSignal(al.InputBegan,function(am)if am.UserInputType==Enum.UserInputType.
MouseButton1 or am.UserInputType==Enum.UserInputType.Touch then ai=true ak.Text=
'...'wait(0.2)local an an=h.InputBegan:Connect(function(ao)local ap if ao.
UserInputType==Enum.UserInputType.Keyboard then ap=ao.KeyCode.Name elseif ao.
UserInputType==Enum.UserInputType.MouseButton1 then ap='MouseLeft'elseif ao.
UserInputType==Enum.UserInputType.MouseButton2 then ap='MouseRight'end local aq
aq=h.InputEnded:Connect(function(ar)if ar.KeyCode.Name==ap or ap=='MouseLeft'and
ar.UserInputType==Enum.UserInputType.MouseButton1 or ap=='MouseRight'and ar.
UserInputType==Enum.UserInputType.MouseButton2 then ai=false ak.Text=ap ah.Value
=ap n:SafeCallback(ah.ChangedCallback,ar.KeyCode or ar.UserInputType)n:
SafeCallback(ah.Changed,ar.KeyCode or ar.UserInputType)an:Disconnect()aq:
Disconnect()end end)end)end end)B.AddSignal(h.InputBegan,function(am)if not ai
and not h:GetFocusedTextBox()then if ah.Mode=='Toggle'then local an=ah.Value if
an=='MouseLeft'or an=='MouseRight'then if an=='MouseLeft'and am.UserInputType==
Enum.UserInputType.MouseButton1 or an=='MouseRight'and am.UserInputType==Enum.
UserInputType.MouseButton2 then ah.Toggled=not ah.Toggled ah:DoClick()end elseif
am.UserInputType==Enum.UserInputType.Keyboard then if am.KeyCode.Name==an then
ah.Toggled=not ah.Toggled ah:DoClick()end end end end end)n.Options[af]=ah
return ah end return ad end)()ab.Colorpicker=(function()local ad={}ad.__index=ad
ad.__type='Colorpicker'function ad.New(ae,af,ag)assert(ag.Title,
'Colorpicker - Missing Title')assert(ag.Default,
'AddColorPicker: Missing default value.')local ah={Value=ag.Default,Transparency
=ag.Transparency or 0,Type='Colorpicker',Title=type(ag.Title)=='string'and ag.
Title or'Colorpicker',Callback=ag.Callback or function(ah)end}function ah.
SetHSVFromRGB(ai,aj)local ak,al,am=Color3.toHSV(aj)ah.Hue=ak ah.Sat=al ah.Vib=am
end ah:SetHSVFromRGB(ah.Value)local ai=K.Element(ag.Title,ag.Description,ae.
Container,true)ah.SetTitle=ai.SetTitle ah.SetDesc=ai.SetDesc ah.Visible=ai.
Visible ah.Elements=ai local aj=C('Frame',{Size=UDim2.fromScale(1,1),
BackgroundColor3=ah.Value,Parent=ai.Frame},{C('UICorner',{CornerRadius=UDim.new(
0,4)})})C('ImageLabel',{Size=UDim2.fromOffset(26,26),Position=UDim2.new(1,-10,
0.5,0),AnchorPoint=Vector2.new(1,0.5),Parent=ai.Frame,Image=
'http://www.roblox.com/asset/?id=14204231522',ImageTransparency=0.45,ScaleType=
Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(40,40)},{C('UICorner',{
CornerRadius=UDim.new(0,4)}),aj})local function CreateColorDialog()local ak=K.
Dialog:Create()ak.Title.Text=ah.Title ak.Root.Size=UDim2.fromOffset(430,330)
local al,am,an,ao=ah.Hue,ah.Sat,ah.Vib,ah.Transparency local function 
CreateInput()local ap=K.Textbox()ap.Frame.Parent=ak.Root ap.Frame.Size=UDim2.
new(0,90,0,32)return ap end local function CreateInputLabel(ap,aq)return C(
'TextLabel',{FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.
FontWeight.Medium,Enum.FontStyle.Normal),Text=ap,TextColor3=Color3.fromRGB(240,
240,240),TextSize=13,TextXAlignment=Enum.TextXAlignment.Left,Size=UDim2.new(1,0,
0,32),Position=aq,BackgroundTransparency=1,Parent=ak.Root,ThemeTag={TextColor3=
'Text'}})end local function GetRGB()local ap=Color3.fromHSV(al,am,an)return{R=
math.floor(ap.r*255),G=math.floor(ap.g*255),B=math.floor(ap.b*255)}end local ap=
C('ImageLabel',{Size=UDim2.new(0,18,0,18),ScaleType=Enum.ScaleType.Fit,
AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,Image=
'http://www.roblox.com/asset/?id=4805639000'})local aq,ar=C('ImageLabel',{Size=
UDim2.fromOffset(180,160),Position=UDim2.fromOffset(20,55),Image=
'rbxassetid://4155801252',BackgroundColor3=ah.Value,BackgroundTransparency=0,
Parent=ak.Root},{C('UICorner',{CornerRadius=UDim.new(0,4)}),ap}),C('Frame',{
BackgroundColor3=ah.Value,Size=UDim2.fromScale(1,1),BackgroundTransparency=ah.
Transparency},{C('UICorner',{CornerRadius=UDim.new(0,4)})})C('ImageLabel',{Image
='http://www.roblox.com/asset/?id=14204231522',ImageTransparency=0.45,ScaleType=
Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(40,40),BackgroundTransparency=1,
Position=UDim2.fromOffset(112,220),Size=UDim2.fromOffset(88,24),Parent=ak.Root},
{C('UICorner',{CornerRadius=UDim.new(0,4)}),C('UIStroke',{Thickness=2,
Transparency=0.75}),ar})local as=C('Frame',{BackgroundColor3=ah.Value,Size=UDim2
.fromScale(1,1),BackgroundTransparency=0},{C('UICorner',{CornerRadius=UDim.new(0
,4)})})C('ImageLabel',{Image='http://www.roblox.com/asset/?id=14204231522',
ImageTransparency=0.45,ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(
40,40),BackgroundTransparency=1,Position=UDim2.fromOffset(20,220),Size=UDim2.
fromOffset(88,24),Parent=ak.Root},{C('UICorner',{CornerRadius=UDim.new(0,4)}),C(
'UIStroke',{Thickness=2,Transparency=0.75}),as})local at={}for au=0,1,0.1 do
table.insert(at,ColorSequenceKeypoint.new(au,Color3.fromHSV(au,1,1)))end local
au,av=C('UIGradient',{Color=ColorSequence.new(at),Rotation=90}),C('Frame',{Size=
UDim2.new(1,0,1,-10),Position=UDim2.fromOffset(0,5),BackgroundTransparency=1})
local aw,ax,ay=C('ImageLabel',{Size=UDim2.fromOffset(14,14),Image=
'http://www.roblox.com/asset/?id=12266946128',Parent=av,ThemeTag={ImageColor3=
'DialogInput'}}),C('Frame',{Size=UDim2.fromOffset(12,190),Position=UDim2.
fromOffset(210,55),Parent=ak.Root},{C('UICorner',{CornerRadius=UDim.new(1,0)}),
au,av}),CreateInput()ay.Frame.Position=UDim2.fromOffset(ag.Transparency and 260
or 240,55)CreateInputLabel('Hex',UDim2.fromOffset(ag.Transparency and 360 or 340
,55))local az=CreateInput()az.Frame.Position=UDim2.fromOffset(ag.Transparency
and 260 or 240,95)CreateInputLabel('Red',UDim2.fromOffset(ag.Transparency and
360 or 340,95))local aA=CreateInput()aA.Frame.Position=UDim2.fromOffset(ag.
Transparency and 260 or 240,135)CreateInputLabel('Green',UDim2.fromOffset(ag.
Transparency and 360 or 340,135))local aB=CreateInput()aB.Frame.Position=UDim2.
fromOffset(ag.Transparency and 260 or 240,175)CreateInputLabel('Blue',UDim2.
fromOffset(ag.Transparency and 360 or 340,175))local aC if ag.Transparency then
aC=CreateInput()aC.Frame.Position=UDim2.fromOffset(260,215)CreateInputLabel(
'Alpha',UDim2.fromOffset(360,215))end local aD,aE,aF if ag.Transparency then
local aG=C('Frame',{Size=UDim2.new(1,0,1,-10),Position=UDim2.fromOffset(0,5),
BackgroundTransparency=1})aE=C('ImageLabel',{Size=UDim2.fromOffset(14,14),Image=
'http://www.roblox.com/asset/?id=12266946128',Parent=aG,ThemeTag={ImageColor3=
'DialogInput'}})aF=C('Frame',{Size=UDim2.fromScale(1,1)},{C('UIGradient',{
Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,0),
NumberSequenceKeypoint.new(1,1)},Rotation=270}),C('UICorner',{CornerRadius=UDim.
new(1,0)})})aD=C('Frame',{Size=UDim2.fromOffset(12,190),Position=UDim2.
fromOffset(230,55),Parent=ak.Root,BackgroundTransparency=1},{C('UICorner',{
CornerRadius=UDim.new(1,0)}),C('ImageLabel',{Image=
'http://www.roblox.com/asset/?id=14204231522',ImageTransparency=0.45,ScaleType=
Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(40,40),BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),Parent=ak.Root},{C('UICorner',{CornerRadius=UDim.new(1
,0)})}),aF,aG})end local function Display()aq.BackgroundColor3=Color3.fromHSV(al
,1,1)aw.Position=UDim2.new(0,-1,al,-6)ap.Position=UDim2.new(am,0,1-an,0)as.
BackgroundColor3=Color3.fromHSV(al,am,an)ay.Input.Text='#'..Color3.fromHSV(al,am
,an):ToHex()az.Input.Text=GetRGB().R aA.Input.Text=GetRGB().G aB.Input.Text=
GetRGB().B if ag.Transparency then aF.BackgroundColor3=Color3.fromHSV(al,am,an)
as.BackgroundTransparency=ao aE.Position=UDim2.new(0,-1,1-ao,-6)aC.Input.Text=n:
Round((1-ao)*100,0)..'%'end end B.AddSignal(ay.Input.FocusLost,function(aG)if aG
then local aH,aI=pcall(Color3.fromHex,ay.Input.Text)if aH and typeof(aI)==
'Color3'then al,am,an=Color3.toHSV(aI)end end Display()end)B.AddSignal(az.Input.
FocusLost,function(aG)if aG then local aH=GetRGB()local aI,aJ=pcall(Color3.
fromRGB,az.Input.Text,aH.G,aH.B)if aI and typeof(aJ)=='Color3'then if tonumber(
az.Input.Text)<=255 then al,am,an=Color3.toHSV(aJ)end end end Display()end)B.
AddSignal(aA.Input.FocusLost,function(aG)if aG then local aH=GetRGB()local aI,aJ
=pcall(Color3.fromRGB,aH.R,aA.Input.Text,aH.B)if aI and typeof(aJ)=='Color3'then
if tonumber(aA.Input.Text)<=255 then al,am,an=Color3.toHSV(aJ)end end end
Display()end)B.AddSignal(aB.Input.FocusLost,function(aG)if aG then local aH=
GetRGB()local aI,aJ=pcall(Color3.fromRGB,aH.R,aH.G,aB.Input.Text)if aI and
typeof(aJ)=='Color3'then if tonumber(aB.Input.Text)<=255 then al,am,an=Color3.
toHSV(aJ)end end end Display()end)if ag.Transparency then B.AddSignal(aC.Input.
FocusLost,function(aG)if aG then pcall(function()local aH=tonumber(aC.Input.Text
)if aH>=0 and aH<=100 then ao=1-aH*0.01 end end)end Display()end)end B.
AddSignal(aq.InputBegan,function(aG)if aG.UserInputType==Enum.UserInputType.
MouseButton1 or aG.UserInputType==Enum.UserInputType.Touch then while h:
IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do local aH=aq.
AbsolutePosition.X local aI=aH+aq.AbsoluteSize.X local aJ,aK=math.clamp(e.X,aH,
aI),aq.AbsolutePosition.Y local aL=aK+aq.AbsoluteSize.Y local aM=math.clamp(e.Y,
aK,aL)am=(aJ-aH)/(aI-aH)an=1-((aM-aK)/(aL-aK))Display()k:Wait()end end end)B.
AddSignal(ax.InputBegan,function(aG)if aG.UserInputType==Enum.UserInputType.
MouseButton1 or aG.UserInputType==Enum.UserInputType.Touch then while h:
IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do local aH=ax.
AbsolutePosition.Y local aI=aH+ax.AbsoluteSize.Y local aJ=math.clamp(e.Y,aH,aI)
al=((aJ-aH)/(aI-aH))Display()k:Wait()end end end)if ag.Transparency then B.
AddSignal(aD.InputBegan,function(aG)if aG.UserInputType==Enum.UserInputType.
MouseButton1 or aG.UserInputType==Enum.UserInputType.Touch then while h:
IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do local aH=aD.
AbsolutePosition.Y local aI=aH+aD.AbsoluteSize.Y local aJ=math.clamp(e.Y,aH,aI)
ao=1-((aJ-aH)/(aI-aH))Display()k:Wait()end end end)end Display()ak:Button('Done'
,function()ah:SetValue({al,am,an},ao)end)ak:Button'Cancel'ak:Open()end function
ah.Display(ak)ah.Value=Color3.fromHSV(ah.Hue,ah.Sat,ah.Vib)aj.BackgroundColor3=
ah.Value aj.BackgroundTransparency=ah.Transparency ad.Library:SafeCallback(ah.
Callback,ah.Value)ad.Library:SafeCallback(ah.Changed,ah.Value)end function ah.
SetValue(ak,al,am)local an=Color3.fromHSV(al[1],al[2],al[3])ah.Transparency=am
or 0 ah:SetHSVFromRGB(an)ah:Display()end function ah.SetValueRGB(ak,al,am)ah.
Transparency=am or 0 ah:SetHSVFromRGB(al)ah:Display()end function ah.OnChanged(
ak,al)ah.Changed=al al(ah.Value)end function ah.Destroy(ak)ai:Destroy()n.Options
[af]=nil end B.AddSignal(ai.Frame.MouseButton1Click,function()CreateColorDialog(
)end)B.AddSignal(ai.Frame.InputBegan,function(ak)if ak.UserInputType==Enum.
UserInputType.Touch then CreateColorDialog()end end)ah:Display()n.Options[af]=ah
return ah end return ad end)()ab.Input=(function()local ad={}ad.__index=ad ad.
__type='Input'function ad.New(ae,af,ag)assert(ag.Title,'Input - Missing Title')
ag.Callback=ag.Callback or function()end local ah,ai={Value=ag.Default or'',
Numeric=ag.Numeric or false,Finished=ag.Finished or false,Callback=ag.Callback
or function(ah)end,Type='Input'},K.Element(ag.Title,ag.Description,ae.Container,
false)ah.SetTitle=ai.SetTitle ah.SetDesc=ai.SetDesc ah.Visible=ai.Visible ah.
Elements=ai local aj=K.Textbox(ai.Frame,true)aj.Frame.Position=UDim2.new(1,-10,
0.5,0)aj.Frame.AnchorPoint=Vector2.new(1,0.5)aj.Frame.Size=UDim2.fromOffset(160,
30)aj.Input.Text=ag.Default or''aj.Input.PlaceholderText=ag.Placeholder or''
local ak=aj.Input function ah.SetValue(al,am)if ag.MaxLength and#am>ag.MaxLength
then am=am:sub(1,ag.MaxLength)end if ah.Numeric then if(not tonumber(am))and am:
len()>0 then am=ah.Value end end ah.Value=am ak.Text=am n:SafeCallback(ah.
Callback,ah.Value)n:SafeCallback(ah.Changed,ah.Value)end if ah.Finished then ac(
ak.FocusLost,function(al)if not al then return end ah:SetValue(ak.Text)end)else
ac(ak:GetPropertyChangedSignal'Text',function()ah:SetValue(ak.Text)end)end
function ah.OnChanged(al,am)ah.Changed=am am(ah.Value)end function ah.Destroy(al
)ai:Destroy()n.Options[af]=nil end n.Options[af]=ah return ah end return ad end
)()ab.Priority=(function()local ad={}ad.__index=ad ad.__type='Priority'function
ad.New(ae,af,ag)ag=ag or{}assert(ag.Title,'Priority - Missing Title')local ah,ai
={Values={},Value={},Min=ag.Min or 0,Max=ag.Max or 99,Type='Priority',Callback=
ag.Callback or function()end},nil local function declaredIndex(aj)for ak,al in
ipairs(ah.Values)do if al==aj then return ak end end return math.huge end
function ah.GetOrder(aj)local ak={}for al,am in ipairs(ah.Values)do ak[#ak+1]=am
end table.sort(ak,function(al,am)local an,ao=ah.Value[al]or 0,ah.Value[am]or 0
if an==ao then return declaredIndex(al)<declaredIndex(am)end return an>ao end)
return ak end local function rerender(aj)local ak=ah:GetOrder()if ai then ai:
SetValues(ak)ai:Display()end if aj then n:SafeCallback(ah.Callback,ak)n:
SafeCallback(ah.Changed,ak)end return ak end local function commit(aj,ak)local
al=tonumber(ak)if not al then rerender(false)return end ah.Value[aj]=math.clamp(
math.floor(al),ah.Min,ah.Max)rerender(true)end ab.Dropdown.Container=ae.
Container ab.Dropdown.Type=ae.Type ab.Dropdown.ScrollFrame=ae.ScrollFrame ab.
Dropdown.Library=n ai=ab.Dropdown:New(af,{Title=ag.Title,Description=ag.
Description,Values={},Multi=false,AllowNull=true,Search=ag.Search,NoSelect=true,
FullWidth=(ag.FullWidth~=false),OnRowBuilt=function(aj)local ak=ah.Value[aj.
Value]or 0 aj.Label.Text=string.format('%d. %s',ak,aj.Value)aj.Label.Size=UDim2.
new(1,-85,1,0)aj.Label.TextTruncate=Enum.TextTruncate.AtEnd local al=K.Textbox(
aj.Button,true)al.Frame.Size=UDim2.fromOffset(58,24)al.Frame.AnchorPoint=Vector2
.new(1,0.5)al.Frame.Position=UDim2.new(1,-8,0.5,0)al.Frame.ZIndex=24 al.Input.
ZIndex=25 al.Input.TextXAlignment=Enum.TextXAlignment.Center al.Input.TextSize=
13 al.Input.Position=UDim2.fromOffset(0,0)al.Input.Text=tostring(ak)B.AddSignal(
al.Input.FocusLost,function()commit(aj.Value,al.Input.Text)end)end})ai.
OpenToRight=false function ai.Display(aj)if not ai.DisplayLabel then return end
local ak=ah:GetOrder()ai.DisplayLabel.Text=(#ak>0)and(ag.Title..': '..table.
concat(ak,' > '))or'--'end if ai.Inner then local aj=B.New('ImageButton',{Image=
n:GetIcon'copy'or'rbxassetid://10734898355',Size=UDim2.fromOffset(16,16),
AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,-30,0.5,0),
BackgroundTransparency=1,Parent=ai.Inner,ThemeTag={ImageColor3='SubText'}})if ai
.DisplayLabel then ai.DisplayLabel.Size=UDim2.new(1,-64,0.5,0)end B.AddSignal(aj
.MouseButton1Click,function()local ak=setclipboard or toclipboard or(syn and syn
.write_clipboard)if type(ak)=='function'and ai.DisplayLabel then pcall(ak,ai.
DisplayLabel.Text)end end)end ah.Dropdown=ai ah.Elements=ai.Elements ah.SetTitle
=ai.SetTitle ah.SetDesc=ai.SetDesc ah.Visible=ai.Visible function ah.Open(aj)ai:
Open()end function ah.Close(aj)ai:Close()end function ah.SetValues(aj,ak)ah.
Values={}for al,am in ipairs(ak or{})do ah.Values[#ah.Values+1]=tostring(am)end
local al=ah.Value ah.Value={}local am=#ah.Values for an,ao in ipairs(ah.Values)
do ah.Value[ao]=al[ao]or math.clamp(am-an+1,ah.Min,ah.Max)end rerender(false)end
function ah.SetValue(aj,ak)if type(ak)=='table'then for al,am in pairs(ak)do if
ah.Value[tostring(al)]~=nil and tonumber(am)then ah.Value[tostring(al)]=math.
clamp(math.floor(tonumber(am)),ah.Min,ah.Max)end end end rerender(true)end
function ah.OnChanged(aj,ak)ah.Changed=ak ak(ah:GetOrder())end function ah.
Destroy(aj)ai:Destroy()n.Options[af]=nil end ah:SetValues(ag.Values)n.Options[af
]=ah return ah end return ad end)()ab.Divider=(function()local ad={}ad.__index=
ad ad.__type='Divider'function ad.New(ae,af)af=af or{}local ag,ah=af.Thickness
or 1,{Type='Divider'}local ai=C('Frame',{Name='Divider',LayoutOrder=7,Size=UDim2
.new(1,0,0,ag+12),BackgroundTransparency=1,Parent=ae.Container},{C('Frame',{Name
='Line',AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,0,0.5,0),Size=UDim2.
new(1,0,0,ag),BorderSizePixel=0,ThemeTag={BackgroundColor3='TitleBarLine'}})})ah
.Instance=ai function ah.SetVisible(aj,ak)ai.Visible=ak end function ah.Destroy(
aj)ai:Destroy()end return ah end return ad end)()local ad=K.Notification ad:
Init(D)local ae,af=B.New,{['lucide-accessibility']='rbxassetid://10709751939',[
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
'lucide-dumbbell']='rbxassetid://18273453053'}do local ag=
[[https://raw.githubusercontent.com/hungquan99/Interface/refs/heads/main/lucideicons.lua]]
local ah,ai=pcall(function()return loadstring(game:HttpGet(ag))()end)if ah and
typeof(ai)=='table'then for aj,ak in next,ai do af[aj]=ak end end end function n
.GetIcon(ag,ah)if ah~=nil and af['lucide-'..ah]then return af['lucide-'..ah]end
return nil end local ag={}ag.__index=ag ag.__namecall=function(ah,ai,...)return
ag[ai](...)end for ah,ai in pairs(ab)do ag['Add'..ai.__type]=function(aj,ak,al)
ai.Container=aj.Container ai.Type=aj.Type ai.ScrollFrame=aj.ScrollFrame ai.
Library=n return ai:New(ak,al)end end n.Elements=ag if g:IsStudio()then
makefolder=function(...)return...end makefile=function(...)return...end isfile=
function(...)return...end isfolder=function(...)return...end readfile=function(
...)return...end writefile=function(...)return...end listfiles=function(...)
return{...}end end local ah={}do ah.Folder='FluentSettings'ah.Ignore={}ah.Parser
={Toggle={Save=function(ai,aj)return{type='Toggle',idx=ai,value=aj.Value}end,
Load=function(ai,aj)if ah.Options[ai]then ah.Options[ai]:SetValue(aj.value)end
end},Slider={Save=function(ai,aj)return{type='Slider',idx=ai,value=tostring(aj.
Value)}end,Load=function(ai,aj)if ah.Options[ai]then ah.Options[ai]:SetValue(aj.
value)end end},Dropdown={Save=function(ai,aj)return{type='Dropdown',idx=ai,value
=aj.Value,mutli=aj.Multi}end,Load=function(ai,aj)if ah.Options[ai]then ah.
Options[ai]:SetValue(aj.value)end end},Colorpicker={Save=function(ai,aj)return{
type='Colorpicker',idx=ai,value=aj.Value:ToHex(),transparency=aj.Transparency}
end,Load=function(ai,aj)if ah.Options[ai]then ah.Options[ai]:SetValueRGB(Color3.
fromHex(aj.value),aj.transparency)end end},Keybind={Save=function(ai,aj)return{
type='Keybind',idx=ai,mode=aj.Mode,key=aj.Value}end,Load=function(ai,aj)if ah.
Options[ai]then ah.Options[ai]:SetValue(aj.key,aj.mode)end end},Input={Save=
function(ai,aj)return{type='Input',idx=ai,text=aj.Value}end,Load=function(ai,aj)
if ah.Options[ai]and type(aj.text)=='string'then ah.Options[ai]:SetValue(aj.text
)end end}}function ah.SetIgnoreIndexes(ai,aj)for ak,al in next,aj do ai.Ignore[
al]=true end end function ah.SetFolder(ai,aj)ai.Folder=aj ai:BuildFolderTree()
end function ah.Save(ai,aj)if(not aj)then return false,
'no config file is selected'end local ak,al=ai.Folder..'/'..aj..'.json',{objects
={}}for am,an in next,ah.Options do if ai.Parser[an.Type]and not ai.Ignore[am]
then table.insert(al.objects,ai.Parser[an.Type].Save(am,an))end end local am,an=
pcall(f.JSONEncode,f,al)if not am then return false,'failed to encode data'end
writefile(ak,an)return true end if not g:IsStudio()then function ah.Load(ai,aj)
if(not aj)then return false,'no config file is selected'end local ak=ai.Folder..
'/'..aj..'.json'if not isfile(ak)then return false,'Create Config Save File'end
local al,am=pcall(f.JSONDecode,f,readfile(ak))if not al then return false,
'decode error'end for an,ao in next,am.objects do if ai.Parser[ao.type]and not
ai.Ignore[ao.idx]then task.spawn(function()ai.Parser[ao.type].Load(ao.idx,ao)end
)end end Fluent.SettingLoaded=true return true,am end end function ah.
IgnoreThemeSettings(ai)ai:SetIgnoreIndexes{'InterfaceTheme','AcrylicToggle',
'TransparentToggle','MenuKeybind'}end function ah.BuildFolderTree(ai)local aj={
ai.Folder,ai.Folder..'/'}for ak=1,#aj do local al=aj[ak]if not isfolder(al)then
makefolder(al)end end end function ah.RefreshConfigList(ai)local aj,ak=
listfiles(ai.Folder..'/'),{}for al=1,#aj do local am=aj[al]if am:sub(-5)==
'.json'then local an=am:find('.json',1,true)local ao,ap=an,am:sub(an,an)while ap
~='/'and ap~='\\'and ap~=''do an=an-1 ap=am:sub(an,an)end if ap=='/'or ap=='\\'
then local aq=am:sub(an+1,ao-1)if aq~='options'then table.insert(ak,aq)end end
end end return ak end function ah.SetLibrary(ai,aj)ai.Library=aj ai.Options=aj.
Options end if not g:IsStudio()then function ah.LoadAutoloadConfig(ai)if isfile(
ai.Folder..'/autoload.txt')then local aj=readfile(ai.Folder..'/autoload.txt')
local ak,al=ai:Load(aj)if not ak then return ai.Library:Notify{Title='Interface'
,Content='Config loader',SubContent='Failed to load autoload config: '..al,
Duration=7}end ai.Library:Notify{Title='Interface',Content='Config loader',
SubContent=string.format('Auto loaded config %q',aj),Duration=7}end end end
function ah.BuildConfigSection(ai,aj)assert(ai.Library,
'Must set SaveManager.Library')local ak=aj:AddSection('Configuration','settings'
)ak:AddInput('SaveManager_ConfigName',{Title='Config name'})ak:AddDropdown(
'SaveManager_ConfigList',{Title='Config list',Values=ai:RefreshConfigList(),
AllowNull=true})ak:AddButton{Title='Create config',Callback=function()local al=
ah.Options.SaveManager_ConfigName.Value if al:gsub(' ','')==''then return ai.
Library:Notify{Title='Interface',Content='Config loader',SubContent=
'Invalid config name (empty)',Duration=7}end local am,an=ai:Save(al)if not am
then return ai.Library:Notify{Title='Interface',Content='Config loader',
SubContent='Failed to save config: '..an,Duration=7}end ai.Library:Notify{Title=
'Interface',Content='Config loader',SubContent=string.format('Created config %q'
,al),Duration=7}ah.Options.SaveManager_ConfigList:SetValues(ai:
RefreshConfigList())ah.Options.SaveManager_ConfigList:SetValue(nil)end}ak:
AddButton{Title='Load config',Callback=function()local al=ah.Options.
SaveManager_ConfigList.Value local am,an=ai:Load(al)if not am then return ai.
Library:Notify{Title='Interface',Content='Config loader',SubContent=
'Failed to load config: '..an,Duration=7}end ai.Library:Notify{Title='Interface'
,Content='Config loader',SubContent=string.format('Loaded config %q',al),
Duration=7}end}ak:AddButton{Title='Save config',Callback=function()local al=ah.
Options.SaveManager_ConfigList.Value local am,an=ai:Save(al)if not am then
return ai.Library:Notify{Title='Interface',Content='Config loader',SubContent=
'Failed to overwrite config: '..an,Duration=7}end ai.Library:Notify{Title=
'Interface',Content='Config loader',SubContent=string.format(
'Overwrote config %q',al),Duration=7}end}ak:AddButton{Title='Refresh list',
Callback=function()ah.Options.SaveManager_ConfigList:SetValues(ai:
RefreshConfigList())ah.Options.SaveManager_ConfigList:SetValue(nil)end}local al
al=ak:AddButton{Title='Set as autoload',Description=
'Current autoload config: none',Callback=function()local am=ah.Options.
SaveManager_ConfigList.Value writefile(ai.Folder..'/autoload.txt',am)al:SetDesc(
'Current autoload config: '..am)ai.Library:Notify{Title='Interface',Content=
'Config loader',SubContent=string.format('Set %q to auto load',am),Duration=7}
end}if isfile(ai.Folder..'/autoload.txt')then local am=readfile(ai.Folder..
'/autoload.txt')al:SetDesc('Current autoload config: '..am)end ah:
SetIgnoreIndexes{'SaveManager_ConfigList','SaveManager_ConfigName'}end if not g:
IsStudio()then ah:BuildFolderTree()end end local ai={}do ai.Folder=
'FluentSettings'ai.Settings={Acrylic=true,Transparency=true,MenuKeybind='M'}
function ai.SetTheme(aj,ak)ai.Settings.Theme=ak end function ai.SetFolder(aj,ak)
aj.Folder=ak aj:BuildFolderTree()end function ai.SetLibrary(aj,ak)aj.Library=ak
end function ai.BuildFolderTree(aj)local ak,al={},aj.Folder:split'/'for am=1,#al
do ak[#ak+1]=table.concat(al,'/',1,am)end table.insert(ak,aj.Folder)table.
insert(ak,aj.Folder..'/')for am=1,#ak do local an=ak[am]if not isfolder(an)then
makefolder(an)end end end function ai.SaveSettings(aj)writefile(aj.Folder..
'/options.json',f:JSONEncode(ai.Settings))end function ai.LoadSettings(aj)local
ak=aj.Folder..'/options.json'if isfile(ak)then local al=readfile(ak)if not g:
IsStudio()then pcall(f.JSONDecode,f,al)end if success then for am,an in next,
decoded do ai.Settings[am]=an end end end end function ai.BuildInterfaceSection(
aj,ak)assert(aj.Library,'Must set InterfaceManager.Library')local al,am=aj.
Library,ai.Settings ai:LoadSettings()local an=ak:AddSection('Interface',
'monitor')local ao=an:AddDropdown('InterfaceTheme',{Title='Theme',Description=
'Changes the interface theme.',Values=al.Themes,Default=aj.Library.Theme,
Callback=function(ao)al:SetTheme(ao)am.Theme=ao ai:SaveSettings()end})ao:
SetValue(am.Theme)if al.UseAcrylic and not i then an:AddToggle('AcrylicToggle',{
Title='Acrylic',Description='The blurred background requires graphic quality 8+'
,Default=am.Acrylic,Callback=function(ap)al:ToggleAcrylic(ap)am.Acrylic=ap ai:
SaveSettings()end})elseif i then am.Acrylic=false end an:AddSlider(
'WindowTransparency',{Title='Window Transparency',Description=
'Adjusts the window transparency.',Default=1,Min=0,Max=3,Rounding=1,Callback=
function(ap)al:SetWindowTransparency(ap)end})local ap=an:AddKeybind(
'MenuKeybind',{Title='Minimize Bind',Default=al.MinimizeKey.Name or am.
MenuKeybind})ap:OnChanged(function()am.MenuKeybind=ap.Value ai:SaveSettings()end
)al.MinimizeKeybind=ap end end function n.CreateWindow(aj,ak)assert(ak.Title,
'Window - Missing Title')if n.Window then print
'You cannot create more than one window.'return end n.MinimizeKey=ak.MinimizeKey
or Enum.KeyCode.LeftControl n.UseAcrylic=ak.Acrylic or false n.Acrylic=ak.
Acrylic or false n.Theme=ak.Theme or'Dark'if ak.Acrylic then J.init()end local
al=ak.Icon if not j then if n:GetIcon(al)then al=n:GetIcon(al)end if al==''or al
==nil then al=nil end end local am=K.Window{Parent=D,Size=ak.Size,Title=ak.Title
,Icon=al,SubTitle=ak.SubTitle,TabWidth=ak.TabWidth,Search=ak.Search,
UserInfoTitle=ak.UserInfoTitle,UserInfo=ak.UserInfo,UserInfoTop=ak.UserInfoTop,
UserInfoSubtitle=ak.UserInfoSubtitle,UserInfoSubtitleColor=ak.
UserInfoSubtitleColor,DropdownsOutsideWindow=ak.DropdownsOutsideWindow}n.Window=
am table.insert(n.Windows,am)ai:SetTheme(ak.Theme)n:SetTheme(ak.Theme)return am
end function n.CreateMinimizer(aj,ak)ak=ak or{}if aj.Minimizer and aj.Minimizer.
Parent then return aj.Minimizer end local al=game:GetService'CoreGui'local am=al
:FindFirstChild'SkullHubMinimizeUI'if am then am:Destroy()end local an=Instance.
new'ScreenGui'an.Name='SkullHubMinimizeUI'an.ResetOnSpawn=false an.
ZIndexBehavior=Enum.ZIndexBehavior.Sibling an.DisplayOrder=1000 an.Parent=al l(
an)local ao='rbxassetid://95183678717613'if type(ak.Icon)=='string'and ak.Icon~=
''then pcall(function()local ap=n:GetIcon(ak.Icon)if ap then ao=ap elseif string
.match(ak.Icon,'^rbxassetid://%d+$')then ao=ak.Icon end end)end local ap=
Instance.new'ImageButton'ap.Name='MinimizeButton'ap.Parent=an ap.Size=ak.Size or
(i and UDim2.new(0,60,0,60)or UDim2.new(0,50,0,50))ap.Position=ak.Position or
UDim2.new(1,-70,1,-85)ap.BackgroundTransparency=(typeof(ak.Transparency)==
'number')and math.clamp(ak.Transparency,0,1)or 0.3 ap.BorderSizePixel=0 ap.
ClipsDescendants=true ap.Image=ao ap.ScaleType=Enum.ScaleType.Fit ap.Active=true
ap.ZIndex=1000 ap.Visible=(ak.Visible~=false)Instance.new('UICorner',ap).
CornerRadius=UDim.new(1,0)local aq=Instance.new'UIStroke'aq.ApplyStrokeMode=Enum
.ApplyStrokeMode.Border aq.Transparency=0.5 aq.Parent=ap B.AddThemeObject(ap,{
BackgroundColor3='Dialog'})B.AddThemeObject(aq,{Color='DialogBorder'})local ar,
as,at=TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),ap.Size,
{dragging=false,isDragging=false,dragStart=Vector2.zero,startPos=Vector2.zero,
threshold=10}B.AddSignal(ap.MouseButton1Click,function()if at.isDragging then
return end b:Create(ap,ar,{BackgroundTransparency=math.min(ap.
BackgroundTransparency+0.2,1),Size=as-UDim2.fromOffset(5,5),Rotation=5}):Play()
task.wait(0.1)b:Create(ap,ar,{BackgroundTransparency=(typeof(ak.Transparency)==
'number')and math.clamp(ak.Transparency,0,1)or 0.3,Size=as,Rotation=0}):Play()if
n.Window then n.Window:Minimize()end end)B.AddSignal(ap.MouseEnter,function()b:
Create(ap,ar,{Size=as+UDim2.fromOffset(5,5)}):Play()end)B.AddSignal(ap.
MouseLeave,function()b:Create(ap,ar,{Size=as}):Play()end)local function 
LocalButtonPosition()return ap.AbsolutePosition-an.AbsolutePosition end B.
AddSignal(ap.InputBegan,function(au)if au.UserInputType==Enum.UserInputType.
MouseButton1 or au.UserInputType==Enum.UserInputType.Touch then at.isDragging=
false at.dragging=true at.dragStart=Vector2.new(au.Position.X,au.Position.Y)at.
startPos=LocalButtonPosition()local av av=au.Changed:Connect(function()if au.
UserInputState==Enum.UserInputState.End then at.dragging=false av:Disconnect()
end end)end end)B.AddSignal(h.InputChanged,function(au)if not at.dragging then
return end if au.UserInputType==Enum.UserInputType.MouseMovement or au.
UserInputType==Enum.UserInputType.Touch then local av=Vector2.new(au.Position.X,
au.Position.Y)-at.dragStart if av.Magnitude>at.threshold then at.isDragging=true
end local aw,ax,ay=at.startPos+av,GetScreenSize(),ap.AbsoluteSize ap.Position=
UDim2.new(0,math.clamp(aw.X,0,math.max(0,ax.X-ay.X)),0,math.clamp(aw.Y,0,math.
max(0,ax.Y-ay.Y)))end end)OnScreenSizeChanged(function()local au,av=
GetScreenSize(),ap.AbsoluteSize if av.X<1 or av.Y<1 then return end local aw=
LocalButtonPosition()local ax,ay=math.clamp(aw.X,0,math.max(0,au.X-av.X)),math.
clamp(aw.Y,0,math.max(0,au.Y-av.Y))if math.abs(ax-aw.X)<1 and math.abs(ay-aw.Y)<
1 then return end ap.Position=UDim2.fromOffset(ax,ay)end)aj.Minimizer=an aj.
MinimizerButton=ap aj.MinimizerButtonStroke=aq return an end function n.SetTheme
(aj,ak)if n.Window and table.find(n.Themes,ak)then n.Theme=ak B.UpdateTheme()if
ak=='Glass'then n:SetWindowTransparency(0.9)end end end function n.Destroy(aj)if
n.Window then n.Unloaded=true if n.UseAcrylic then n.Window.AcrylicPaint.Model:
Destroy()end B.Disconnect()n.GUI:Destroy()end if n.Minimizer then pcall(function
()if n.MinimizerButton then B.Registry[n.MinimizerButton]=nil end if n.
MinimizerButtonStroke then B.Registry[n.MinimizerButtonStroke]=nil end n.
Minimizer:Destroy()end)n.Minimizer=nil n.MinimizerButton=nil n.
MinimizerButtonStroke=nil end end function n.ToggleAcrylic(aj,ak)if n.Window
then if n.UseAcrylic then n.Acrylic=ak if n.Window.AcrylicPaint and n.Window.
AcrylicPaint.Model then n.Window.AcrylicPaint.Model.Transparency=ak and 0.95 or
1 end end end end function n.ToggleTransparency(aj,ak)if n.Window then n.Window.
AcrylicPaint.Frame.Background.BackgroundTransparency=ak and 0.35 or 0 end end
function n.SetWindowTransparency(aj,ak)if n.Window and n.UseAcrylic then ak=math
.clamp(ak,0,3)if n.Theme=='Glass'then local al=0.8+(ak*0.05)if ak>1 then al=0.85
+((ak-1)*0.04)end if ak>2 then al=0.93+((ak-2)*0.04)end n.Window.AcrylicPaint.
Model.Transparency=math.min(al,0.99)local am=0.7+(ak*0.08)if ak>1 then am=0.78+(
(ak-1)*0.07)end if ak>2 then am=0.85+((ak-2)*0.1)end n.Window.AcrylicPaint.Frame
.Background.BackgroundTransparency=math.min(am,0.99)n.NotificationTransparency=
ak for an,ao in pairs(n.ActiveNotifications or{})do if ao and ao.
ApplyTransparency then ao:ApplyTransparency()end end else n.Window.AcrylicPaint.
Model.Transparency=0.98 n.Window.AcrylicPaint.Frame.Background.
BackgroundTransparency=ak*0.3 end end end function n.Notify(aj,ak)return ad:New(
ak)end task.wait(0.01)return n,ah,ai,i
