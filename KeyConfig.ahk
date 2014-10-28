#include IME.ahk 

;無変換 + hjkl = ←↓↑→

vk1Dsc07B & h:: SendKeyDown("Left")
vk1Dsc07B & j:: SendKeyDown("Down")
vk1Dsc07B & k:: SendKeyDown("Up")
vk1Dsc07B & l:: SendKeyDown("Right")

;無変換 + m = Backspace
vk1Dsc07B & n:: SendKeyDown("Backspace")

;無変換 + , = Delete
vk1Dsc07B & m:: SendKeyDown("Delete")

;無変換 + 変換 = Escape
vk1Dsc07B & vk1Csc079:: SendKeyDown("Escape")

;無変換 + Space = Enter
vk1Dsc07B & Space:: SendKeyDown("Enter")

;capslock無効
vkF0sc03A:: Return

;無変換でIMEオフ
vk1Dsc07B:: IME_Set(0)

;変換でIMEオン
vk1Csc079:: IME_Set(1)

;渡されたキーを入力する。Blindを付加しているので、修飾キー(ShiftやCtrl)と同時に押すことも可能。
SendKeyDown(key)
{
	Send, {Blind}{%key%}
}

;TODO 数字キー、F1~F12もやる