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