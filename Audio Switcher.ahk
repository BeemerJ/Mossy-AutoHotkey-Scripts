;Make sure that you have NirCmd (https://www.nirsoft.net/utils/nircmd.html) installed in your system directory...

Menu, Tray, Icon, Shell32.dll, 47

;Input the names of your devices here...

headphoneName := "Headphones"
speakerName := "Speakers"

^Volume_Down::
run, nircmd.exe setdefaultsounddevice %headphoneName%
TrayTip ,, Audio Device switched to:`n%headphoneName%,0,16
sleep 50
SoundPlay, *64
return

^Volume_Up::
run, nircmd.exe setdefaultsounddevice %speakerName%
TrayTip ,, Audio Device switched to:`n%speakerName%,0,16
sleep 50
SoundPlay, *64
return