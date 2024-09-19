//Maya ASCII 2024 scene
//Name: WBRwindowTrim.ma
//Last modified: Wed, Sep 18, 2024 07:04:49 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "45B12536-4D84-99EA-C500-CB9B97514FA0";
createNode transform -s -n "persp";
	rename -uid "9536D788-45E4-9ECB-BECB-8EABE4ECE813";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.432795469307234 8.9074234117054445 14.099889061974721 ;
	setAttr ".r" -type "double3" -17.999999999987583 405.99999999962097 -1.1446470728266656e-15 ;
	setAttr ".rpt" -type "double3" -1.5765900713595126e-16 4.8524781129776291e-18 -8.6816400708497278e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1ECE49BE-43C0-4AD6-8BE8-348A06312B83";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 21.128020685822925;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.097500847823488224 2.9025004480221299 -0.097500216994769406 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "19332615-4B20-FCA8-57FB-E3903BFFE294";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4863CB46-4BBF-F493-F64D-C58D3BB17992";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "106505C2-4FCD-0946-E390-F29C3C0EA9F4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1B491C9B-4DB1-7A96-0463-9E9ADAA5CF02";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "718F3220-4E15-40FB-CFF5-6C9F950CFC4B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7B13069D-43EE-00B0-1893-E8BE434E6893";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Walls";
	rename -uid "088B0F21-44D8-D5E0-8D8C-74BC3732514B";
createNode transform -n "WhiteBoxRoom" -p "Walls";
	rename -uid "4AD00F59-4246-A45E-25DD-4AB0F48DEEE6";
	setAttr ".rp" -type "double3" 0 3 0 ;
	setAttr ".sp" -type "double3" 0 3 0 ;
