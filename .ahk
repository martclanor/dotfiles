#Requires AutoHotkey v2.0

; AutoHotkey v2 key mappings

; right windows key to Shift F10 or RMB
RWin:: Send("+{F10}")

; right shift to backspace
RShift::Backspace
^RShift::^Backspace

; capslock to ctrl or esc
*CapsLock:: Send("{LControl down}")
*CapsLock up::
{
    Send "{LControl Up}"

    if (A_PriorKey == "CapsLock") {
        if (A_TimeSincePriorHotkey < 1000)
            Suspend "1"
        Send "{Esc}"
        Suspend "0"
    }
}

; taskbar quick access
; #1::#1 ; chrome
; #2::#2 ; vscode
; #3::#3 ; windows terminal
; #4 is a separator
#q::#5 ; teams
#w::#6 ; outlook
#e::#7 ; explorer

; other win shortcuts
; #a::#a ; quick settings
#s:: Send("^#v") ; sound output
;#d::#d ; show desktop
#f::#n ; notifications
#g::#w ; widgets
#z::#l ; lock
