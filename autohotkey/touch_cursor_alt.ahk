; Right, Shift+Right, Control+Right, Shift+Control+Right
space & l::
    if((GetKeyState("Shift", "P") and (GetKeyState("Control", "P")))) {
        send, +^{right}
    } else if(GetKeyState("Shift", "P")) {
        send, +{right}
    } else if(GetKeyState("Control", "P")) {
        send, ^{right}
    } else {
        send, {right}
    }
Return

; Up, Shift+Up, Control+Up, Shift+Control+Up
space & k::
    if((GetKeyState("Shift", "P") and (GetKeyState("Control", "P")))) {
        send, +^{up}
    } else if(GetKeyState("Shift", "P")) {
        send, +{up}
    } else if(GetKeyState("Control", "P")) {
        send, ^{up}
    } else {
        send, {up}
    }
Return

; Down, Shift+Down, Control+Down, Shift+Control+Down
space & j::
    if((GetKeyState("Shift", "P") and (GetKeyState("Control", "P")))) {
        send, +^{down}
    } else if(GetKeyState("Shift", "P")) {
        send, +{down}
    } else if(GetKeyState("Control", "P")) {
        send, ^{down}
    } else {
        send, {down}
    }
Return

; Left, Shift+Left, Control+Left, Shift+Control+Left
space & h::
    if((GetKeyState("Shift", "P") and (GetKeyState("Control", "P")))) {
        send, +^{left}
    } else if(GetKeyState("Shift", "P")) {
        send, +{left}
    } else if(GetKeyState("Control", "P")) {
        send, ^{left}
    } else {
        send, {left}
    }
Return

; Home, Shift+Home, Control+Home, Shift+Control+Home
space & u::
    if((GetKeyState("Shift", "P") and (GetKeyState("Control", "P")))) {
        send, +^{home}
    } else if(GetKeyState("Shift", "P")) {
        send, +{home}
    } else if(GetKeyState("Control", "P")) {
        send, ^{home}
    } else {
        send, {home}
    }
Return

; End, Shift+End, Control+End, Shift+Control+End
space & o::
    if((GetKeyState("Shift", "P") and (GetKeyState("Control", "P")))) {
        send, +^{end}
    } else if(GetKeyState("Shift", "P")) {
        send, +{end}
    } else if(GetKeyState("Control", "P")) {
        send, ^{end}
    } else {
        send, {end}
    }
Return

; Backspace, Shift+Backspace
space & p::
    if(GetKeyState("Control", "P")) {
        send, ^{backspace}
    } else {
        send, {backspace}
    }
Return

; Simple modifiers
space & g::Send, {esc} 
space & m::send, {delete}

; Allow space bar to go through if pressed without holding
space::
Send, {space}
return