createNode mesh -n "WhiteBoxRoomShape" -p "WhiteBoxRoom";
	rename -uid "A448A537-48F1-C18F-ABC2-73957CEAACF6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 3 "f[1]" "f[3]" "f[6:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.125 0 0.125 0.25 0.625 0.75 0.375 0.75 0.625
		 1 0.375 1 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.625 0.75 0.625 1 0.375 1 0.375
		 0 0.375 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -3 0 3 3 0 3 -3 6 3 -3 6 -3 -3 0 -3 3 0 -3
		 -3.19500017 6 -3.19500017 3 -0.19500017 -3.19500017 -3.19500017 -0.19500017 -3.19500017
		 3 -0.19500017 3 -3.19500017 -0.19500017 3 -3.19500017 6 3;
	setAttr -s 19 ".ed[0:18]"  0 1 0 4 5 0 0 2 0 2 3 0 3 4 0 4 0 0 5 1 0
		 3 6 0 5 7 0 8 7 0 6 8 0 1 9 0 7 9 0 0 10 0 10 9 0 8 10 0 2 11 0 10 11 0 11 6 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 9 12 -15 -16
		mu 0 4 2 16 17 18
		f 4 15 17 18 10
		mu 0 4 6 19 20 21
		f 4 5 0 -7 -2
		mu 0 4 9 11 10 8
		f 4 -5 -4 -3 -6
		mu 0 4 12 15 14 13
		f 4 6 11 -13 -9
		mu 0 4 3 5 17 16
		f 4 -1 13 14 -12
		mu 0 4 5 4 18 17
		f 4 2 16 -18 -14
		mu 0 4 0 1 20 19
		f 4 3 7 -19 -17
		mu 0 4 1 7 21 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "windowWall" -p "Walls";
	rename -uid "C119DBEA-49E7-2E29-5157-DCA3352EDEF4";
	setAttr ".t" -type "double3" 0.12697212204654251 1.1726042999697264 -3.4999999406763318 ;
	setAttr ".s" -type "double3" 2.0106645934269443 3.368108857944565 0.14682597133775141 ;
	setAttr ".rp" -type "double3" -0.4999998543635078 -0.5 0.4999999406763318 ;
	setAttr ".sp" -type "double3" -0.4999998543635078 -0.5 0.4999999406763318 ;
createNode mesh -n "windowWallShape" -p "windowWall";
	rename -uid "3C95E91D-44E3-7B2F-CCBE-CE9634D18838";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.3125 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "TileFloor";
	rename -uid "136A7591-4753-9DF4-3C0C-AF84BBBE855A";
createNode transform -n "TileGroup02" -p "TileFloor";
	rename -uid "260450C9-41EA-D634-E4FF-5D9954C2D231";
	setAttr ".rp" -type "double3" 3 0 3 ;
	setAttr ".sp" -type "double3" 3 0 3 ;
createNode transform -n "Tile01" -p "TileGroup02";
	rename -uid "5526A13D-4B8B-4A63-A2F3-929FC62964A9";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 2.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape1" -p "|TileFloor|TileGroup02|Tile01";
	rename -uid "413510BC-43E9-1276-689C-DE8FDED07FC8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.64374813437461853 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Tile02" -p "TileGroup02";
	rename -uid "6483AA78-4B58-728C-2749-0DA354098574";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 0.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape2" -p "|TileFloor|TileGroup02|Tile02";
	rename -uid "B23E2F31-4F4B-401F-1E5C-16A80B751660";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[0]" "f[2:4]";
	setAttr ".pv" -type "double2" 0.5 0.10625187307596207 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 18 ".ed[0:17]"  2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0 4 7 0
		 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 7 -ch 28 ".fc[0:6]" -type "polyFaces" 
		f 4 2 3 4 5
		mu 0 4 3 4 1 0
		f 4 -3 6 7 8
		mu 0 4 4 3 10 5
		f 4 -8 9 10 11
		mu 0 4 5 10 7 6
		f 4 -5 12 -11 13
		mu 0 4 0 1 6 7
		f 4 -9 -12 -13 -4
		mu 0 4 4 5 6 1
		f 4 -2 -17 -10 -15
		mu 0 4 2 8 9 10
		f 4 0 -16 -6 -18
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile03" -p "TileGroup02";
	rename -uid "7FB820B6-4248-3362-C206-8E81DBA2C31D";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 -1.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape3" -p "|TileFloor|TileGroup02|Tile03";
	rename -uid "9571D610-4DDA-B71A-5283-4193A33EA663";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[0]" "f[2:4]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305
		 0.25190341 0.62119311 0.49809659 0.625 0.53749627 0.375 0.75 0.875 0 0.875 0.21250375
		 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 4 5 2 1
		f 4 -4 7 8 9
		mu 0 4 5 4 12 6
		f 4 -9 10 11 12
		mu 0 4 6 12 8 7
		f 4 -6 13 -12 14
		mu 0 4 1 2 7 8
		f 4 -10 -13 -14 -5
		mu 0 4 5 6 7 2
		f 4 -15 17 -1 18
		mu 0 4 1 8 0 9
		f 4 -3 -18 -11 -16
		mu 0 4 3 10 11 12
		f 4 1 -17 -7 -19
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TileGroup01" -p "TileFloor";
	rename -uid "48F922E1-4757-7954-F846-5B8D3BD5B40F";
	setAttr ".t" -type "double3" 1 -3.7252902984619141e-09 0 ;
	setAttr ".rp" -type "double3" 2 3.7252902984619141e-09 3 ;
	setAttr ".sp" -type "double3" 2 3.7252902984619141e-09 3 ;
createNode transform -n "Tile01" -p "TileGroup01";
	rename -uid "5B494856-4A0B-1E57-F4D7-E2A4FE3F9240";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 2.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape1" -p "|TileFloor|TileGroup01|Tile01";
	rename -uid "696D8E86-4214-17F1-F2BD-55997BD148EF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.6211930513381958 0.25190341472625732 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 1 ;
	setAttr ".pt[3]" -type "float3" 0 0 1 ;
	setAttr ".pt[8]" -type "float3" 0 0 1 ;
	setAttr ".pt[9]" -type "float3" 0 0 1 ;
	setAttr ".pt[10]" -type "float3" 0 0 1 ;
	setAttr ".pt[11]" -type "float3" 0 0 1 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  0 1 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 3 4 1 0
		f 4 -4 7 8 9
		mu 0 4 4 3 10 5
		f 4 -9 10 11 12
		mu 0 4 5 10 7 6
		f 4 -6 13 -12 14
		mu 0 4 0 1 6 7
		f 4 0 15 -8 16
		mu 0 4 12 2 10 3
		f 4 -10 -13 -14 -5
		mu 0 4 4 5 6 1
		f 4 -3 -18 -11 -16
		mu 0 4 2 8 9 10
		f 4 1 -17 -7 -19
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile02" -p "TileGroup01";
	rename -uid "2901677C-401E-7D42-D708-D8B05808BC10";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 0.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape2" -p "|TileFloor|TileGroup01|Tile02";
	rename -uid "CCC72807-46F0-BE05-3B89-C88CB4AF33C3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[0]" "f[2:4]";
	setAttr ".pv" -type "double2" 0.5 0.12595170736312866 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 1 0 0 1 0 0 1 0 0 1 0 
		0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 18 ".ed[0:17]"  2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0 4 7 0
		 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 7 -ch 28 ".fc[0:6]" -type "polyFaces" 
		f 4 2 3 4 5
		mu 0 4 3 4 1 0
		f 4 -3 6 7 8
		mu 0 4 4 3 10 5
		f 4 -8 9 10 11
		mu 0 4 5 10 7 6
		f 4 -5 12 -11 13
		mu 0 4 0 1 6 7
		f 4 -9 -12 -13 -4
		mu 0 4 4 5 6 1
		f 4 -2 -17 -10 -15
		mu 0 4 2 8 9 10
		f 4 0 -16 -6 -18
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile03" -p "TileGroup01";
	rename -uid "C1DC66C1-4B84-B6B7-59D7-70911CC160C1";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 -1.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape3" -p "|TileFloor|TileGroup01|Tile03";
	rename -uid "8CA2D146-4DFC-73A4-D1D0-AEA52E73B56F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[0]" "f[2:4]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305
		 0.25190341 0.62119311 0.49809659 0.625 0.53749627 0.375 0.75 0.875 0 0.875 0.21250375
		 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 1 0 0 1 0 0 0.99238628 
		0 0 0.99238628 0 0 1 0 0 1 0 0 1 0 0 1 0 0 0.99238628 0 0 0.99238628 0 0 0.99238628 
		0 0 0.99238628;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 4 5 2 1
		f 4 -4 7 8 9
		mu 0 4 5 4 12 6
		f 4 -9 10 11 12
		mu 0 4 6 12 8 7
		f 4 -6 13 -12 14
		mu 0 4 1 2 7 8
		f 4 -10 -13 -14 -5
		mu 0 4 5 6 7 2
		f 4 -15 17 -1 18
		mu 0 4 1 8 0 9
		f 4 -3 -18 -11 -16
		mu 0 4 3 10 11 12
		f 4 1 -17 -7 -19
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile04" -p "TileGroup01";
	rename -uid "4C1E408E-403E-1C02-EF89-A49956F73C44";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 -2.5076136589050293 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape4" -p "|TileFloor|TileGroup01|Tile04";
	rename -uid "24EBB0CC-4DA4-3BF8-94C0-09AA3FE5193E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.6211930513381958 0.25190341472625732 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 1 ;
	setAttr ".pt[3]" -type "float3" 0 0 1 ;
	setAttr ".pt[8]" -type "float3" 0 0 1 ;
	setAttr ".pt[9]" -type "float3" 0 0 1 ;
	setAttr ".pt[10]" -type "float3" 0 0 1 ;
	setAttr ".pt[11]" -type "float3" 0 0 1 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  0 1 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 3 4 1 0
		f 4 -4 7 8 9
		mu 0 4 4 3 10 5
		f 4 -9 10 11 12
		mu 0 4 5 10 7 6
		f 4 -6 13 -12 14
		mu 0 4 0 1 6 7
		f 4 0 15 -8 16
		mu 0 4 12 2 10 3
		f 4 -10 -13 -14 -5
		mu 0 4 4 5 6 1
		f 4 -3 -18 -11 -16
		mu 0 4 2 8 9 10
		f 4 1 -17 -7 -19
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TileGroup03" -p "TileFloor";
	rename -uid "AE1AC2D0-45FA-47A1-BA48-B5ABD6682A03";
	setAttr ".t" -type "double3" -2 3.7252902984619141e-09 0 ;
	setAttr ".rp" -type "double3" 3 0 3 ;
	setAttr ".sp" -type "double3" 3 0 3 ;
createNode transform -n "Tile01" -p "TileGroup03";
	rename -uid "E33A715B-47F4-82C1-138D-3B976CD1B697";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 2.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape1" -p "|TileFloor|TileGroup03|Tile01";
	rename -uid "D2A4DB79-44D0-74C2-0F43-AEA3407BC957";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.64374813437461853 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  0 1 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 3 4 1 0
		f 4 -4 7 8 9
		mu 0 4 4 3 10 5
		f 4 -9 10 11 12
		mu 0 4 5 10 7 6
		f 4 -6 13 -12 14
		mu 0 4 0 1 6 7
		f 4 0 15 -8 16
		mu 0 4 12 2 10 3
		f 4 -10 -13 -14 -5
		mu 0 4 4 5 6 1
		f 4 -3 -18 -11 -16
		mu 0 4 2 8 9 10
		f 4 1 -17 -7 -19
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile02" -p "TileGroup03";
	rename -uid "976C46D7-4D81-24D7-6CF7-03BC4AA5E60E";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 0.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape2" -p "|TileFloor|TileGroup03|Tile02";
	rename -uid "98B81841-4A7D-A578-CAB9-9085647ADC6B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[0]" "f[2:4]";
	setAttr ".pv" -type "double2" 0.5 0.10625187307596207 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 18 ".ed[0:17]"  2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0 4 7 0
		 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 7 -ch 28 ".fc[0:6]" -type "polyFaces" 
		f 4 2 3 4 5
		mu 0 4 3 4 1 0
		f 4 -3 6 7 8
		mu 0 4 4 3 10 5
		f 4 -8 9 10 11
		mu 0 4 5 10 7 6
		f 4 -5 12 -11 13
		mu 0 4 0 1 6 7
		f 4 -9 -12 -13 -4
		mu 0 4 4 5 6 1
		f 4 -2 -17 -10 -15
		mu 0 4 2 8 9 10
		f 4 0 -16 -6 -18
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile03" -p "TileGroup03";
	rename -uid "92138196-4C5E-AC95-DACF-48A4E833111B";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 -1.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape3" -p "|TileFloor|TileGroup03|Tile03";
	rename -uid "781AF280-48DD-C92E-658F-9F854155C083";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[0]" "f[2:4]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305
		 0.25190341 0.62119311 0.49809659 0.625 0.53749627 0.375 0.75 0.875 0 0.875 0.21250375
		 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 4 5 2 1
		f 4 -4 7 8 9
		mu 0 4 5 4 12 6
		f 4 -9 10 11 12
		mu 0 4 6 12 8 7
		f 4 -6 13 -12 14
		mu 0 4 1 2 7 8
		f 4 -10 -13 -14 -5
		mu 0 4 5 6 7 2
		f 4 -15 17 -1 18
		mu 0 4 1 8 0 9
		f 4 -3 -18 -11 -16
		mu 0 4 3 10 11 12
		f 4 1 -17 -7 -19
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TileGroup04" -p "TileFloor";
	rename -uid "23D676A2-4B5E-F1A3-7AE2-B18A20F99EC0";
	setAttr ".t" -type "double3" -1 0 0 ;
	setAttr ".rp" -type "double3" 2 3.7252902984619141e-09 3 ;
	setAttr ".sp" -type "double3" 2 3.7252902984619141e-09 3 ;
createNode transform -n "Tile01" -p "TileGroup04";
	rename -uid "69877BB4-422A-A1CD-C782-3DAF20112639";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 2.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape1" -p "|TileFloor|TileGroup04|Tile01";
	rename -uid "DFEF076E-49FC-0804-B3A2-2E9102423050";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.6211930513381958 0.25190341472625732 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 1 ;
	setAttr ".pt[3]" -type "float3" 0 0 1 ;
	setAttr ".pt[8]" -type "float3" 0 0 1 ;
	setAttr ".pt[9]" -type "float3" 0 0 1 ;
	setAttr ".pt[10]" -type "float3" 0 0 1 ;
	setAttr ".pt[11]" -type "float3" 0 0 1 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  0 1 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 3 4 1 0
		f 4 -4 7 8 9
		mu 0 4 4 3 10 5
		f 4 -9 10 11 12
		mu 0 4 5 10 7 6
		f 4 -6 13 -12 14
		mu 0 4 0 1 6 7
		f 4 0 15 -8 16
		mu 0 4 12 2 10 3
		f 4 -10 -13 -14 -5
		mu 0 4 4 5 6 1
		f 4 -3 -18 -11 -16
		mu 0 4 2 8 9 10
		f 4 1 -17 -7 -19
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile02" -p "TileGroup04";
	rename -uid "A065580D-41B8-9225-D761-1C8BCD9376EC";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 0.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape2" -p "|TileFloor|TileGroup04|Tile02";
	rename -uid "6D79E8C0-425A-5110-AA0E-359EE066E5B6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[0]" "f[2:4]";
	setAttr ".pv" -type "double2" 0.5 0.12595170736312866 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 1 0 0 1 0 0 1 0 0 1 0 
		0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 18 ".ed[0:17]"  2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0 4 7 0
		 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 7 -ch 28 ".fc[0:6]" -type "polyFaces" 
		f 4 2 3 4 5
		mu 0 4 3 4 1 0
		f 4 -3 6 7 8
		mu 0 4 4 3 10 5
		f 4 -8 9 10 11
		mu 0 4 5 10 7 6
		f 4 -5 12 -11 13
		mu 0 4 0 1 6 7
		f 4 -9 -12 -13 -4
		mu 0 4 4 5 6 1
		f 4 -2 -17 -10 -15
		mu 0 4 2 8 9 10
		f 4 0 -16 -6 -18
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile03" -p "TileGroup04";
	rename -uid "C8653D1B-4321-1C67-9D03-3CBBB2CA6313";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 -1.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape3" -p "|TileFloor|TileGroup04|Tile03";
	rename -uid "D84568B9-40E4-22F1-2B2E-9EAF125D2D72";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[0]" "f[2:4]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305
		 0.25190341 0.62119311 0.49809659 0.625 0.53749627 0.375 0.75 0.875 0 0.875 0.21250375
		 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 1 0 0 1 0 0 0.99238628 
		0 0 0.99238628 0 0 1 0 0 1 0 0 1 0 0 1 0 0 0.99238628 0 0 0.99238628 0 0 0.99238628 
		0 0 0.99238628;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 4 5 2 1
		f 4 -4 7 8 9
		mu 0 4 5 4 12 6
		f 4 -9 10 11 12
		mu 0 4 6 12 8 7
		f 4 -6 13 -12 14
		mu 0 4 1 2 7 8
		f 4 -10 -13 -14 -5
		mu 0 4 5 6 7 2
		f 4 -15 17 -1 18
		mu 0 4 1 8 0 9
		f 4 -3 -18 -11 -16
		mu 0 4 3 10 11 12
		f 4 1 -17 -7 -19
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile04" -p "TileGroup04";
	rename -uid "97C0574B-4471-69BD-F7F5-70BD54100C7A";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 -2.5076136589050293 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape4" -p "|TileFloor|TileGroup04|Tile04";
	rename -uid "B5FA37FF-4D8F-95D9-822A-509A0681835A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.6211930513381958 0.25190341472625732 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 1 ;
	setAttr ".pt[3]" -type "float3" 0 0 1 ;
	setAttr ".pt[8]" -type "float3" 0 0 1 ;
	setAttr ".pt[9]" -type "float3" 0 0 1 ;
	setAttr ".pt[10]" -type "float3" 0 0 1 ;
	setAttr ".pt[11]" -type "float3" 0 0 1 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  0 1 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 3 4 1 0
		f 4 -4 7 8 9
		mu 0 4 4 3 10 5
		f 4 -9 10 11 12
		mu 0 4 5 10 7 6
		f 4 -6 13 -12 14
		mu 0 4 0 1 6 7
		f 4 0 15 -8 16
		mu 0 4 12 2 10 3
		f 4 -10 -13 -14 -5
		mu 0 4 4 5 6 1
		f 4 -3 -18 -11 -16
		mu 0 4 2 8 9 10
		f 4 1 -17 -7 -19
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TileGroup05" -p "TileFloor";
	rename -uid "2CB36F9C-49C9-BADB-33DF-9696DB111D44";
	setAttr ".t" -type "double3" -4 7.4505805969238281e-09 0 ;
	setAttr ".rp" -type "double3" 3 0 3 ;
	setAttr ".sp" -type "double3" 3 0 3 ;
createNode transform -n "Tile01" -p "TileGroup05";
	rename -uid "93D52E97-46CC-8FF0-A0B3-E4AC245AF593";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 2.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape1" -p "|TileFloor|TileGroup05|Tile01";
	rename -uid "999CF054-49B4-1C87-7B6A-4296D349B1A3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.64374813437461853 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  0 1 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 3 4 1 0
		f 4 -4 7 8 9
		mu 0 4 4 3 10 5
		f 4 -9 10 11 12
		mu 0 4 5 10 7 6
		f 4 -6 13 -12 14
		mu 0 4 0 1 6 7
		f 4 0 15 -8 16
		mu 0 4 12 2 10 3
		f 4 -10 -13 -14 -5
		mu 0 4 4 5 6 1
		f 4 -3 -18 -11 -16
		mu 0 4 2 8 9 10
		f 4 1 -17 -7 -19
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile02" -p "TileGroup05";
	rename -uid "7D0CF7DA-404E-5B89-E649-518D7AFB0F19";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 0.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape2" -p "|TileFloor|TileGroup05|Tile02";
	rename -uid "954024D5-481B-6BD3-2B8C-DA8A92B979ED";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[0]" "f[2:4]";
	setAttr ".pv" -type "double2" 0.5 0.10625187307596207 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 18 ".ed[0:17]"  2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0 4 7 0
		 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 7 -ch 28 ".fc[0:6]" -type "polyFaces" 
		f 4 2 3 4 5
		mu 0 4 3 4 1 0
		f 4 -3 6 7 8
		mu 0 4 4 3 10 5
		f 4 -8 9 10 11
		mu 0 4 5 10 7 6
		f 4 -5 12 -11 13
		mu 0 4 0 1 6 7
		f 4 -9 -12 -13 -4
		mu 0 4 4 5 6 1
		f 4 -2 -17 -10 -15
		mu 0 4 2 8 9 10
		f 4 0 -16 -6 -18
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile03" -p "TileGroup05";
	rename -uid "DFC734F5-433F-E5A7-B21E-F9AA18347D27";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 -1.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape3" -p "|TileFloor|TileGroup05|Tile03";
	rename -uid "9698F926-43BE-1B89-A876-47B46C334BDA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[0]" "f[2:4]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305
		 0.25190341 0.62119311 0.49809659 0.625 0.53749627 0.375 0.75 0.875 0 0.875 0.21250375
		 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 4 5 2 1
		f 4 -4 7 8 9
		mu 0 4 5 4 12 6
		f 4 -9 10 11 12
		mu 0 4 6 12 8 7
		f 4 -6 13 -12 14
		mu 0 4 1 2 7 8
		f 4 -10 -13 -14 -5
		mu 0 4 5 6 7 2
		f 4 -15 17 -1 18
		mu 0 4 1 8 0 9
		f 4 -3 -18 -11 -16
		mu 0 4 3 10 11 12
		f 4 1 -17 -7 -19
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TileGroup06" -p "TileFloor";
	rename -uid "26361F9F-44AB-53C7-FF4A-7797C0BB1415";
	setAttr ".t" -type "double3" -3 3.7252902984619141e-09 0 ;
	setAttr ".rp" -type "double3" 2 3.7252902984619141e-09 3 ;
	setAttr ".sp" -type "double3" 2 3.7252902984619141e-09 3 ;
createNode transform -n "Tile01" -p "TileGroup06";
	rename -uid "0708EC32-4D8A-83F0-B4D9-21A5E14A4BBE";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 2.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape1" -p "|TileFloor|TileGroup06|Tile01";
	rename -uid "71B0B720-42C1-C9F0-B97F-B5B29779D06D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.6211930513381958 0.25190341472625732 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 1 ;
	setAttr ".pt[3]" -type "float3" 0 0 1 ;
	setAttr ".pt[8]" -type "float3" 0 0 1 ;
	setAttr ".pt[9]" -type "float3" 0 0 1 ;
	setAttr ".pt[10]" -type "float3" 0 0 1 ;
	setAttr ".pt[11]" -type "float3" 0 0 1 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  0 1 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 3 4 1 0
		f 4 -4 7 8 9
		mu 0 4 4 3 10 5
		f 4 -9 10 11 12
		mu 0 4 5 10 7 6
		f 4 -6 13 -12 14
		mu 0 4 0 1 6 7
		f 4 0 15 -8 16
		mu 0 4 12 2 10 3
		f 4 -10 -13 -14 -5
		mu 0 4 4 5 6 1
		f 4 -3 -18 -11 -16
		mu 0 4 2 8 9 10
		f 4 1 -17 -7 -19
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile02" -p "TileGroup06";
	rename -uid "2BB036EF-48A1-E2F9-25B2-209795CBBC7E";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 0.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape2" -p "|TileFloor|TileGroup06|Tile02";
	rename -uid "DD341E40-41BD-0099-A924-1C895929D2FE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[0]" "f[2:4]";
	setAttr ".pv" -type "double2" 0.5 0.12595170736312866 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 1 0 0 1 0 0 1 0 0 1 0 
		0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 18 ".ed[0:17]"  2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0 4 7 0
		 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 7 -ch 28 ".fc[0:6]" -type "polyFaces" 
		f 4 2 3 4 5
		mu 0 4 3 4 1 0
		f 4 -3 6 7 8
		mu 0 4 4 3 10 5
		f 4 -8 9 10 11
		mu 0 4 5 10 7 6
		f 4 -5 12 -11 13
		mu 0 4 0 1 6 7
		f 4 -9 -12 -13 -4
		mu 0 4 4 5 6 1
		f 4 -2 -17 -10 -15
		mu 0 4 2 8 9 10
		f 4 0 -16 -6 -18
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile03" -p "TileGroup06";
	rename -uid "98A6E3CD-48F8-6DEB-2CE2-94B44AAABD90";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 -1.5 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape3" -p "|TileFloor|TileGroup06|Tile03";
	rename -uid "71F51B37-4E08-D86E-3098-8194851AECB5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[0]" "f[2:4]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.75 0.375
		 0.53749627 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305
		 0.25190341 0.62119311 0.49809659 0.625 0.53749627 0.375 0.75 0.875 0 0.875 0.21250375
		 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 1 0 0 1 0 0 0.99238628 
		0 0 0.99238628 0 0 1 0 0 1 0 0 1 0 0 1 0 0 0.99238628 0 0 0.99238628 0 0 0.99238628 
		0 0 0.99238628;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 4 5 2 1
		f 4 -4 7 8 9
		mu 0 4 5 4 12 6
		f 4 -9 10 11 12
		mu 0 4 6 12 8 7
		f 4 -6 13 -12 14
		mu 0 4 1 2 7 8
		f 4 -10 -13 -14 -5
		mu 0 4 5 6 7 2
		f 4 -15 17 -1 18
		mu 0 4 1 8 0 9
		f 4 -3 -18 -11 -16
		mu 0 4 3 10 11 12
		f 4 1 -17 -7 -19
		mu 0 4 13 14 4 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile04" -p "TileGroup06";
	rename -uid "506335A9-46FF-713A-F48D-7FAB31474248";
	setAttr ".t" -type "double3" 1.5 0.4999999519953704 -2.5076136589050293 ;
	setAttr ".s" -type "double3" 1 0.10152652254695001 1 ;
	setAttr ".rp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.4999999519953704 0.5 ;
createNode mesh -n "TileShape4" -p "|TileFloor|TileGroup06|Tile04";
	rename -uid "A727DEAE-43C5-AA36-31B3-CA8DF843D269";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1]" "f[4]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[0]" "f[2:3]" "f[5]";
	setAttr ".pv" -type "double2" 0.6211930513381958 0.25190341472625732 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.53749627
		 0.37880689 0.49809659 0.625 0 0.375 0.21250375 0.37880689 0.25190341 0.62119305 0.25190341
		 0.62119311 0.49809659 0.625 0.53749627 0.875 0 0.875 0.21250375 0.625 0.21250375
		 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 1 ;
	setAttr ".pt[3]" -type "float3" 0 0 1 ;
	setAttr ".pt[8]" -type "float3" 0 0 1 ;
	setAttr ".pt[9]" -type "float3" 0 0 1 ;
	setAttr ".pt[10]" -type "float3" 0 0 1 ;
	setAttr ".pt[11]" -type "float3" 0 0 1 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.49999994 0.5 0.5 -0.49999994 0.5
		 -0.5 -0.49999994 -1.5 0.5 -0.49999994 -1.5 -0.5 0.35001498 0.5 -0.48477244 0.49999994 0.48477244
		 0.48477244 0.49999994 0.48477244 0.5 0.35001498 0.5 -0.48477244 0.49999994 -1.48477256
		 -0.5 0.35001498 -1.5 0.48477244 0.49999994 -1.48477256 0.5 0.35001498 -1.5;
	setAttr -s 19 ".ed[0:18]"  0 1 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0 9 4 0
		 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 3 4 1 0
		f 4 -4 7 8 9
		mu 0 4 4 3 10 5
		f 4 -9 10 11 12
		mu 0 4 5 10 7 6
		f 4 -6 13 -12 14
		mu 0 4 0 1 6 7
		f 4 0 15 -8 16
		mu 0 4 12 2 10 3
		f 4 -10 -13 -14 -5
		mu 0 4 4 5 6 1
		f 4 -3 -18 -11 -16
		mu 0 4 2 8 9 10
		f 4 1 -17 -7 -19
		mu 0 4 11 12 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Window";
	rename -uid "DB6A87CB-4B43-EE44-69D5-119DDA06B37D";
	setAttr ".t" -type "double3" 12.558780398493919 0 0 ;
