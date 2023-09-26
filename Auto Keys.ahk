#NoTrayIcon

; Run Windows Terminal

^!t::
Run wt
return

;-----------------------------------------------

; Run Windows Volme Mixer

^!m::
Run, SndVol.exe
return

;-----------------------------------------------

; Run pysample

^!s::
Run "C:\Programs\SamplerPy\data\sampler.py"
return

;-----------------------------------------------

; Center Window

Alt & c::
global windowName
global X
global Y
global begWidth
global begHeight
WinGetTitle, windowName, A
WinGetPos, X, Y, begWidth, begHeight, %windowName%
CenterWindow(windowTitleVariable)
{
WinGetPos,,, Width, Height, %windowTitleVariable%
WinMove, %windowTitleVariable%,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2 )-(Height/2)
}
CenterWindow(windowName)
return
RShift & b::
WinMove, %windowName%,, X, Y, begWidth, begHeight
return

;-----------------------------------------------

; Search Clipboard

#s::
{
 Sleep 10
 Run, https://www.ecosia.com/search?q=%clipboard%
 Return
}

;-----------------------------------------------
