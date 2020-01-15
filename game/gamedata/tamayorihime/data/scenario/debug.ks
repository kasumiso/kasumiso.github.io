[eval exp="f.debug_fl=false"]
;[glink text="newgame" target="*newgame" size=16 width="120" x=10 y=10]
[glink text="scene01" target="*scene01" size=16 width="120" x=10 y=60]
;[glink text="com01" target="*com01" size=16 width="120" x=10 y=110]
;[glink text="map" target="*map" size=16 width="120" x=10 y=160]


[s]

;-----------------
*newgame
[cm]
[jump storage=setname.ks]
;-----------------
*scene01
[cm]
[jump storage=scene01.ks]
;-----------------
*com01
[cm]
[eval exp="f.debug_fl=true"]
[jump storage=com01.ks]
;-----------------
*map
[cm]
[eval exp="f.debug_fl=true"]
[jump storage=map/mapset.ks]