createNode transform -n "pCube1" -p "Window";
	rename -uid "0A6D61E0-4D2A-AA6D-627E-F4930CB2F682";
	setAttr ".t" -type "double3" -11.539181509667005 2.8396449452215902 -3.0826583465826012 ;
	setAttr ".s" -type "double3" 1.6291631220845542 4.0716362508012542 0.17971541101585575 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "EAC481F8-4BFE-9067-77E5-05AEDE7CE79B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2" -p "Window";
	rename -uid "D9916D6F-4530-EE8C-4F7A-288CA5D28DB0";
	setAttr ".t" -type "double3" -11.532892381698163 3.8471551916624698 -3.123283696662297 ;
	setAttr ".s" -type "double3" 1.641967225605502 0.17775636989045124 0.11321393656748661 ;
	setAttr ".rp" -type "double3" -0.80651465768659414 0.088878149961110625 0.099340833252033273 ;
	setAttr ".sp" -type "double3" -0.4999999319985049 0.49999980319065163 0.49999996366407551 ;
	setAttr ".spt" -type "double3" -0.30651472568808924 -0.41112165322954097 -0.40065913041204221 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "00C10EB9-4657-0872-8524-2E85B92601C3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3" -p "Window";
	rename -uid "3420662D-4F32-C2E2-1323-1DB73D75CF91";
	setAttr ".t" -type "double3" -11.532892381698163 3.0471551916624704 -3.123283696662297 ;
	setAttr ".s" -type "double3" 1.641967225605502 0.17775636989045124 0.11321393656748661 ;
	setAttr ".rp" -type "double3" -0.80651465768659414 0.088878149961110625 0.099340833252033273 ;
	setAttr ".sp" -type "double3" -0.4999999319985049 0.49999980319065163 0.49999996366407551 ;
	setAttr ".spt" -type "double3" -0.30651472568808924 -0.41112165322954097 -0.40065913041204221 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "5D215F3C-4AF5-7A0B-19CE-A18BB2B0DF77";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4" -p "Window";
	rename -uid "DD3DD093-44A3-5D05-C1A2-5298F1515E38";
	setAttr ".t" -type "double3" -11.532892381698163 2.247155191662471 -3.1232836966622965 ;
	setAttr ".s" -type "double3" 1.641967225605502 0.17775636989045124 0.11321393656748661 ;
	setAttr ".rp" -type "double3" -0.80651465768659447 0.088878149961110264 0.099340833252032523 ;
	setAttr ".sp" -type "double3" -0.4999999319985049 0.49999980319065163 0.49999996366407551 ;
	setAttr ".spt" -type "double3" -0.30651472568808957 -0.41112165322954131 -0.40065913041204293 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "3F1C91A0-41EE-B66C-08EE-BD9F2EBBF114";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "Window";
	rename -uid "9DAB864E-441A-156B-A026-43916DB234B9";
	setAttr ".t" -type "double3" -11.532892381698163 1.4471551916624712 -3.123283696662297 ;
	setAttr ".s" -type "double3" 1.641967225605502 0.17775636989045124 0.11321393656748661 ;
	setAttr ".rp" -type "double3" -0.80651465768659447 0.088878149961110237 0.099340833252032495 ;
	setAttr ".sp" -type "double3" -0.4999999319985049 0.49999980319065163 0.49999996366407551 ;
	setAttr ".spt" -type "double3" -0.30651472568808957 -0.41112165322954131 -0.40065913041204293 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "D0CA0901-4FA1-42F9-C8D2-94A3A476C35B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "Window";
	rename -uid "5C4373FD-40B5-183D-1C3D-DB98FB7A494C";
	setAttr ".t" -type "double3" -10.637001635117377 4.7865849656138195 -3.123283696662297 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 1.641967225605502 0.17775636989045124 0.11321393656748661 ;
	setAttr ".rp" -type "double3" -0.80651465768659414 0.088878149961110625 0.099340833252033273 ;
	setAttr ".sp" -type "double3" -0.4999999319985049 0.49999980319065163 0.49999996366407551 ;
	setAttr ".spt" -type "double3" -0.30651472568808924 -0.41112165322954097 -0.40065913041204221 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "A6B631E0-4A22-4318-C7B0-2491D519FD33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 1.5242171 2.3841858e-06 -1.937151e-07 ;
	setAttr ".pt[3]" -type "float3" 1.5242171 2.3841858e-06 -1.937151e-07 ;
	setAttr ".pt[5]" -type "float3" 1.5242171 2.3841858e-06 -1.937151e-07 ;
	setAttr ".pt[7]" -type "float3" 1.5242171 2.3841858e-06 -1.937151e-07 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "directionalLight1";
	rename -uid "A2402BB2-44BD-4D77-C79A-8F822809385F";
	setAttr ".t" -type "double3" 1.1003792538926922 3.210154369527892 -5.069582049125259 ;
	setAttr ".r" -type "double3" -484.4641254223182 -366.62128549718261 -349.94656164042647 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "5D481C92-4B5C-4EE8-60F0-3591F500EF7F";
	setAttr -k off ".v";
