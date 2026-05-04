#Requires AutoHotkey v2.0

; AutoHotkey v2 key mappings

; right windows key to Shift F10 or RMB
RWin:: Send("+{F10}")

; Right Shift to Backspace with manual repeat logic
$RShift:: {
    ; Immediate first press
    Send("{Backspace}")

    ; Wait for the key's initial delay (standard is 500ms)
    ErrorLevel := !KeyWait("RShift", "T0.5")

    ; If still held, keep sending Backspace until released
    if (ErrorLevel) {
        while GetKeyState("RShift", "P") {
            Send("{Backspace}")
            Sleep 30 ; This controls the repeat speed 
        }
    }
}

; Standard Ctrl+RShift mapping
^RShift::Send("^{Backspace}")

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
