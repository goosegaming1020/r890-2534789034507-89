local _0x8477 = game:GetService("Players")
local _0x7FA2 = game:GetService("UserInputService")
local _0x4EFB = game:GetService("TweenService")
local _0xF8A6 = game:GetService("GuiService")
local _0x655B = game:GetService("ContentProvider")
local _0x9679 = _0x8477.LocalPlayer
assert(_0x9679,"BlankMenu must run as a LocalScript on the client.")
local _0xB5F3 = _0x9679:WaitForChild("PlayerGui")
local _0x658F = {
Width = 780,
Height = 460,
SidebarWidth = 120,
HeaderHeight = 34,
CornerRadius = 8,
Border = Color3.fromRGB(40, 40, 40),
Divider = Color3.fromRGB(26, 26, 26),
SurfaceLight = Color3.fromRGB(15, 15, 15),
SurfaceDark = Color3.fromRGB(10, 10, 10),
Text = Color3.fromRGB(218, 218, 218),
Muted = Color3.fromRGB(146, 146, 146),
HoverText = Color3.fromRGB(188, 188, 188),
Icon = Color3.fromRGB(155, 155, 155),
IconHover = Color3.fromRGB(192, 192, 192),
IconActive = Color3.fromRGB(218, 218, 218),
Selection = Color3.fromRGB(25, 25, 25),
ToggleKey = Enum.KeyCode.RightShift,
EjectKey = Enum.KeyCode.Delete,
}local _0x960C ="rbxassetid://15530150329"local _0x15BA ="rbxassetid://15530150661"local _0x02EC = {
Home = {_0x960C, 792, 144},
Player = {_0x15BA, 252, 828},
_0x8477 = {_0x15BA, 144, 828},
Visuals = {_0x960C, 792, 396},
Animations = {_0x960C, 504, 504},
Console = {_0x960C, 324, 72},
Scripts = {_0x960C, 936, 504},
Settings = {_0x960C, 576, 288},
Shaders = {_0x15BA, 540, 216},
Server = {_0x960C, 0, 108},
_0x658F = {_0x15BA, 108, 288},
["Auto execute"] = {_0x960C, 360, 36},
Keybinds = {_0x15BA, 864, 0},
}
local _0xCC09 = {
MaterialA = _0x960C,
MaterialB = _0x15BA,
Hide ="rbxassetid://7734000129",
Close ="rbxassetid://7743878857",
}
local _0xA859 ="NoirBlankMenu"local _0x7DB8 = _0xB5F3:FindFirstChild(_0xA859)
if _0x7DB8 then
_0x7DB8:Destroy()
end
local _0xB657 = {"Black","White","Cyber","Crimson","Sakura","Toxic","Azure","Ember"}
local _0xDB83 = {
Black = { Base = {10,10,10}, Card = {16,16,16}, Hover = {25,25,25}, Track = {32,32,32},
Selection = {55,55,55}, Border = {43,43,43}, Text = {220,220,220}, Muted = {146,146,146}, Icon = {155,155,155},
Accent = {220,220,220}, OnAccent = {20,20,20}, AccentDim = {27,27,27} },
White = { Base = {249,249,248}, Card = {239,240,242}, Hover = {227,231,238}, Track = {216,221,229},
Selection = {191,202,221}, Border = {207,207,205}, Text = {28,31,37}, Muted = {87,93,104}, Icon = {90,98,111},
Accent = {31,88,211}, OnAccent = {250,252,255}, AccentDim = {221,232,253} },
Cyber = { Base = {8,15,20}, Card = {12,23,30}, Hover = {16,36,45}, Track = {24,44,53},
Selection = {30,61,72}, Border = {30,61,72}, Text = {229,245,248}, Muted = {137,166,177}, Icon = {157,189,200},
Accent = {76,224,240}, OnAccent = {6,24,29}, AccentDim = {15,48,57} },
Crimson = { Base = {19,9,13}, Card = {29,15,21}, Hover = {44,21,30}, Track = {57,29,38},
Selection = {77,32,46}, Border = {77,32,46}, Text = {248,231,235}, Muted = {176,146,156}, Icon = {196,163,174},
Accent = {248,88,108}, OnAccent = {31,6,13}, AccentDim = {61,21,33} },
Sakura = { Base = {22,15,25}, Card = {33,23,37}, Hover = {48,32,51}, Track = {60,42,64},
Selection = {77,48,74}, Border = {77,48,74}, Text = {248,237,247}, Muted = {176,153,177}, Icon = {200,176,197},
Accent = {244,157,208}, OnAccent = {34,12,28}, AccentDim = {62,37,58} },
Toxic = { Base = {13,17,11}, Card = {21,28,17}, Hover = {32,43,23}, Track = {43,56,32},
Selection = {58,74,37}, Border = {58,74,37}, Text = {235,244,225}, Muted = {151,171,131}, Icon = {178,198,152},
Accent = {182,236,83}, OnAccent = {18,27,7}, AccentDim = {40,57,22} },
Azure = { Base = {9,14,24}, Card = {15,23,38}, Hover = {24,35,56}, Track = {34,47,73},
Selection = {42,62,98}, Border = {42,62,98}, Text = {229,237,251}, Muted = {145,164,194}, Icon = {166,187,219},
Accent = {96,158,255}, OnAccent = {7,21,42}, AccentDim = {25,46,80} },
Ember = { Base = {22,13,10}, Card = {34,22,16}, Hover = {48,32,22}, Track = {62,43,29},
Selection = {82,51,31}, Border = {82,51,31}, Text = {251,239,226}, Muted = {184,159,137}, Icon = {205,181,156},
Accent = {255,163,91}, OnAccent = {37,18,5}, AccentDim = {64,37,20} },
}
for _, palette in pairs(_0xDB83) do
for key, rgb in pairs(palette) do palette[key] = Color3.fromRGB(rgb[1], rgb[2], rgb[3]) end
palette.Sidebar, palette.Header, palette.Profile = palette.Base, palette.Base, palette.Base
palette.Button, palette.Field, palette.Tooltip = palette.Hover, palette.Hover, palette.Hover
palette.Slider, palette.SliderTrack = palette.Accent, palette.Track
palette.Toggle, palette.ToggleOff, palette.KnobOff = palette.Accent, palette.Track, palette.Muted
palette.Effect, palette.Shadow = palette.Accent, Color3.new(0, 0, 0)
end
local _0x2CE5 = table.clone(_0xDB83.Black)
local _0xA770 = {}local _0x7438, _0xA0A8 = {}, {}
local _0xC8BD = {}
local function _0x8164(role)
assert(_0xDB83.Black[role],"Unknown menu color: ".. role)
_0xC8BD[role] = _0xC8BD[role] or { Role = role }
return _0xC8BD[role]
end
local function _0x267F(first, last)
return { Gradient = { first, last } }
end
local function _0x2E2E(_0xE747, property, source)
if _0xA0A8[_0xE747] then return source end
if type(source) =="table"and source.Role then
_0x7438[_0xE747] = _0x7438[_0xE747] or {}
_0x7438[_0xE747][property] = source
return _0x2CE5[source.Role]
elseif type(source) =="table"and source.Gradient then
_0x7438[_0xE747] = _0x7438[_0xE747] or {}
_0x7438[_0xE747][property] = source
return ColorSequence.new(_0x2CE5[source.Gradient[1]], _0x2CE5[source.Gradient[2]])
end
return source
end
local function _0x7182(className, properties, parent, static)
local _0xE747 = Instance.new(className)
_0xE747.Name = properties.Name or className
if static then _0xA0A8[_0xE747] = true end
for property, value in pairs(properties) do
_0xE747[property] = _0x2E2E(_0xE747, property, value)
end
if className =="ScrollingFrame"then _0xE747.ScrollBarThickness = 0 end
_0xE747.Parent = parent
return _0xE747
end
local function _0x076A(parent, radius)
return _0x7182("UICorner", { CornerRadius = UDim.new(0, radius) }, parent)
end
local function _0xB165(parent, name, _0x806E, position, size, _0x8164, textSize)
return _0x7182("TextLabel", {
Name = name,
Position = position,
Size = size,
BackgroundTransparency = 1,
BorderSizePixel = 0,
Font = Enum.Font.Gotham,
Text = _0x806E,
TextColor3 = _0x8164,
TextSize = textSize or 11,
TextStrokeTransparency = 1,
TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Center,
ZIndex = 6,
}, parent)
end
local function _0x11B7(keyCode)
if not keyCode then return"None"end
return (keyCode.Name:gsub("(%l)(%u)","%1 %2"))
end
local _0x424F = _0x7182("ScreenGui", {
Name = _0xA859,
IgnoreGuiInset = true,
ResetOnSpawn = false,
DisplayOrder = 10,
ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
}, nil)
local _0xD129 = { Destroyed = false, Visible = false, Motion = true, Background = true, ProfileVisible = true, MenuScale = 1, Palette ="Black", BackgroundStyle ="Plain", ActiveTab = nil }
local _0x22B9 = {}
local _0x7F35 = {}
local _0x1947 = {}
local _0x593B = {}
local _0xDF26 = {}
local _0x694D
local _0x9396
local _0x9677
local _0xF30E
local _0x2E11
local _0x4C97
local _0xEE61
local _0xFE3F
local function _0x4674(signal, callback)
local _0x4B99 = signal:Connect(callback)
table.insert(_0x22B9, _0x4B99)
return _0x4B99
end
local function _0x7B46(_0xE747)
local _0x635A = _0x7F35[_0xE747]
if _0x635A then
_0x7F35[_0xE747] = nil
_0x635A.Connection:Disconnect()
_0x635A.Tween:Cancel()
_0x635A.Tween:Destroy()
end
end
local function _0x8F95(_0xE747, goals, duration, instant, completed)
local _0x7DB8 = _0x7F35[_0xE747]
_0x7B46(_0xE747)
if _0xD129.Destroyed then
return
end
local _0xE878 = table.clone(goals)
if _0x7DB8 then
for property, value in pairs(_0x7DB8.Sources) do
if _0xE878[property] == nil then _0xE878[property] = value end
end
end
local _0xD8BE = {}
for property, value in pairs(_0xE878) do _0xD8BE[property] = _0x2E2E(_0xE747, property, value) end
goals = _0xD8BE
if instant or not _0xD129.Motion or _0xF8A6.ReducedMotionEnabled then
for property, value in pairs(goals) do
_0xE747[property] = value
end
if completed then
completed()
end
return
end
local _0x2F43 = _0x4EFB:Create(_0xE747,
TweenInfo.new(duration or 0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
goals)
local _0x635A = { Tween = _0x2F43, Goals = goals, Sources = _0xE878, Completed = completed }
_0x7F35[_0xE747] = _0x635A
_0x635A.Connection = _0x2F43.Completed:Connect(function(playbackState)
if _0x7F35[_0xE747] ~= _0x635A then
return
end
_0x7F35[_0xE747] = nil
_0x635A.Connection:Disconnect()
_0x2F43:Destroy()
if not _0xD129.Destroyed and playbackState == Enum.PlaybackState.Completed and completed then
completed()
end
end)
_0x2F43:Play()
end
local function _0x7A54()
local _0x5928 = {}
for _0xE747, _0x635A in pairs(_0x7F35) do
table.insert(_0x5928, { Object = _0xE747, Entry = _0x635A })
end
for _, item in ipairs(_0x5928) do
if _0x7F35[item.Object] == item.Entry then
_0x7B46(item.Object)
for property, value in pairs(item.Entry.Goals) do
item.Object[property] = value
end
if item.Entry.Completed then
item.Entry.Completed()
end
end
end
end
local function _0xF2DF(_0xE747)
local _0x830E = _0x7182("UIScale", { Scale = 1 }, _0xE747)
local _0x91FD, _0xC24E, _0xC552 = false, false, false
local function _0x8FDC()
_0x8F95(_0x830E, { Scale = _0xC552 and 0.98 or ((_0x91FD or _0xC24E) and 1.015 or 1) }, 0.18)
end
_0x4674(_0xE747.MouseEnter, function() _0x91FD = true; _0x8FDC() end)
_0x4674(_0xE747.MouseLeave, function() _0x91FD = false; _0x8FDC() end)
_0x4674(_0xE747.SelectionGained, function() _0xC24E = true; _0x8FDC() end)
_0x4674(_0xE747.SelectionLost, function() _0xC24E = false; _0x8FDC() end)
_0x4674(_0xE747.InputBegan, function(input)
if _0xD129.Visible and (input.UserInputType == Enum.UserInputType.MouseButton1
or input.UserInputType == Enum.UserInputType.Touch) then
_0xC552 = true
_0x8FDC()
end
end)
_0x4674(_0x7FA2.InputEnded, function()
if _0xC552 then _0xC552 = false; _0x8FDC() end
end)
_0x4674(_0x7FA2.WindowFocusReleased, function()
_0x91FD, _0xC552 = false, false
_0x8FDC()
end)
end
local _0x0E96 = _0x7182("Frame", {
Name ="Canvas",
Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1,
BorderSizePixel = 0,
}, _0x424F)
local _0x84A5 = _0x7182("Frame", {
Name ="Window",
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(_0x658F.Width, _0x658F.Height),
BackgroundTransparency = 1,
BorderSizePixel = 0,
}, _0x0E96)
local _0x4AD3 = _0x7182("UIScale", { Scale = 1 }, _0x84A5)
local _0x78C7 = _0x7182("Frame", {
Name ="Visual",
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1,
BorderSizePixel = 0,
}, _0x84A5)
local _0x4123 = _0x7182("UIScale", { Scale = 0.985 }, _0x78C7)
for spread = 16, 2, -2 do
local _0x1EBF = _0x7182("Frame", {
Name ="Shadow".. spread,
Position = UDim2.fromOffset(-spread, 4 - spread),
Size = UDim2.new(1, spread * 2, 1, spread * 2),
BackgroundColor3 = _0x8164("Shadow"),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ZIndex = 1,
}, _0x78C7)
_0x076A(_0x1EBF, _0x658F.CornerRadius + spread)
table.insert(_0xDF26, { Frame = _0x1EBF, Transparency = 0.955 + spread * 0.0015 })
end
local _0xB2E8 = _0x7182("Frame", {
Name ="Surface",
Size = UDim2.fromScale(1, 1),
BackgroundColor3 = _0x8164("Base"),
BorderSizePixel = 0,
Active = true,
ZIndex = 2,
}, _0x78C7)
_0x076A(_0xB2E8, _0x658F.CornerRadius)
local _0x794B = _0x7182("Frame", {
Name ="SurfaceFill",
Size = UDim2.fromScale(1, 1),
BackgroundColor3 = Color3.new(1, 1, 1),
BorderSizePixel = 0,
ZIndex = 1,
}, _0xB2E8)
_0x076A(_0x794B, _0x658F.CornerRadius)
local _0x0BB6 = _0x7182("UIGradient", {
Color = _0x267F("Card","Base"),
Rotation = 115,
}, _0x794B)
local _0xFDB1 = _0x7182("Frame", {
Name ="Particles",
Position = UDim2.fromOffset(12, 12),
Size = UDim2.new(1, -24, 1, -24),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ClipsDescendants = true,
ZIndex = 2,
}, _0xB2E8)
local _0x10C3 = {}
local _0xE5D1 = Random.new(4821)
for index = 1, 14 do
local _0x8988 = _0xE5D1:NextNumber(20, _0x658F.Width - 44)
local _0xAAEF = _0xE5D1:NextNumber(35, _0x658F.Height - 44)
local _0x7273 = _0x7182("Frame", {
Name ="Particle",
Position = UDim2.fromOffset(_0x8988, _0xAAEF),
Size = UDim2.fromOffset(8, 8),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ZIndex = 2,
}, _0xFDB1)
local _0xBE57 = _0x7182("Frame", {
Name ="Glow",
Size = UDim2.fromScale(1, 1),
BackgroundColor3 = _0x8164("Effect"),
BackgroundTransparency = 0.985,
BorderSizePixel = 0,
ZIndex = 2,
}, _0x7273)
_0x076A(_0xBE57, 4)
local _0x808A = _0x7182("Frame", {
Name ="Dot",
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(2, 2),
BackgroundColor3 = _0x8164("Effect"),
BackgroundTransparency = _0xE5D1:NextNumber(0.76, 0.9),
BorderSizePixel = 0,
ZIndex = 3,
}, _0x7273)
_0x076A(_0x808A, 1)
local _0xA81F = _0x4EFB:Create(_0x7273,
TweenInfo.new(_0xE5D1:NextNumber(8, 15), Enum.EasingStyle.Sine,
Enum.EasingDirection.InOut, -1, true), {
Position = UDim2.fromOffset(_0x8988 + _0xE5D1:NextNumber(-14, 14), _0xAAEF - _0xE5D1:NextNumber(12, 25)),
})
table.insert(_0x10C3, { Tween = _0xA81F, Style ="Particles"})
end
local function _0xFCF0()
local function _0xDF81(name)
return _0x7182("Frame", {
Name = name, Position = UDim2.fromOffset(12, 12),
Size = UDim2.new(1, -24, 1, -24), BackgroundTransparency = 1,
BorderSizePixel = 0, ClipsDescendants = true, Visible = false, ZIndex = 2,
}, _0xB2E8)
end
local _0xBE57 = _0xDF81("Glow")
local _0xA81F = _0x7182("Frame", {
Name ="GlowPosition", Position = UDim2.fromScale(0.65, 0.75),
Size = UDim2.fromOffset(0, 0), BackgroundTransparency = 1,
BorderSizePixel = 0, ZIndex = 2,
}, _0xBE57)
for ring = 14, 1, -1 do
local _0xBBF4 = _0x7182("Frame", {
Name ="AmbientGlow", AnchorPoint = Vector2.new(0.5, 0.5),
Size = UDim2.fromOffset(140 + ring * 20, 140 + ring * 20),
BackgroundColor3 = _0x8164("Effect"), BackgroundTransparency = 0.988,
BorderSizePixel = 0, ZIndex = 2,
}, _0xA81F)
_0x7182("UICorner", { CornerRadius = UDim.new(0.5, 0) }, _0xBBF4)
end
table.insert(_0x10C3, { Style ="Glow", Tween = _0x4EFB:Create(_0xA81F,
TweenInfo.new(18, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
Position = UDim2.fromScale(0.3, 0.55),
}) })
return _0xBE57
end
local _0x949F = _0xFCF0()
local function _0x3473()
local _0x22E8 = not _0xD129.Destroyed and _0xD129.Visible and _0xD129.Motion and _0xD129.Background
and not _0xF8A6.ReducedMotionEnabled
for _, layer in ipairs(_0x10C3) do
if _0x22E8 and layer.Style == _0xD129.BackgroundStyle then layer.Tween:Play() else layer.Tween:Pause() end
end
_0xFDB1.Visible = _0xD129.Background and _0xD129.BackgroundStyle =="Particles"_0x949F.Visible = _0xD129.Background and _0xD129.BackgroundStyle =="Glow"end
local _0x271F = _0x7182("Frame", {
Name ="Sidebar",
Size = UDim2.new(0, _0x658F.SidebarWidth, 1, 0),
BackgroundColor3 = _0x8164("Sidebar"),
BackgroundTransparency = 0,
BorderSizePixel = 0,
ZIndex = 3,
}, _0xB2E8)
_0x076A(_0x271F, _0x658F.CornerRadius)
local _0x2D23 = _0xB165(_0x271F,"Wordmark","noir", UDim2.fromOffset(16, 0),
UDim2.new(1, -32, 0, _0x658F.HeaderHeight), _0x8164("Text"), 13)
_0x2D23.Font = Enum.Font.GothamBold
_0x2D23.TextTransparency = 0.04
_0xF2DF(_0x2D23)
local _0x3AF3 = _0x7182("Frame", {
Name ="Header",
Position = UDim2.fromOffset(_0x658F.SidebarWidth + 1, 0),
Size = UDim2.new(1, -_0x658F.SidebarWidth - 1, 0, _0x658F.HeaderHeight),
BackgroundColor3 = _0x8164("Header"),
BackgroundTransparency = 0,
BorderSizePixel = 0,
ZIndex = 3,
}, _0xB2E8)
_0x076A(_0x3AF3, _0x658F.CornerRadius)
local _0xF751 = _0x7182("Frame", {
Name ="DragArea",
Size = UDim2.new(1, -70, 1, 0),
BackgroundTransparency = 1,
BorderSizePixel = 0,
Active = true,
ZIndex = 4,
}, _0x3AF3)
local _0x1974 = _0x7182("ImageLabel", {
Name ="SectionIcon",
AnchorPoint = Vector2.new(0, 0.5),
Position = UDim2.new(0, 14, 0.5, 0),
Size = UDim2.fromOffset(13, 13),
BackgroundTransparency = 1,
BorderSizePixel = 0,
Image = _0x02EC.Home[1],
ImageRectOffset = Vector2.new(_0x02EC.Home[2], _0x02EC.Home[3]),
ImageRectSize = Vector2.new(36, 36),
ImageColor3 = _0x8164("Muted"),
ImageTransparency = 0.12,
ScaleType = Enum.ScaleType.Fit,
ZIndex = 5,
}, _0xF751)
local _0xCB56 = _0xB165(_0xF751,"SectionName","Home", UDim2.fromOffset(35, 0),
UDim2.new(1, -45, 1, 0), _0x8164("Text"), 11)
local _0x4390 = _0x7182("Frame", {
Name ="Content",
Position = UDim2.fromOffset(_0x658F.SidebarWidth + 1, _0x658F.HeaderHeight + 1),
Size = UDim2.new(1, -_0x658F.SidebarWidth - 1, 1, -_0x658F.HeaderHeight - 1),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ClipsDescendants = true,
ZIndex = 3,
}, _0xB2E8)
local _0x0474 = _0x7182("ScrollingFrame", {
Name ="Navigation",
Position = UDim2.fromOffset(0, _0x658F.HeaderHeight),
Size = UDim2.new(1, 0, 1, -_0x658F.HeaderHeight - 58),
CanvasSize = UDim2.fromOffset(0, 0),
BackgroundTransparency = 1,
BorderSizePixel = 0,
ScrollBarThickness = 2,
ScrollBarImageColor3 = _0x8164("Muted"),
ScrollingDirection = Enum.ScrollingDirection.Y,
ZIndex = 4,
}, _0x271F)
local _0x0C0F = _0x7182("Frame", {
Name ="ActiveTab",
Position = UDim2.fromOffset(8, 10),
Size = UDim2.new(1, -16, 0, 30),
BackgroundColor3 = Color3.new(1, 1, 1),
BorderSizePixel = 0,
ZIndex = 4,
}, _0x0474)
_0x076A(_0x0C0F, 6)
_0x7182("UIGradient", {
Color = _0x267F("AccentDim","AccentDim"),
Rotation = 90,
}, _0x0C0F)
local _0x2190 = _0x7182("Frame", {
Name ="SelectorBar",
AnchorPoint = Vector2.new(0, 0.5),
Position = UDim2.new(0, 0, 0.5, 0),
Size = UDim2.fromOffset(3, 16),
BackgroundColor3 = _0x8164("Accent"),
BorderSizePixel = 0,
ZIndex = 5,
}, _0x0C0F)
_0x076A(_0x2190, 2)
local _0x4445 = _0xB165(_0x78C7,"Tooltip","", UDim2.new(1, -10, 0, 42),
UDim2.fromOffset(142, 26), _0x8164("Text"), 10)
_0x4445.AnchorPoint = Vector2.new(1, 0)
_0x4445.BackgroundColor3 = _0x2E2E(_0x4445,"BackgroundColor3", _0x8164("Tooltip"))
_0x4445.BackgroundTransparency = 0
_0x4445.TextXAlignment = Enum.TextXAlignment.Center
_0x4445.Visible = false
_0x4445.ZIndex = 20
_0x076A(_0x4445, 6)
local _0xF935 = _0x7182("Frame", {
Name ="ProfileShadow",
AnchorPoint = Vector2.new(1, 1),
Position = UDim2.new(1, -14, 1, -11),
Size = UDim2.fromOffset(150, 42),
BackgroundColor3 = _0x8164("Shadow"),
BackgroundTransparency = 0.92,
BorderSizePixel = 0,
ZIndex = 9,
}, _0x78C7)
_0x076A(_0xF935, 7)
local _0xE207 = _0x7182("Frame", {
Name ="Profile",
AnchorPoint = Vector2.new(1, 1),
Position = UDim2.new(1, -14, 1, -14),
Size = UDim2.fromOffset(150, 42),
BackgroundColor3 = _0x8164("Profile"),
BorderSizePixel = 0,
ZIndex = 10,
}, _0x78C7)
_0x076A(_0xE207, 6)
local _0xBAEB = _0x7182("ImageLabel", {
Name ="Avatar",
Position = UDim2.fromOffset(8, 8),
Size = UDim2.fromOffset(26, 26),
BackgroundColor3 = _0x8164("Field"),
BorderSizePixel = 0,
Image ="rbxthumb://type=AvatarHeadShot&id=".. _0x9679.UserId .."&w=150&h=150",
ScaleType = Enum.ScaleType.Crop,
ZIndex = 11,
}, _0xE207)
_0x076A(_0xBAEB, 6)
local _0x2E3F = _0xB165(_0xE207,"DisplayName", _0x9679.DisplayName,
UDim2.fromOffset(42, 7), UDim2.fromOffset(96, 14), _0x8164("Text"), 10)
_0x2E3F.Font = Enum.Font.GothamMedium
_0x2E3F.TextTruncate = Enum.TextTruncate.AtEnd
_0x2E3F.ZIndex = 12
local _0x86D6 = _0xB165(_0xE207,"Username","@".. _0x9679.Name,
UDim2.fromOffset(42, 22), UDim2.fromOffset(96, 12), _0x8164("Muted"), 9)
_0x86D6.TextTruncate = Enum.TextTruncate.AtEnd
_0x86D6.ZIndex = 12
_0xF2DF(_0xE207)
_0x4674(_0x9679:GetPropertyChangedSignal("DisplayName"), function()
_0x2E3F.Text = _0x9679.DisplayName
end)
local _0x2EB0 = {}
local function _0x9642(name, _0x9102, offset, hint, action)
local _0x5F8F = _0x7182("TextButton", {
Name = name,
AnchorPoint = Vector2.new(0, 0.5),
Position = UDim2.new(1, offset, 0.5, 0),
Size = UDim2.fromOffset(22, 22),
BackgroundColor3 = _0x8164("Button"),
BackgroundTransparency = 1,
BorderSizePixel = 0,
AutoButtonColor = false,
Text ="",
ZIndex = 6,
}, _0x3AF3)
_0x076A(_0x5F8F, 4)
_0xF2DF(_0x5F8F)
_0x5F8F.SelectionImageObject = _0x7182("Frame", {
Name ="Focus",
Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1,
BorderSizePixel = 0,
}, _0x5F8F)
local _0x2A89 = _0x7182("ImageLabel", {
Name ="Icon",
AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(13, 13),
BackgroundTransparency = 1,
BorderSizePixel = 0,
Image = _0x9102,
ImageColor3 = _0x8164("Muted"),
ImageTransparency = 0.1,
ScaleType = Enum.ScaleType.Fit,
ZIndex = 7,
}, _0x5F8F)
local _0x635A = { Button = _0x5F8F, Hovered = false, Focused = false }
table.insert(_0x2EB0, _0x635A)
local function _0x667A()
local _0x91FD = _0x635A.Hovered or _0x635A.Focused
_0x8F95(_0x5F8F, {
BackgroundTransparency = _0x91FD and 0.15 or 1,
}, 0.12)
_0x8F95(_0x2A89, {
ImageColor3 = _0x91FD and _0x8164("Text") or _0x8164("Muted"),
}, 0.12)
local _0xEBDA = type(hint) =="function"and hint() or hint
if _0x91FD and _0xD129.Visible then
_0x4445.Text = _0xEBDA
_0x4445.Visible = true
elseif _0x4445.Text == _0xEBDA then
_0x4445.Visible = false
end
end
_0x635A.Paint = _0x667A
_0x4674(_0x5F8F.MouseEnter, function() _0x635A.Hovered = true; _0x667A() end)
_0x4674(_0x5F8F.MouseLeave, function() _0x635A.Hovered = false; _0x667A() end)
_0x4674(_0x5F8F.SelectionGained, function() _0x635A.Focused = true; _0x667A() end)
_0x4674(_0x5F8F.SelectionLost, function() _0x635A.Focused = false; _0x667A() end)
_0x4674(_0x5F8F.Activated, function()
if _0xD129.Visible and not _0xD129.Destroyed then
action()
end
end)
return _0x5F8F
end
_0x9642("Hide", _0xCC09.Hide, -58, function() return"Hide  ·  ".. _0x11B7(_0x658F.ToggleKey) end, function()
_0xFE3F(false)
end)
_0x9642("Eject", _0xCC09.Close, -32, function() return"Eject  ·  ".. _0x11B7(_0x658F.EjectKey) end, function()
_0x424F:Destroy()
end)
local _0x3464 = _0x7182("BindableEvent", { Name ="TabChanged"}, _0x424F)
local _0xF368 = {"Home","Player","Console","Shaders","Server","Animations","Theme","Auto execute","Keybinds","Players","Visuals","Scripts","Settings"}
local _0x0C06 = {Player ="Character", Console ="Commands", Animations ="Anims"}
local _0xBA08 = {Character ="Player", Commands ="Console", Anims ="Animations"}
_0x0474.CanvasSize = UDim2.fromOffset(0, (#_0xF368 - 1) * 34 + 16)
local function _0xFF0C(_0x47F8, instant)
local _0x04AF = _0x47F8.Name == _0xD129.ActiveTab
local _0x91FD = _0x47F8.Hovered or _0x47F8.Focused
local _0x31AC = _0x04AF and _0x8164("Accent") or (_0x91FD and _0x8164("Text") or _0x8164("Muted"))
_0x8F95(_0x47F8.Button, {
BackgroundColor3 = _0x04AF and _0x8164("AccentDim") or _0x8164("Hover"),
BackgroundTransparency = _0x04AF and _0x47F8.Name =="Settings"and 0.08
or (not _0x04AF and _0x91FD and 0.5 or 1),
}, 0.12, instant)
_0x8F95(_0x47F8.Icon, {
ImageColor3 = _0x04AF and _0x8164("Accent") or (_0x91FD and _0x8164("Text") or _0x8164("Icon")),
ImageTransparency = 0,
}, 0.14, instant)
_0x8F95(_0x47F8.Label, {
TextColor3 = _0x31AC,
TextTransparency = 0,
}, 0.14, instant)
end
local function _0x43BB(name, instant)
name = _0xBA08[name] or name
if _0xD129.Destroyed or not _0x1947[name] then
return false
end
if _0xD129.ActiveTab == name then
return true
end
local _0x789D = _0xD129.ActiveTab
_0xD129.ActiveTab = name
_0x424F:SetAttribute("ActiveTab", name)
_0xCB56.Text = _0x0C06[name] or name
_0x1974.Image = _0x02EC[name][1]
_0x1974.ImageRectOffset = Vector2.new(_0x02EC[name][2], _0x02EC[name][3])
_0x0C0F.Visible = name ~="Settings"if name ~="Settings"then
_0x8F95(_0x0C0F, { Position = _0x1947[name].Button.Position }, 0.28, instant)
end
local _0xDB09 = _0x1947[name].Button.Position.Y.Offset
local _0x0ED5 = _0x0474.AbsoluteSize.Y
if _0x0ED5 > 0 and name ~="Settings"then
local _0x5E3C = _0x0474.CanvasPosition.Y
if _0xDB09 < _0x5E3C then _0x5E3C = _0xDB09 - 4
elseif _0xDB09 + 30 > _0x5E3C + _0x0ED5 then _0x5E3C = _0xDB09 + 34 - _0x0ED5 end
_0x8F95(_0x0474, { CanvasPosition = Vector2.new(0,
math.clamp(_0x5E3C, 0, math.max(0, _0x0474.CanvasSize.Y.Offset - _0x0ED5))) }, 0.2, instant)
end
for tabName, _0x47F8 in pairs(_0x1947) do
local _0x5F06 = _0x593B[tabName]
_0x7B46(_0x5F06)
_0x5F06.Visible = tabName == name
_0x5F06.GroupTransparency = 0
_0x5F06.Position = UDim2.fromOffset(0, 0)
_0xFF0C(_0x47F8, instant)
end
if _0x789D and not instant and _0xD129.Visible and _0xD129.Motion
and not _0xF8A6.ReducedMotionEnabled then
local _0x5F06 = _0x593B[name]
_0x5F06.Position = UDim2.fromOffset(6, 0)
_0x5F06.GroupTransparency = 1
_0x8F95(_0x5F06, { Position = UDim2.fromOffset(0, 0), GroupTransparency = 0 }, 0.26)
end
_0x3464:Fire(name, _0x789D)
return true
end
for index, name in ipairs(_0xF368) do
local _0x4289 = name =="Settings"local _0x5F8F = _0x7182("TextButton", {
Name = name .."Tab",
Position = _0x4289 and UDim2.new(0, 8, 1, -42)
or UDim2.fromOffset(8, 10 + (index - 1) * 34),
Size = UDim2.new(1, -16, 0, 30),
BackgroundColor3 = _0x8164("Hover"),
BackgroundTransparency = 1,
BorderSizePixel = 0,
AutoButtonColor = false,
Text ="",
SelectionOrder = index,
ZIndex = 5,
}, _0x4289 and _0x271F or _0x0474)
_0x076A(_0x5F8F, 4)
_0xF2DF(_0x5F8F)
_0x5F8F.SelectionImageObject = _0x7182("Frame", {
Name ="Focus",
Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1,
BorderSizePixel = 0,
}, _0x5F8F)
local _0x2A89 = _0x7182("ImageLabel", {
Name ="Icon",
Position = UDim2.fromOffset(10, 7),
Size = UDim2.fromOffset(16, 16),
BackgroundTransparency = 1,
BorderSizePixel = 0,
Image = _0x02EC[name][1],
ImageRectOffset = Vector2.new(_0x02EC[name][2], _0x02EC[name][3]),
ImageRectSize = Vector2.new(36, 36),
ImageColor3 = _0x8164("Icon"),
ImageTransparency = 0,
ScaleType = Enum.ScaleType.Fit,
ZIndex = 6,
}, _0x5F8F)
local _0x806E = _0xB165(_0x5F8F,"Label", _0x0C06[name] or name, UDim2.fromOffset(34, 0),
UDim2.new(1, -38, 1, 0), _0x8164("Muted"), 11)
_0x806E.TextTransparency = 0
local _0x5F06 = _0x7182("CanvasGroup", {
Name = name,
Size = UDim2.fromScale(1, 1),
BackgroundTransparency = 1,
BorderSizePixel = 0,
GroupTransparency = 0,
Visible = false,
ZIndex = 4,
}, _0x4390)
local _0x47F8 = {
Name = name, Button = _0x5F8F, Label = _0x806E, Icon = _0x2A89,
Hovered = false, Focused = false,
}
_0x1947[name] = _0x47F8
_0x593B[name] = _0x5F06
_0x4674(_0x5F8F.Activated, function()
if _0xD129.Visible then
_0x43BB(name)
end
end)
_0x4674(_0x5F8F.MouseEnter, function() _0x47F8.Hovered = true; _0xFF0C(_0x47F8) end)
_0x4674(_0x5F8F.MouseLeave, function() _0x47F8.Hovered = false; _0xFF0C(_0x47F8) end)
_0x4674(_0x5F8F.SelectionGained, function() _0x47F8.Focused = true; _0xFF0C(_0x47F8) end)
_0x4674(_0x5F8F.SelectionLost, function() _0x47F8.Focused = false; _0xFF0C(_0x47F8) end)
end
for index, name in ipairs(_0xF368) do
_0x1947[name].Button.NextSelectionUp = _0x1947[_0xF368[(index - 2) % #_0xF368 + 1]].Button
_0x1947[name].Button.NextSelectionDown = _0x1947[_0xF368[index % #_0xF368 + 1]].Button
end
local function _0x3380()
_0x4445.Visible = false
for _, _0x47F8 in pairs(_0x1947) do
_0x47F8.Hovered = false
_0xFF0C(_0x47F8, true)
end
for _, _0x635A in ipairs(_0x2EB0) do
_0x635A.Hovered = false
_0x635A.Paint()
end
end
local function _0x7EED(position)
local _0x5148 = _0x0E96.AbsoluteSize
local _0x424D = math.min(16, math.min(_0x5148.X, _0x5148.Y) * 0.1)
local _0xEEBB = Vector2.new(_0x658F.Width, _0x658F.Height) * (_0x4AD3.Scale / 2)
_0x694D = Vector2.new(
math.clamp(position.X, _0xEEBB.X + _0x424D, math.max(_0xEEBB.X + _0x424D, _0x5148.X - _0xEEBB.X - _0x424D)),
math.clamp(position.Y, _0xEEBB.Y + _0x424D, math.max(_0xEEBB.Y + _0x424D, _0x5148.Y - _0xEEBB.Y - _0x424D))
)
_0x84A5.Position = UDim2.fromOffset(_0x694D.X, _0x694D.Y)
end
_0xEE61 = function()
if _0xD129.Destroyed then
return
end
local _0x5148 = _0x0E96.AbsoluteSize
if _0x5148.X <= 0 or _0x5148.Y <= 0 then
return
end
_0x9396 = nil
local _0x424D = math.min(16, math.min(_0x5148.X, _0x5148.Y) * 0.1)
_0x4AD3.Scale = math.max(0.01, math.min(_0xD129.MenuScale,
(_0x5148.X - _0x424D * 2) / _0x658F.Width,
(_0x5148.Y - _0x424D * 2) / _0x658F.Height
))
_0x7EED(_0x694D or Vector2.new(_0x5148.X * 0.5, _0x5148.Y * 0.5))
end
_0xFE3F = function(visible, instant)
if _0xD129.Destroyed then
return
end
_0xD129.Visible = not not visible
_0x3473()
_0x424F:SetAttribute("MenuVisible", _0xD129.Visible)
_0x9396 = nil
if _0xD129.Visible then
_0x424F.Enabled = true
_0x84A5.Visible = true
_0xEE61()
else
local _0x04AF = _0xF8A6.SelectedObject
if _0x04AF and _0x04AF:IsDescendantOf(_0x424F) then
_0xF8A6.SelectedObject = nil
end
_0x3380()
end
_0x8F95(_0x4123, { Scale = _0xD129.Visible and 1 or 0.985 }, 0.18, instant, function()
if not _0xD129.Visible then
_0x84A5.Visible = false
_0x424F.Enabled = false
end
end)
for _, _0x1EBF in ipairs(_0xDF26) do
_0x8F95(_0x1EBF.Frame, {
BackgroundTransparency = _0xD129.Visible and _0x1EBF.Transparency or 1,
}, 0.16, instant)
end
end
_0x4674(_0x0E96:GetPropertyChangedSignal("AbsoluteSize"), _0xEE61)
_0x4674(_0xF8A6:GetPropertyChangedSignal("ReducedMotionEnabled"), function()
_0x3473()
if _0xF8A6.ReducedMotionEnabled then
_0x7A54()
end
end)
_0x4674(_0xF751.InputBegan, function(input)
if not _0xD129.Visible or _0x9396 or not _0x694D then
return
end
if input.UserInputType == Enum.UserInputType.MouseButton1
or input.UserInputType == Enum.UserInputType.Touch then
_0x4445.Visible = false
_0x9396 = input
_0x9677 = Vector2.new(input.Position.X, input.Position.Y)
_0xF30E = _0x694D
end
end)
_0x4674(_0x7FA2.InputChanged, function(input)
if not _0x9396 or not _0xD129.Visible then
return
end
local _0xE0A3 = _0x9396.UserInputType == Enum.UserInputType.MouseButton1
and input.UserInputType == Enum.UserInputType.MouseMovement
if input == _0x9396 or _0xE0A3 then
local _0x4984 = Vector2.new(input.Position.X, input.Position.Y)
_0x7EED(_0xF30E + _0x4984 - _0x9677)
end
end)
_0x4674(_0x7FA2.InputEnded, function(input)
if input == _0x9396 then
_0x9396 = nil
end
end)
_0x4674(_0x7FA2.WindowFocusReleased, function()
_0x9396 = nil
_0x3380()
end)
_0x4674(_0x7FA2.InputBegan, function(input, processed)
if _0xD129.Destroyed or processed or _0xD129.Capturing or input == _0xD129.IgnoreInput
or _0x7FA2:GetFocusedTextBox() then
return
end
if input.KeyCode == _0x658F.EjectKey then
_0x424F:Destroy()
elseif input.KeyCode == _0x658F.ToggleKey then
_0xFE3F(not _0xD129.Visible)
end
end)
_0x4674(_0x424F.Destroying, function()
_0xD129.Destroyed = true
_0xD129.Visible = false
for _, layer in ipairs(_0x10C3) do layer.Tween:Cancel(); layer.Tween:Destroy() end
_0x9396 = nil
local _0x04AF = _0xF8A6.SelectedObject
if _0x04AF and _0x04AF:IsDescendantOf(_0x424F) then
_0xF8A6.SelectedObject = nil
end
for _, _0x4B99 in ipairs(_0x22B9) do
_0x4B99:Disconnect()
end
table.clear(_0x22B9)
local _0x959F = {}
for _0xE747 in pairs(_0x7F35) do
table.insert(_0x959F, _0xE747)
end
for _, _0xE747 in ipairs(_0x959F) do
_0x7B46(_0xE747)
end
table.clear(_0x7438)
table.clear(_0xA0A8)
table.clear(_0xA770)
if _0x2E11 and coroutine.status(_0x2E11) ~="dead"then
pcall(task.cancel, _0x2E11)
end
_0x2E11 = nil
if _0x4C97 and coroutine.status(_0x4C97) ~="dead"then
pcall(task.cancel, _0x4C97)
end
_0x4C97 = nil
end)
_0x43BB("Home", true)
_0x424F.Parent = _0xB5F3
_0xEE61()
_0xFE3F(true)
_0x4C97 = task.spawn(function()
for attempt = 1, 3 do
if _0xD129.Destroyed then
return
end
local _0x95D6, _0x9102, _0xF1A5 = pcall(function()
return _0x8477:GetUserThumbnailAsync(_0x9679.UserId,
Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
end)
if _0xD129.Destroyed then
return
end
if _0x95D6 and _0xF1A5 and _0x9102 ~=""then
_0xBAEB.Image = _0x9102
break
end
if attempt < 3 then
task.wait(1)
end
end
_0x4C97 = nil
end)
_0x2E11 = task.spawn(function()
local _0xB7AC = {}
for _, imageId in pairs(_0xCC09) do
table.insert(_0xB7AC, imageId)
end
local _0xA5DE, _0x796D = pcall(function()
_0x655B:PreloadAsync(_0xB7AC)
end)
if not _0xA5DE and not _0xD129.Destroyed then
warn("Menu icons could not preload: ".. tostring(_0x796D))
end
_0x2E11 = nil
end)
return {
Gui = _0x424F,
Window = _0x84A5,
Sidebar = _0x271F,
Header = _0x3AF3,
Content = _0x4390,
Profile = _0xE207,
_0x658F = _0x658F,
Tabs = _0x1947,
Pages = _0x593B,
SelectTab = _0x43BB,
TabChanged = _0x3464.Event,
SetVisible = _0xFE3F,
IsVisible = function()
return _0xD129.Visible and not _0xD129.Destroyed
end,
GetActiveTab = function()
return _0xD129.ActiveTab
end,
Destroy = function()
if not _0xD129.Destroyed then
_0x424F:Destroy()
end
end,
}