createNode transform -n "areaLight1";
	rename -uid "B5302AAE-45DE-CDBA-DB15-4680DD6CE38B";
	setAttr ".t" -type "double3" -4.8301280071921227 5.1132485266662178 1.6928087016248741 ;
	setAttr ".r" -type "double3" -377.28012360781997 -88.823198581664386 336.87263421499631 ;
	setAttr ".s" -type "double3" 0.94221571737099119 0.94221571737099119 0.94221571737099119 ;
createNode areaLight -n "areaLightShape1" -p "areaLight1";
	rename -uid "E4AF8E4C-44AC-EF70-D593-1CBCCA556BD0";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 8 8 21 ;
	setAttr ".in" 10;
	setAttr ".sc" -type "float3" 1 0 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "80F592E5-485E-F490-CFD4-7B89CF79FF77";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "FB7A9847-49BF-E6C2-A2E6-E08B07948AC6";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "FDEDC340-43A2-2D2E-68A3-2DACD749E354";
createNode displayLayerManager -n "layerManager";
	rename -uid "D4BCC8F5-4EDF-B798-E977-36A0493D528D";
createNode displayLayer -n "defaultLayer";
	rename -uid "B1A1EA32-4B2E-A141-3BAD-B4B76508CA73";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "EB866416-44A8-DEDC-155A-BBA89FCCC21B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2652805F-41C5-0AD2-C63F-8B8D42326F48";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "9B7520C6-4593-2322-B669-DC93F43198E3";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "8CE89A74-4A6D-D7ED-814A-42A646C474BD";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "186F2B3A-41DD-849C-8C77-14B9B63A412E";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "48FE4A15-4371-1909-9FD2-BCB2269FCEAE";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E8618CF4-47CD-FE43-9A49-8D8401ED1200";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1149\n            -height 523\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1149\\n    -height 523\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1149\\n    -height 523\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E33526F7-4F92-8194-7589-71842D8EC188";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "WallColor";
	rename -uid "7F6909D6-45D8-A00B-ACE2-B0A48B0D438E";
	setAttr ".c" -type "float3" 0.19641601 0.27900001 0.2739844 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "2EABC0CD-4705-411D-0943-BEAD123FB653";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "C161DF4C-410E-2B16-D12A-0783AB97D73E";
