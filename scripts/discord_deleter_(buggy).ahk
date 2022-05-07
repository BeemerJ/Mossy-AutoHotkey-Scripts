; BUGGY, use Message Cleaner plugin for Powercord!

#SingleInstance Ignore

t::

Loop, 100000

{

send, {Up}

send, ^a

send, {BS}

send, {Enter}

send, {Enter}

sleep, 260

}


^t::Suspend ; Ctrl + T to end script.
