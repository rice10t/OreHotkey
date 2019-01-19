#include IME.ahk

;無変換 + hjkl = ←↓↑→
vk1D & h:: SendKeyDown("Left")
vk1D & j:: SendKeyDown("Down")
vk1D & k:: SendKeyDown("Up")
vk1D & l:: SendKeyDown("Right")

;変換 + jk = Page Up/Down
vk1C & j:: SendKeyDown("PgDn")
vk1C & k:: SendKeyDown("PgUp")

;変換 + h = Home
vk1C & h:: SendKeyDown("Home")
;変換 + l = End
vk1C & l:: SendKeyDown("End")

;無変換 + n = Backspace
vk1D & n:: SendKeyDown("Backspace")

;無変換 + m = Delete
vk1D & m:: SendKeyDown("Delete")

;ctrl + [ = Escape
;SendKeyDownを使うとなぜかスタートメニューが表示されてしまうので使わない
;Send, {Blind}{Escape} が悪いっぽい
^[:: 
SetKeyDelay -1
Send, {Escape}
Return

;無変換 + Space = Enter
vk1D & Space:: SendKeyDown("Enter")

;Capslock無効
vkF0:: Return

;無変換でIMEオフ
vk1D:: IME_Set(0)

;変換でIMEオン
vk1C:: IME_Set(1)

;Windowsショートカットを無効化

;フィードバックHub
#f:: Return

;渡されたキーを入力する。Blindを付加しているので、修飾キー(ShiftやCtrl)と同時に押すことも可能。
;参考:http://ahkwiki.net/Remap
SendKeyDown(key)
{
	SetKeyDelay -1
	Send, {Blind}{%key%}
}