createNode polyCube -n "polyCube1";
	rename -uid "E48A2220-4FB2-D71E-F80E-9F95A86E370D";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "EBA4B898-4E33-4C47-D32D-4197EE93D0FC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.10152652254695001 0 0 0 0 1 0 2.5 0.050763256399731893 2.5 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.15;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak1";
	rename -uid "979DCF56-4E77-B845-7FA3-C3A9166A1585";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[4:7]" -type "float3"  0 0 -1 0 0 -1 0 0 -1 0 0 -1;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "1C692554-483E-5A70-28C5-B6912BAA0249";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "71609A8F-4E62-92AF-8133-0189A8F06E39";
	setAttr ".dc" -type "componentList" 1 "f[6]";
createNode lambert -n "FloorColor";
	rename -uid "502AB159-4BB2-D767-B1DB-6988CD94E123";
	setAttr ".c" -type "float3" 0.146 0.092494905 0.083365999 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "9FB5BB17-4E09-F8FC-04DF-30B67A73D2A3";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "87ACCDC3-4375-75D6-D7FA-B09714FC0A98";
createNode shadingEngine -n "lambert4SG";
	rename -uid "96DD53EC-4D5E-2ACD-0787-A28F483E9EB1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "4D840C45-49BB-924D-8189-44B507289358";
createNode lambert -n "lambert5";
	rename -uid "08427A2E-481C-682D-0550-58B2068D81F2";
createNode shadingEngine -n "lambert5SG";
	rename -uid "E263000F-430B-5AB0-3D7F-DABD2899C6CC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "2646BD73-423D-C00B-B334-D5A02F9AD532";
createNode wood -n "test1";
	rename -uid "3DCA23F9-49C4-EAB3-517F-7682F4CF4B6D";
	setAttr ".fc" -type "float3" 0.205 0.13687782 0.125255 ;
	setAttr ".vc" -type "float3" 0.146 0.0979826 0.089790002 ;
	setAttr ".gc" -type "float3" 0.146 0.092494905 0.083365999 ;
createNode polyCube -n "polyCube2";
	rename -uid "913A4CCF-4967-6A71-1ED0-02947390A452";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "EDB6CB68-47A7-4BAD-383D-D2BC729864F6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6:7]";
	setAttr ".ix" -type "matrix" 1.6004510881018807 0 0 0 0 4.3538926343499815 0 0 0 0 0.38834656488891506 0
		 5.5994170620978618 2.8073699645602805 -3.1064786221807865 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".sg" 5;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "04598AD3-40D4-C44E-97FC-EEBE2337E620";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1.6004510881018807 0 0 0 0 4.3538926343499815 0 0 0 0 0.38834656488891506 0
		 5.5994170620978618 2.8073699645602805 -3.1064786221807865 1;
	setAttr ".am" yes;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "B59B45CE-4946-7CCB-7905-5EB0AFCEE4B6";
	setAttr ".dc" -type "componentList" 1 "f[13:14]";
