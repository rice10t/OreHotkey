#include IME.ahk 

;無変換 + hjkl
vk1Dsc07B & h:: Send, {Left}
vk1Dsc07B & j:: Send, {Down}
vk1Dsc07B & k:: Send, {Up}
vk1Dsc07B & l:: Send, {Right}

;無変換 + m = Backspace
vk1Dsc07B & n:: Send, {BackSpace}

;無変換 + , = Delete
vk1Dsc07B & m:: Send, {Delete}

;無変換 + 変換 = Escape
vk1Dsc07B & vk1Csc079:: Send, {Escape}

;無変換 + Space = Enter
vk1Dsc07B & Space:: Send, {Enter}

;capslock無効
vkF0sc03A:: Return

;無変換でIMEオフ
vk1Dsc07B:: IME_Set(0)

;変換でIMEオン
vk1Csc079:: IME_Set(1)

;TODO 数字キー、F1~F12もやる