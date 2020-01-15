;--------------------------
;変数
;--------------------------
[iscript]
	f.love=1;//好感度
	f.namae="珠姫";
[endscript]

;--------------------------
;立ち絵
;--------------------------
[chara_new name="SOU0" storage="chara/sou_00.png"]
[chara_face name="SOU0" face="tuuzyo" storage="chara/sou_00.png"]
[chara_new name="SOB" storage="chara/sobo_00.png"]
[chara_face name="SOB" face="tuuzyo" storage="chara/sobo_00.png"]


;--------------------------
;名前表示
;--------------------------
[macro name=NS]
	[iscript]
		mp.ch=mp.ch.slice(1);
		if(mp.ch=="主人公")mp.ch=f.namae;
		//mp.ch="【"+mp.ch+"】";
	[endscript]
	[free layer=message0 name=ch]
	[ptext layer=message0 x=236 y=388 size=22 text=%ch name=ch]
[endmacro]
;--------------------------
;名前非表示
;--------------------------
[macro name=NH]
	[free layer=message0 name=ch]
[endmacro]
;--------------------------
;ウィンドウ指定
;--------------------------
[macro name=SetWin]
	[if exp="mp.type=='adv'"]
		[font color=white size=20]
		[position width=800 height=226 top=374 left=0 frame=system/window.png]
		[position marginl=260 marginr=20 margint=60 marginb=10]
	[else if exp="mp.type=='nvl'"]
	
	[endif]
[endmacro]
;--------------------------
;ウィンドウ表示
;--------------------------
[macro name=WinShow]
	[layopt layer="message" visible=true]
	;メニュボタン
	[locate x=480 y=570]
	[button graphic="system/win_skip.png" role=skip]
	[locate x=560 y=570]
	[button graphic="system/win_save.png" role=save]
	[locate x=640 y=570]
	[button graphic="system/win_load.png" role=load]
	[locate x=720 y=570]
	[button graphic="system/win_menu.png" role=menu]
[endmacro]

;--------------------------
;ウィンドウ非表示
;--------------------------
[macro name=WinHide]
	[layopt layer="message" visible=false]
[endmacro]

;--------------------------
;エフェクト
;--------------------------
[macro name=ef]
	[if exp="mp.type=='black'"]
		[image layer=0 name=ef folder=image x=0 y=0 storage=system/EFblack.jpg time=%time]
	[endif]
[endmacro]

;--------------------------
;CG表示
;--------------------------
[macro name=CG]
	[eval exp="mp.no='cg/CG'+mp.no+'.jpg'"]
	[image layer=0 name=cg folder=image x=0 y=0 storage=%no time=%time wait=true]
	;[wait time=800]
[endmacro]

;--------------------------
;エフェクト非表示
;--------------------------
[macro name=free_ef]
	[free layer=0 name=ef time=%time]
	;[wait time=800]
[endmacro]

;--------------------------
;時間経過
;--------------------------
[macro name=time]
………………。[p]
[endmacro]