createNode polyNormal -n "polyNormal1";
	rename -uid "2DDC5C4C-47B7-5F63-2BB6-DF94F24D58AE";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "92500A2F-4009-6013-D392-FFAF769151E4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[0:3]" "e[6:7]" "e[11]" "e[13:14]" "e[16:17]" "e[19:20]" "e[22:25]" "e[27:28]" "e[30:31]" "e[33:34]" "e[36:38]";
	setAttr ".ix" -type "matrix" 1.6004510881018807 0 0 0 0 4.3538926343499815 0 0 0 0 0.40050868918457394 0
		 5.7339343605297062 2.8073699645602805 -3.1064786221807865 1;
	setAttr ".ws" yes;
	setAttr ".s" -type "double3" 1 1 1.7822871823629067 ;
	setAttr ".pvt" -type "float3" 5.7339344 2.8073697 -3.1064787 ;
	setAttr ".rs" 46995;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.9337088164787657 0.63042312836084191 -3.3067331577504988 ;
	setAttr ".cbx" -type "double3" 6.5341602861579204 4.9843162817352713 -2.9062242775884997 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "DB89E629-4407-B9AF-4021-D1BD35274883";
	setAttr ".ics" -type "componentList" 1 "f[13:38]";
	setAttr ".ix" -type "matrix" 1.6004510881018807 0 0 0 0 4.3538926343499815 0 0 0 0 0.40050868918457394 0
		 5.7339343605297062 2.8073699645602805 -3.1064786221807865 1;
	setAttr ".ws" yes;
	setAttr ".s" -type "double3" 1.2429442900003944 1.1003472910333527 1 ;
	setAttr ".pvt" -type "float3" 5.7339349 2.8073697 -3.1064789 ;
	setAttr ".rs" 54815;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.9337088164787657 0.63042312836084191 -3.4633896479018258 ;
	setAttr ".cbx" -type "double3" 6.5341606677351951 4.9843162817352713 -2.7495679784145977 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "056F8EA7-4C7C-D05B-593C-F7909843F746";
	setAttr ".ics" -type "componentList" 1 "f[13:14]";
	setAttr ".ix" -type "matrix" 1.6004510881018807 0 0 0 0 4.3538926343499815 0 0 0 0 0.30500981644318853 0
		 5.7339343605297062 2.8073699645602805 -3.1064786221807865 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.7339349 0.41197249 -3.1064787 ;
	setAttr ".rs" 48391;
	setAttr ".lt" -type "double3" -3.5527136788005009e-15 -1.7763568394002505e-15 -0.26213159576585493 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.7392986293945398 0.41197248563279221 -3.3782863741258526 ;
	setAttr ".cbx" -type "double3" 6.7285712363966947 0.41197248563279221 -2.8346711611157485 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "1A147EB0-49A6-1A49-401D-74AAFD6D1198";
	setAttr ".ics" -type "componentList" 2 "f[93]" "f[97]";
	setAttr ".ix" -type "matrix" 1.6004510881018807 0 0 0 0 4.3538926343499815 0 0 0 0 0.30500981644318853 0
		 5.7339343605297062 2.8073699645602805 -3.1064786221807865 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.7339354 0.2809065 -3.1064789 ;
	setAttr ".rs" 36700;
	setAttr ".ls" -type "double3" 1 1 1.9258546910243828 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.7392990109718145 0.14984074538452274 -3.3782865195658669 ;
	setAttr ".cbx" -type "double3" 6.7285719995512441 0.4119722261205685 -2.8346713065557627 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "D8BEC2D3-4D51-FE54-74D7-6CB6EA6CDDBB";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 1.6004510881018807 0 0 0 0 4.3538926343499815 0 0 0 0 0.30500981644318853 0
		 5.7339343605297062 2.8073699645602805 -3.1064786221807865 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.7339354 0.28090623 -2.8346715 ;
	setAttr ".rs" 62510;
	setAttr ".lt" -type "double3" 0 -3.6341592320348825e-16 -0.20546442805252418 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.7392990109718145 0.14984048587229903 -2.8346715974357908 ;
	setAttr ".cbx" -type "double3" 6.7285719995512441 0.41197196660834434 -2.8346715974357908 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "5474C59A-4C4C-FF76-2AE2-AA82642463D0";
	setAttr ".ics" -type "componentList" 1 "f[97]";
	setAttr ".ix" -type "matrix" 1.6004510881018807 0 0 0 0 4.3538926343499815 0 0 0 0 0.30500981644318853 0
		 5.7339343605297062 2.8073699645602805 -3.1064786221807865 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.7339354 0.28090596 -3.3782868 ;
	setAttr ".rs" 53537;
	setAttr ".lt" -type "double3" 0 1.6653345369377348e-16 -0.205 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.7392990109718145 0.14984022636007488 -3.378286810445895 ;
	setAttr ".cbx" -type "double3" 6.7285719995512441 0.41197170709612063 -3.378286810445895 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "C3D217F4-43DF-E9BF-7044-F4A7DFA4CE7A";
	setAttr ".ics" -type "componentList" 4 "f[92]" "f[98]" "f[110]" "f[112]";
	setAttr ".ix" -type "matrix" 1.6004510881018807 0 0 0 0 4.3538926343499815 0 0 0 0 0.30500981644318853 0
		 5.7339343605297062 2.8073699645602805 -3.1064786221807865 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.7392988 0.28090569 -3.1062472 ;
	setAttr ".rs" 43536;
	setAttr ".lt" -type "double3" 4.4408920985006262e-16 -1.9535560038439135e-16 -0.23535068813869398 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.7392990109718145 0.14983996684785117 -3.5832868373555979 ;
	setAttr ".cbx" -type "double3" 4.7392990109718145 0.41197144758389692 -2.6292073260010906 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "278EE93F-49C7-CAAB-FB61-3CB8D11C2677";
	setAttr ".ics" -type "componentList" 4 "f[94]" "f[96]" "f[108]" "f[114]";
	setAttr ".ix" -type "matrix" 1.6004510881018807 0 0 0 0 4.3538926343499815 0 0 0 0 0.30500981644318853 0
		 5.7339343605297062 2.8073699645602805 -3.1064786221807865 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.7285719 0.28090546 -3.1062472 ;
	setAttr ".rs" 60606;
	setAttr ".lt" -type "double3" 8.8817841970012523e-16 0 -0.235 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.7285719995512441 0.14983970733562746 -3.583287128235626 ;
	setAttr ".cbx" -type "double3" 6.7285719995512441 0.41197118807167277 -2.6292073260010906 ;
createNode polyCube -n "polyCube3";
	rename -uid "68116436-48BD-D203-D56B-9AB1D24BE062";
	setAttr ".cuv" 4;
createNode polyNormal -n "polyNormal2";
	rename -uid "3BF57978-4FC8-B176-C274-75AB90D9339E";
	setAttr ".ics" -type "componentList" 13 "f[40]" "f[42]" "f[44]" "f[46]" "f[48]" "f[50]" "f[52]" "f[54]" "f[56]" "f[58]" "f[60]" "f[62]" "f[64]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal3";
	rename -uid "0E46460B-4989-5257-DB57-2196A86D2AC4";
	setAttr ".ics" -type "componentList" 13 "f[66]" "f[68]" "f[70]" "f[72]" "f[74]" "f[76]" "f[78]" "f[80]" "f[82]" "f[84]" "f[86]" "f[88]" "f[90]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal4";
	rename -uid "4A91A861-46EB-CFF6-29D4-F2B32893F279";
	setAttr ".ics" -type "componentList" 7 "f[96:98]" "f[111:112]" "f[114]" "f[119]" "f[129:130]" "f[135]" "f[144:145]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal5";
	rename -uid "FB97AD0E-47E2-6CE1-DF3E-7798C3712B8A";
	setAttr ".ics" -type "componentList" 7 "f[92:94]" "f[107:108]" "f[110]" "f[115]" "f[124:125]" "f[131]" "f[141:142]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal6";
	rename -uid "35AF4CB5-4BDF-E833-570D-2AA4BF60E96E";
	setAttr ".ics" -type "componentList" 13 "f[13:14]" "f[91]" "f[95]" "f[109]" "f[113]" "f[117:118]" "f[120:121]" "f[126]" "f[128]" "f[132:133]" "f[137:138]" "f[140]" "f[146]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal7";
	rename -uid "87E8DCEA-4CB7-4579-7F25-759028D97500";
	setAttr ".ics" -type "componentList" 13 "f[13:38]" "f[92]" "f[94]" "f[96]" "f[98]" "f[115]" "f[117]" "f[119]" "f[121]" "f[131]" "f[133]" "f[135]" "f[137]";
	setAttr ".unm" no;
