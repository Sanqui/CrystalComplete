DiglettsCave_MapScriptHeader: ; 0x74000
	; trigger count
	db 0

	; callback count
	db 0
; 0x74002

PokefanMScript_0x74002: ; 0x74002
	jumptextfaceplayer UnknownText_0x74008
; 0x74005

MapDiglettsCaveSignpostItem0: ; 0x74005
	dw $00e4
	db MAX_REVIVE
	
; 0x74008

UnknownText_0x74008: ; 0x74008
	db $0, "A bunch of DIGLETT", $4f
	db "popped out of the", $51
	db "ground! That was", $4f
	db "shocking.", $57
; 0x74049

DiglettsCave_MapEventHeader: ; 0x74049
	; filler
	db 0, 0

	; warps
	db 6
	warp_def $21, $3, 10, GROUP_VERMILION_CITY, MAP_VERMILION_CITY
	warp_def $1f, $5, 5, GROUP_DIGLETTS_CAVE, MAP_DIGLETTS_CAVE
	warp_def $5, $f, 5, GROUP_ROUTE_2, MAP_ROUTE_2
	warp_def $3, $11, 6, GROUP_DIGLETTS_CAVE, MAP_DIGLETTS_CAVE
	warp_def $21, $11, 2, GROUP_DIGLETTS_CAVE, MAP_DIGLETTS_CAVE
	warp_def $3, $3, 4, GROUP_DIGLETTS_CAVE, MAP_DIGLETTS_CAVE

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 11, 6, $7, MapDiglettsCaveSignpostItem0

	; people-events
	db 1
	person_event SPRITE_POKEFAN_M, 35, 7, $6, $0, 255, 255, $0, 0, PokefanMScript_0x74002, $ffff
; 0x7407f

