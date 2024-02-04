#Requires AutoHotkey v2.0

; AutoHotkey v2 key mappings

; right windows key to Shift F10 or RMB
RWin::Send("+{F10}")

; right shift to backspace
*RShift::Send("{Backspace}")

; capslock to ctrl or esc
*CapsLock::
{
    Send "{LControl down}"
}

*CapsLock up::
{
    Send "{LControl Up}"

    if (A_PriorKey=="CapsLock"){
	if (A_TimeSincePriorHotkey < 1000)
		Suspend "1"
		Send "{Esc}"
		Suspend "0"
	}
}