createNode lambert -n "WindowColor";
	rename -uid "AE3F87D6-476B-A9BA-86A0-7BA2A7278DFA";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "BDDD4921-45EA-DBE6-333C-F2AC64860E85";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "7775FF6A-41DC-309F-6D9F-2CBD92ABD8B1";
createNode polyNormal -n "polyNormal8";
	rename -uid "145C1AD9-4347-7D8F-C981-01A3B6679BED";
	setAttr ".ics" -type "componentList" 13 "f[13:14]" "f[92]" "f[94]" "f[96]" "f[98]" "f[115]" "f[117]" "f[119]" "f[121]" "f[131]" "f[133]" "f[135]" "f[137]";
	setAttr ".unm" no;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "8D39E9B0-4523-05B4-49D0-CB871CBB3286";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -376.98411200412426 -327.38093937200267 ;
	setAttr ".tgi[0].vh" -type "double2" -269.84125911874156 43.253966535210047 ;
	setAttr -s 12 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -237.14285278320312;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -224.28572082519531;
	setAttr ".tgi[0].ni[1].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -90;
	setAttr ".tgi[0].ni[2].y" 112.85713958740234;
	setAttr ".tgi[0].ni[2].nvs" 2066;
	setAttr ".tgi[0].ni[3].x" 251.42857360839844;
	setAttr ".tgi[0].ni[3].y" -31.428571701049805;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -55.714286804199219;
	setAttr ".tgi[0].ni[4].y" -31.428571701049805;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 70;
	setAttr ".tgi[0].ni[5].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -90;
	setAttr ".tgi[0].ni[6].y" 112.85713958740234;
	setAttr ".tgi[0].ni[6].nvs" 2066;
	setAttr ".tgi[0].ni[7].x" 82.857139587402344;
	setAttr ".tgi[0].ni[7].y" -57.142856597900391;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 82.857139587402344;
	setAttr ".tgi[0].ni[8].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 82.857139587402344;
	setAttr ".tgi[0].ni[9].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" -570;
	setAttr ".tgi[0].ni[10].y" -2.8571429252624512;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" -262.85714721679688;
	setAttr ".tgi[0].ni[11].y" -2.8571429252624512;
	setAttr ".tgi[0].ni[11].nvs" 1923;
createNode polyCube -n "polyCube4";
	rename -uid "4CBF47AC-4C51-8DB7-3164-58B5C144B0F5";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "BD2DE1D4-46FE-16AB-D258-28B7AB8064BC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6:7]";
	setAttr ".ix" -type "matrix" 2.0106645934269443 0 0 0 0 3.368108857944565 0 0 0 0 0.14682597133775141 0
		 4.6572286875457785 2.2913169702851452 -3.0734129769586205 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".sg" 5;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak2";
	rename -uid "4F819A3D-4965-C314-F039-D7AB704072D3";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0.33906466 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.33906466 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.3390646 -0.32810414 ;
	setAttr ".tk[5]" -type "float3" 0 0.3390646 -0.32810414 ;
	setAttr ".tk[6]" -type "float3" 0 0 -0.32810414 ;
	setAttr ".tk[7]" -type "float3" 0 0 -0.32810414 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "05039D7A-48AE-B742-B9BE-9186D1F0488F";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 2.0106645934269443 0 0 0 0 3.368108857944565 0 0 0 0 0.14682597133775141 0
		 4.6572286875457785 2.2913169702851452 -3.0734129769586205 1;
	setAttr ".am" yes;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "CA1431A0-436D-027D-8E09-988F8234ED2A";
	setAttr ".ics" -type "componentList" 1 "f[0:12]";
	setAttr ".ix" -type "matrix" 2.0106645934269443 0 0 0 0 3.368108857944565 0 0 0 0 0.14682597133775141 0
		 5.4249680705842991 2.2913169702851452 -3.0734129769586205 1;
	setAttr ".ws" yes;
	setAttr ".s" -type "double3" 1.5477527763881345 1.3131366121151518 1 ;
	setAttr ".pvt" -type "float3" 5.4249668 2.8623204 -3.0975003 ;
	setAttr ".rs" 45062;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.4196345754213384 0.60726254131286272 -3.1950004339895388 ;
	setAttr ".cbx" -type "double3" 6.4302994085381808 5.1173780762327965 -3.0000002713380605 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "B86BEEF6-42D2-9E29-740A-2A8EFD896ED6";
	setAttr ".uopa" yes;
	setAttr -s 52 ".tk[0:51]" -type "float3"  0.19213098 -0.045433339 0
		 0.19213098 -0.045433339 0 0.19213116 -0.045433387 1.9073486e-06 0.19213098 -0.045433339
		 0 0.19213098 -0.045433339 0 0.19213098 -0.045433339 0 0.19213098 -0.045433339 0 0.19213098
		 -0.045433339 0 0.19213098 -0.045433339 0 0.19213098 -0.045433339 0 0.19213098 -0.045433339
		 0 0.19213098 -0.045433339 0 0.19213098 -0.045433339 0 0.19213098 -0.045433339 0 0.19213098
		 -0.045433339 0 0.19213098 -0.045433339 0 0.19213098 -0.045433339 0 0.19213098 -0.045433339
		 0 0.19213098 -0.045433339 0 0.19213098 -0.045433339 0 0.19213098 -0.045433339 0 0.19213098
		 -0.045433339 0 0.19213098 -0.045433339 0 0.19213098 -0.045433339 0 0.19213098 -0.045433339
		 0 0.19213098 -0.045433339 0 -1.12962604 -0.047938906 0 0.40369275 -0.047938976 1.6834222e-06
		 0.40369275 0.0099571012 1.6834222e-06 -1.03264308 0.009957172 0 0.38930368 -0.16163054
		 0 0.38930368 -0.16163054 0 -1.03264308 -0.16163054 0 -1.12962604 -0.16163054 0 -1.070515633
		 -0.026210381 0 -1.16749859 -0.026210381 0 -1.18042421 0.1945495 0 -1.27740717 0.19454974
		 0 -0.56963909 0.1078463 0 -0.56963909 0.10784676 0 -0.16195394 0.052179839 0 -0.16195394
		 0.052179839 0 0.036441524 0.032997712 0 0.036441524 0.032998435 0 0.17048928 0.052179839
		 0 0.17048928 0.052179839 0 0.27546763 0.1078463 0 0.27546763 0.10784676 0 0.5370847
		 0.19454952 0 0.5370847 0.19454975 0 0.42717582 -0.026210381 0 0.42717582 -0.026210381
		 0;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "97ABEFBD-4F47-3F8B-84AB-B1A817DE696C";
	setAttr ".dc" -type "componentList" 1 "f[13]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "9DCBCC0D-4E6F-9404-72CD-139CAFDF4D68";
	setAttr ".dc" -type "componentList" 1 "f[13]";
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "FF782978-411C-70B2-5CEB-11A95D11177A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[39]" "e[41:42]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53]" "e[55]" "e[57]" "e[59]" "e[61]" "e[63]";
	setAttr ".ix" -type "matrix" 1.6291631220845542 0 0 0 0 4.0716362508012542 0 0 0 0 0.17971541101585575 0
		 1.0195988888269145 2.8396449452215902 -3.0826583465826012 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0195993 2.8396447 -2.9225068 ;
	setAttr ".rs" 36547;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.20501732778463744 0.80382633444409812 -2.9225067580618607 ;
	setAttr ".cbx" -type "double3" 1.8341812267147048 4.8754630706222173 -2.9225067580618607 ;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "EB85F216-45E4-A4CF-8D99-62977F5827FC";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "8F93F678-4FA2-5898-CCC2-079F37A4AE75";
	setAttr ".dc" -type "componentList" 1 "f[0:11]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "63A03012-4675-B23A-A561-14A93B73DDA0";
	setAttr ".dc" -type "componentList" 13 "f[26]" "f[28]" "f[30]" "f[32]" "f[34]" "f[36]" "f[38]" "f[40]" "f[42]" "f[44]" "f[46]" "f[48]" "f[50]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "A62407F1-4778-1B70-0D12-E9A7BAC81D75";
	setAttr ".dc" -type "componentList" 13 "f[39]" "f[41]" "f[43]" "f[45]" "f[47]" "f[49]" "f[51]" "f[53]" "f[55]" "f[57]" "f[59]" "f[61]" "f[63]";
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "6E4D70BE-40B0-22EA-68ED-1A9E3A94C1EB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[0]" "e[2:3]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[24]";
	setAttr ".ix" -type "matrix" 1.6291631220845542 0 0 0 0 4.0716362508012542 0 0 0 0 0.17971541101585575 0
		 1.0195988888269145 2.8396449452215902 -3.0826583465826012 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" -1.3100631690576847e-14 3.1086244689504383e-15 -0.70432394848742996 ;
	setAttr ".pvt" -type "float3" 1.0195993 2.8396447 -3.6268301 ;
	setAttr ".rs" 51235;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.20501732778463744 0.80382633444409812 -2.9225067580618607 ;
	setAttr ".cbx" -type "double3" 1.8341812267147048 4.8754630706222173 -2.9225067580618607 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "A5C69CC0-4D71-85BF-0DE7-318AD099698A";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1.6291631220845542 0 0 0 0 4.0716362508012542 0 0 0 0 0.17971541101585575 0
		 1.0195988888269145 2.8396449452215902 -3.0826583465826012 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "DA3E66BB-464F-272E-67AF-C8B5CCB844C9";
	setAttr ".uopa" yes;
	setAttr -s 48 ".tk";
	setAttr ".tk[0]" -type "float3" -2.9802322e-08 0 -2.3841858e-07 ;
	setAttr ".tk[5]" -type "float3" -2.2820094e-08 1.0596921e-08 -2.3841858e-07 ;
	setAttr ".tk[147]" -type "float3" 0 0 2.1368208 ;
	setAttr ".tk[148]" -type "float3" 0 0 2.1368208 ;
	setAttr ".tk[149]" -type "float3" 0 0 2.1368208 ;
	setAttr ".tk[150]" -type "float3" 0 0 2.1368208 ;
	setAttr ".tk[151]" -type "float3" 0 0 2.1368208 ;
	setAttr ".tk[152]" -type "float3" 0 0 2.1368208 ;
	setAttr ".tk[153]" -type "float3" 0 0 2.1368208 ;
	setAttr ".tk[154]" -type "float3" 0 0 2.1368208 ;
	setAttr ".tk[155]" -type "float3" 0 0 2.1368208 ;
	setAttr ".tk[156]" -type "float3" 0 0 2.1368208 ;
	setAttr ".tk[157]" -type "float3" 0 0 2.1368208 ;
	setAttr ".tk[158]" -type "float3" 0 0 2.1368208 ;
	setAttr ".tk[159]" -type "float3" 0 0 2.1368208 ;
