;一番最初に呼び出されるファイル

[title name="たまよりひめ"]
;[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
;[call storage="tyrano.ks"]
[call storage="macro.ks"]

[WinHide]
[SetWin type=normal]
[hidemenubutton]

[layopt layer=0 visible=true]

;タイトル画面へ移動
;@jump storage="title.ks"

;デバッグ用
[iscript]
//localStorage.clear();
[endscript]

[jump storage="debug.ks"]
;[jump storage="com/prologue01.ks"]
;[jump storage="map/itiba.ks"]

[s]


