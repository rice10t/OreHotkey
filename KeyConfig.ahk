#include IME.ahk 

;無変換 + hjkl = ←↓↑→

vk1Dsc07B & h:: SendKeyDown("Left")
vk1Dsc07B & j:: SendKeyDown("Down")
vk1Dsc07B & k:: SendKeyDown("Up")
vk1Dsc07B & l:: SendKeyDown("Right")

;変換 + jk = Page Up/Down
vk1Csc079 & j:: SendKeyDown("PgDn")
vk1Csc079 & k:: SendKeyDown("PgUp")

;無変換 + n = Backspace
vk1Dsc07B & n:: SendKeyDown("Backspace")

;無変換 + m = Delete
vk1Dsc07B & m:: SendKeyDown("Delete")

;無変換 + 変換 = Escape
vk1Dsc07B & vk1Csc079:: SendKeyDown("Escape")
vk1Csc079 & vk1Dsc07B:: SendKeyDown("Escape")

;無変換 + Space = Enter
vk1Dsc07B & Space:: SendKeyDown("Enter")

;Capslock無効
vkF0sc03A:: Return

;無変換でIMEオフ
vk1Dsc07B:: IME_Set(0)

;変換でIMEオン
vk1Csc079:: IME_Set(1)

;渡されたキーを入力する。Blindを付加しているので、修飾キー(ShiftやCtrl)と同時に押すことも可能。
;参考:http://ahkwiki.net/Remap
SendKeyDown(key)
{
	SetKeyDelay -1
	Send, {Blind}{%key%}
}

;TODO 数字キー、F1~F12もやる