createNode polyNormal -n "polyNormal9";
	rename -uid "06877D9A-4DAD-87BB-A218-AD99B2F65CE0";
	setAttr ".ics" -type "componentList" 3 "f[13]" "f[44:45]" "f[101:112]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal10";
	rename -uid "449C76A7-4B63-12CA-CE6B-9699E7488A39";
	setAttr ".ics" -type "componentList" 1 "f[102]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal11";
	rename -uid "E8A6157F-4FB4-FA17-A60F-43BFC99E9B8D";
	setAttr ".ics" -type "componentList" 1 "f[44:45]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal12";
	rename -uid "A52BA0B9-43B2-525D-4AF1-D3A3C0831049";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".unm" no;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "EFE80B14-46EF-4982-F052-C29BA5D42936";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 2 ".l";
select -ne :defaultTextureList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 2 ".dsm";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "deleteComponent5.og" "windowWallShape.i";
connectAttr "deleteComponent2.og" "|TileFloor|TileGroup02|Tile01|TileShape1.i";
connectAttr "polyNormal12.out" "pCubeShape1.i";
connectAttr "polyCube3.out" "pCubeShape2.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "WallColor.oc" "lambert2SG.ss";
connectAttr "WhiteBoxRoomShape.iog" "lambert2SG.dsm" -na;
connectAttr "windowWallShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "WallColor.msg" "materialInfo1.m";
connectAttr "polyTweak1.out" "polyBevel1.ip";
connectAttr "|TileFloor|TileGroup02|Tile01|TileShape1.wm" "polyBevel1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyBevel1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "FloorColor.oc" "lambert3SG.ss";
connectAttr "|TileFloor|TileGroup06|Tile04|TileShape4.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup06|Tile03|TileShape3.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup06|Tile02|TileShape2.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup06|Tile01|TileShape1.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup05|Tile03|TileShape3.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup05|Tile02|TileShape2.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup05|Tile01|TileShape1.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup04|Tile04|TileShape4.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup04|Tile03|TileShape3.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup04|Tile02|TileShape2.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup04|Tile01|TileShape1.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup03|Tile03|TileShape3.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup03|Tile02|TileShape2.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup03|Tile01|TileShape1.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup01|Tile04|TileShape4.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup01|Tile03|TileShape3.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup01|Tile02|TileShape2.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup01|Tile01|TileShape1.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup02|Tile03|TileShape3.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup02|Tile02|TileShape2.iog" "lambert3SG.dsm" -na;
connectAttr "|TileFloor|TileGroup02|Tile01|TileShape1.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "FloorColor.msg" "materialInfo2.m";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "lambert5.msg" "materialInfo4.m";
connectAttr "polyCube2.out" "polyBevel2.ip";
connectAttr "pCubeShape1.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "polyMergeVert1.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polyExtrudeEdge1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyNormal2.ip";
connectAttr "polyNormal2.out" "polyNormal3.ip";
connectAttr "polyNormal3.out" "polyNormal4.ip";
connectAttr "polyNormal4.out" "polyNormal5.ip";
connectAttr "polyNormal5.out" "polyNormal6.ip";
connectAttr "polyNormal6.out" "polyNormal7.ip";
connectAttr "WindowColor.oc" "lambert6SG.ss";
connectAttr "pCubeShape2.iog" "lambert6SG.dsm" -na;
connectAttr "pCubeShape3.iog" "lambert6SG.dsm" -na;
connectAttr "pCubeShape5.iog" "lambert6SG.dsm" -na;
connectAttr "pCubeShape6.iog" "lambert6SG.dsm" -na;
connectAttr "pCubeShape4.iog" "lambert6SG.dsm" -na;
connectAttr "pCubeShape1.iog" "lambert6SG.dsm" -na;
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "WindowColor.msg" "materialInfo5.m";
connectAttr "polyNormal7.out" "polyNormal8.ip";
connectAttr "FloorColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "areaLightShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "WallColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "directionalLightShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "test1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "lambert4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "lambert5SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "WindowColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "lambert6SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "polyTweak2.out" "polyBevel3.ip";
connectAttr "windowWallShape.wm" "polyBevel3.mp";
connectAttr "polyCube4.out" "polyTweak2.ip";
connectAttr "polyBevel3.out" "polyMergeVert2.ip";
connectAttr "windowWallShape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyExtrudeFace8.ip";
connectAttr "windowWallShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "polyNormal8.out" "polyExtrudeEdge2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "polyExtrudeEdge3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge3.mp";
connectAttr "polyTweak4.out" "polyMergeVert3.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert3.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak4.ip";
connectAttr "polyMergeVert3.out" "polyNormal9.ip";
connectAttr "polyNormal9.out" "polyNormal10.ip";
connectAttr "polyNormal10.out" "polyNormal11.ip";
connectAttr "polyNormal11.out" "polyNormal12.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "WallColor.msg" ":defaultShaderList1.s" -na;
connectAttr "FloorColor.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "WindowColor.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "areaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "test1.msg" ":defaultTextureList1.tx" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "areaLight1.iog" ":defaultLightSet.dsm" -na;
// End of WBRwindowTrim.ma
