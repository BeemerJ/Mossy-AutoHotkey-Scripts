#SingleInstance Ignore
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Toggle Desktop Audio, requires Virtual Cable.
; "VoiceMeeter Output" must be Default Recording Device.
; "Microphone" and "Stereo Mix" should be heard by "VoiceMeeter Output".
; EXTRA: If the script is still not working, Set "VoiceMeeter Output (VB-Audio Virtual Cable)" as input device.

!D:: ; Ctrl+D to toggle script.

downStereo = 3

SplashTextOn, 300, 100, Running, `nPlease wait....
Run, mmsys.cpl
WinWait,Sound ; Wait for the 'Sound' window to open
If ErrorLevel {
 MsgBox, 48, Error, An error occurred while waiting for the window.
 Return
}
Send {Tab 3} ; Select Top Tabs.
Send {Right} ; Select "Recording" Tab.
Send {Tab} ; Move down to list.
Send {Down %downStereo%} ; Move Down to Stereo Mix, might need to change steps depending on your setup (The variable %downStereo%).
Send {Appskey} ; Bring up the context menu.
Send {Down} ; Highlight "Disable\Enable".
Send {Return} ; Toggle "Disable\Enable".
Sleep, 200 ; a delay (ms) for the process to finish processing, lower values are quicker but might break the script
SplashTextOff
MsgBox, Done ; = %State%
WinClose, Sound ; closes the 'Sound' window
SoundPlay, *-1	; plays a notification sound										
return				