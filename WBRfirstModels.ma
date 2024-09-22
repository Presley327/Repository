//Maya ASCII 2024 scene
//Name: WBRfirstModels.ma
//Last modified: Sat, Sep 21, 2024 11:10:57 PM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "4B330A68-4A2B-7FE8-290D-F6BF7FDEBBDE";
createNode transform -s -n "persp";
	rename -uid "9536D788-45E4-9ECB-BECB-8EABE4ECE813";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.085845988388728 6.5194776506916243 13.636033409027137 ;
	setAttr ".r" -type "double3" -13.800000000010183 402.40000000022167 0 ;
	setAttr ".rp" -type "double3" 0 5.5511151231257827e-17 1.0408340855860843e-17 ;
	setAttr ".rpt" -type "double3" -1.4333997889467535e-16 2.1196764983814206e-17 -1.8676406094446098e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1ECE49BE-43C0-4AD6-8BE8-348A06312B83";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 18.955012334416168;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.3096299991636549 0.16743348027581845 -1.5815814746503303 ;
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
	setAttr ".t" -type "double3" -0.37861317257845845 0.34554335414974785 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1B491C9B-4DB1-7A96-0463-9E9ADAA5CF02";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 2.4948982416158989;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "718F3220-4E15-40FB-CFF5-6C9F950CFC4B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0.34134428902909697 0.9634325848646943 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7B13069D-43EE-00B0-1893-E8BE434E6893";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 1.8895025056771539;
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
	setAttr ".rp" -type "double3" -0.37302773231696529 0.67260429996972637 -3 ;
	setAttr ".sp" -type "double3" -0.37302773231696529 0.67260429996972637 -3 ;
createNode mesh -n "windowWallShape" -p "windowWall";
	rename -uid "3C95E91D-44E3-7B2F-CCBE-CE9634D18838";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[0]" "f[13:14]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[2:4]" "f[17:22]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 4 "f[1]" "f[11:12]" "f[15:16]" "f[35:38]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[5:10]" "f[23:34]";
	setAttr ".pv" -type "double2" 0.3125 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.125 0 0.125 0.19427875 0.62500036 -4.4084913e-10 0.875 0 0.37499964 0.19427904
		 0.50000012 0.5 0.49999994 0.25000036 0.875 0.19427909 0.375 0 0.62500036 0.19427904
		 0.375 0.75 0.45484635 0.25000024 0.41247085 0.25000012 0.375 0.25 0.37499982 0.22023962
		 0.125 0.22023949 0.375 0.5 0.125 0.25 0.41247091 0.5 0.45484647 0.5 0.62500018 0.22023964
		 0.625 0.25 0.58752906 0.25000009 0.5451535 0.25000021 0.54515362 0.5 0.58752906 0.5
		 0.875 0.25 0.625 0.5 0.875 0.22023968 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.19427909 0.62500036 0.19427904 0.62500036 -4.4084913e-10 0.375 0 0.37499964
		 0.19427904 0.125 0.19427875 0.125 0 0.37499982 0.22023962 0.125 0.22023949 0.375
		 0.25 0.125 0.25 0.41247085 0.25000012 0.41247091 0.5 0.375 0.5 0.45484635 0.25000024
		 0.45484647 0.5 0.49999994 0.25000036 0.50000012 0.5 0.5451535 0.25000021 0.54515362
		 0.5 0.58752906 0.25000009 0.58752906 0.5 0.625 0.25 0.625 0.5 0.62500018 0.22023964
		 0.875 0.22023968 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt[0:51]" -type "float3"  0.32115147 1.0650132 -3.4999983 
		1.3318161 1.0650132 -3.4999983 0.32115164 1.0650131 -2.3668962 1.3318161 1.0650132 
		-2.3668945 0.6702925 4.2014713 -3.4999983 0.52943617 4.1010818 -3.4999983 0.41765162 
		3.9447205 -3.4999983 0.34588155 3.7476931 -3.4999983 0.32115147 3.5292881 -3.4999983 
		0.82648379 4.236064 -3.4999983 0.32115147 3.5292871 -2.3668945 0.34588155 3.7476931 
		-2.3668945 0.41765162 3.9447203 -2.3668945 0.52943617 4.1010814 -2.3668945 0.6702925 
		4.2014709 -2.3668945 0.82648379 4.236063 -2.3668945 1.3070858 3.7476931 -3.4999983 
		1.2353159 3.9447205 -3.4999983 1.1235316 4.1010818 -3.4999983 0.9826746 4.2014713 
		-3.4999983 1.3318161 3.5292881 -3.4999983 1.3318161 3.5292871 -2.3668945 0.9826746 
		4.2014709 -2.3668945 1.1235316 4.1010814 -2.3668945 1.2353159 3.9447203 -2.3668945 
		1.3070858 3.7476931 -2.3668945 -1.2914988 0.56259382 -2.3668945 1.8224312 0.56259358 
		-2.3668959 1.8224312 0.69969779 -3.4999998 -1.1934816 0.69969803 -3.4999983 1.8078887 
		3.5292876 -2.3668945 1.8078887 3.5292888 -3.4999983 -1.1934816 3.5292888 -3.4999983 
		-1.2914988 3.5292876 -2.3668945 -1.1934816 4.1367745 -3.4999983 -1.2914988 4.1367745 
		-2.3668945 -1.19348 4.918282 -3.4999983 -1.2914973 4.918282 -2.3668945 -0.40316668 
		4.918283 -3.4999983 -0.40316668 4.918283 -2.3668945 0.22687763 4.9182835 -3.4999983 
		0.22687763 4.9182835 -2.3668945 0.6691342 4.9182839 -3.4999983 0.6691342 4.9182839 
		-2.3668945 1.0463558 4.9182835 -3.4999983 1.0463558 4.9182835 -2.3668945 1.3704659 
		4.918283 -3.4999983 1.3704659 4.918283 -2.3668945 1.8078872 4.918282 -3.4999983 1.8078872 
		4.918282 -2.3668945 1.8078883 4.1367745 -3.4999983 1.8078883 4.1367745 -2.3668945;
	setAttr -s 52 ".vt[0:51]"  -0.30786949 -0.54543334 0.49999809 0.69213051 -0.54543334 0.49999809
		 -0.30786932 -0.5454334 -0.82810402 0.69213051 -0.54543334 -0.82810593 0.037587345 0.77902353 0.49999809
		 -0.10178262 0.73663127 0.49999809 -0.21238762 0.67060339 0.49999809 -0.28340036 0.58740306 0.49999809
		 -0.30786949 0.49517548 0.49999809 0.19213051 0.79363132 0.49999809 -0.30786949 0.495175 -0.82810593
		 -0.28340036 0.58740306 -0.82810593 -0.21238762 0.67060328 -0.82810593 -0.10178262 0.73663104 -0.82810593
		 0.037587345 0.77902341 -0.82810593 0.19213051 0.79363084 -0.82810593 0.66766113 0.58740306 0.49999809
		 0.59664863 0.67060339 0.49999809 0.48604387 0.73663127 0.49999809 0.34667319 0.77902353 0.49999809
		 0.69213051 0.49517548 0.49999809 0.69213051 0.495175 -0.82810593 0.34667319 0.77902341 -0.82810593
		 0.48604387 0.73663104 -0.82810593 0.59664863 0.67060328 -0.82810593 0.66766113 0.58740306 -0.82810593
		 -1.90350294 -0.75759393 -0.82810593 1.17756867 -0.75759405 -0.82810426 1.17756867 -0.69969797 0.49999976
		 -1.80651999 -0.69969785 0.49999809 1.16317964 0.49517527 -0.82810593 1.16317964 0.49517575 0.49999809
		 -1.80651999 0.49517575 0.49999809 -1.90350294 0.49517527 -0.82810593 -1.80651999 0.75170362 0.49999809
		 -1.90350294 0.75170362 -0.82810593 -1.80651855 1.081716776 0.49999809 -1.90350151 1.081716776 -0.82810593
		 -1.024544597 1.081717253 0.49999809 -1.024544597 1.081717253 -0.82810593 -0.40114856 1.081717491 0.49999809
		 -0.40114856 1.081717491 -0.82810593 0.036441285 1.08171761 0.49999809 0.036441285 1.08171761 -0.82810593
		 0.40968248 1.081717491 0.49999809 0.40968248 1.081717491 -0.82810593 0.73037243 1.081717253 0.49999809
		 0.73037243 1.081717253 -0.82810593 1.16317809 1.081716776 0.49999809 1.16317809 1.081716776 -0.82810593
		 1.16317916 0.75170362 0.49999809 1.16317916 0.75170362 -0.82810593;
	setAttr -s 91 ".ed[0:90]"  0 1 1 2 3 1 0 8 1 1 20 1 10 2 1 21 3 1 8 7 1
		 11 10 1 7 6 1 12 11 1 6 5 1 13 12 1 5 4 1 14 13 1 4 9 1 15 14 1 9 19 1 22 15 1 19 18 1
		 23 22 1 18 17 1 24 23 1 17 16 1 25 24 1 16 20 1 21 25 1 2 26 1 3 27 1 26 27 0 1 28 1
		 27 28 0 0 29 1 29 28 0 26 29 0 21 30 1 30 27 0 20 31 1 30 31 1 28 31 0 8 32 1 29 32 0
		 10 33 1 32 33 1 33 26 0 7 34 1 32 34 0 11 35 1 34 35 1 35 33 0 6 36 1 34 36 0 12 37 1
		 36 37 1 37 35 0 5 38 1 36 38 0 13 39 1 38 39 1 39 37 0 4 40 1 38 40 0 14 41 1 40 41 1
		 41 39 0 9 42 1 40 42 0 15 43 1 43 42 1 43 41 0 19 44 1 42 44 0 22 45 1 44 45 1 45 43 0
		 18 46 1 44 46 0 23 47 1 46 47 1 47 45 0 17 48 1 46 48 0 24 49 1 48 49 1 49 47 0 16 50 1
		 48 50 0 25 51 1 50 51 1 51 49 0 50 31 0 30 51 0;
	setAttr -s 39 -ch 156 ".fc[0:38]" -type "polyFaces" 
		f 4 28 30 -33 -34
		mu 0 4 32 33 34 35
		f 4 -31 -36 37 -39
		mu 0 4 39 36 37 38
		f 4 33 40 42 43
		mu 0 4 43 40 41 42
		f 4 45 47 48 -43
		mu 0 4 41 44 45 42
		f 4 50 52 53 -48
		mu 0 4 44 46 47 45
		f 4 55 57 58 -53
		mu 0 4 46 48 49 50
		f 4 60 62 63 -58
		mu 0 4 48 51 52 49
		f 4 65 -68 68 -63
		mu 0 4 51 53 54 52
		f 4 70 72 73 67
		mu 0 4 53 55 56 54
		f 4 75 77 78 -73
		mu 0 4 55 57 58 56
		f 4 80 82 83 -78
		mu 0 4 57 59 60 58
		f 4 85 87 88 -83
		mu 0 4 59 61 62 63
		f 4 89 -38 90 -88
		mu 0 4 61 38 37 62
		f 4 1 27 -29 -27
		mu 0 4 13 0 33 32
		f 4 -1 31 32 -30
		mu 0 4 2 1 35 34
		f 4 -6 34 35 -28
		mu 0 4 6 10 37 36
		f 4 -4 29 38 -37
		mu 0 4 12 5 39 38
		f 4 2 39 -41 -32
		mu 0 4 11 7 41 40
		f 4 4 26 -44 -42
		mu 0 4 4 3 43 42
		f 4 6 44 -46 -40
		mu 0 4 7 17 44 41
		f 4 7 41 -49 -47
		mu 0 4 18 4 42 45
		f 4 8 49 -51 -45
		mu 0 4 17 16 46 44
		f 4 9 46 -54 -52
		mu 0 4 20 18 45 47
		f 4 10 54 -56 -50
		mu 0 4 16 15 48 46
		f 4 11 51 -59 -57
		mu 0 4 21 19 50 49
		f 4 12 59 -61 -55
		mu 0 4 15 14 51 48
		f 4 13 56 -64 -62
		mu 0 4 22 21 49 52
		f 4 14 64 -66 -60
		mu 0 4 14 9 53 51
		f 4 15 61 -69 -67
		mu 0 4 8 22 52 54
		f 4 16 69 -71 -65
		mu 0 4 9 26 55 53
		f 4 17 66 -74 -72
		mu 0 4 27 8 54 56
		f 4 18 74 -76 -70
		mu 0 4 26 25 57 55
		f 4 19 71 -79 -77
		mu 0 4 28 27 56 58
		f 4 20 79 -81 -75
		mu 0 4 25 24 59 57
		f 4 21 76 -84 -82
		mu 0 4 30 28 58 60
		f 4 22 84 -86 -80
		mu 0 4 24 23 61 59
		f 4 23 81 -89 -87
		mu 0 4 31 29 63 62
		f 4 24 36 -90 -85
		mu 0 4 23 12 38 61
		f 4 25 86 -91 -35
		mu 0 4 10 31 62 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Trim" -p "Walls";
	rename -uid "4037A51E-4C81-3B3B-E419-F38DBB3CB20F";
createNode transform -n "Trim02" -p "Trim";
	rename -uid "50FA6E27-48CE-2851-E8D3-6F9B6AB48817";
	setAttr ".rp" -type "double3" -2.8188695907592773 6 -3.0000002384185791 ;
	setAttr ".sp" -type "double3" -2.8188695907592773 6 -3.0000002384185791 ;
createNode mesh -n "TrimShape2" -p "Trim02";
	rename -uid "F996CDB3-472F-1B76-B80E-9CBCFAF7628F";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  3.4711304 6.2870893 -3.3188698 
		2.4711304 6.2870893 -3.5 3.4711304 5.4999995 -3.3188698 2.4711304 5.4999995 -3.5 
		-2.3188696 5.4999995 -2.3188698 -3.3188696 5.4999995 -2.5 -2.3188696 6.2870893 -2.3188698 
		-3.3188696 6.2870893 -2.5;
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
createNode transform -n "Trim01" -p "Trim";
	rename -uid "7720146A-44DA-8131-C5D7-279903BF117E";
	setAttr ".rp" -type "double3" -3.0000000000000004 5.9999999999999991 -3 ;
	setAttr ".sp" -type "double3" -3.0000000000000004 5.9999999999999991 -3 ;
createNode mesh -n "Trim01Shape" -p "Trim01";
	rename -uid "94CCF73C-4785-8407-E69C-CF8053A46573";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.4999998 6.2870893 2.4999998 
		-3.3188696 6.2870893 2.4999998 -2.4999998 5.4999995 2.4999998 -3.3188696 5.4999995 
		2.4999998 -2.4999998 5.4999995 -2.5000002 -3.3188696 5.4999995 -2.5000002 -2.4999998 
		6.2870893 -2.5000002 -3.3188696 6.2870893 -2.5000002;
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
createNode transform -n "TileFloor";
	rename -uid "136A7591-4753-9DF4-3C0C-AF84BBBE855A";
createNode transform -n "TileGroup01" -p "TileFloor";
	rename -uid "48F922E1-4757-7954-F846-5B8D3BD5B40F";
	setAttr ".rp" -type "double3" 3 0 3 ;
	setAttr ".sp" -type "double3" 3 0 3 ;
createNode transform -n "Tile01" -p "TileGroup01";
	rename -uid "5B494856-4A0B-1E57-F4D7-E2A4FE3F9240";
	setAttr ".rp" -type "double3" 3 -3.7252902984619141e-09 3 ;
	setAttr ".sp" -type "double3" 3 -3.7252902984619141e-09 3 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.5 0.49999994 2.5 2.5 0.49999994 
		2.5 2.5 0.49999994 3.5 2.5 0.49999994 3.5 2.5 -0.26371592 2.5 2.5 -0.39847344 2.5 
		2.5 -0.39847344 2.5 2.5 -0.26371592 2.5 2.5 -0.39847344 3.5 2.5 -0.26371592 3.5 2.5 
		-0.39847344 3.5 2.5 -0.26371592 3.5;
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
	setAttr ".rp" -type "double3" 3 -3.7252902984619141e-09 1 ;
	setAttr ".sp" -type "double3" 3 -3.7252902984619141e-09 1 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.5 0.49999994 1.5 2.5 0.49999994 
		1.5 2.5 0.49999994 1.5 2.5 0.49999994 1.5 2.5 -0.26371592 1.5 2.5 -0.39847344 1.5 
		2.5 -0.39847344 1.5 2.5 -0.26371592 1.5 2.5 -0.39847344 1.5 2.5 -0.26371592 1.5 2.5 
		-0.39847344 1.5 2.5 -0.26371592 1.5;
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
	setAttr ".rp" -type "double3" 3 -3.7252902984619141e-09 -1 ;
	setAttr ".sp" -type "double3" 3 -3.7252902984619141e-09 -1 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.5 0.49999994 -0.5 2.5 0.49999994 
		-0.5 2.5 0.49999994 -0.50761372 2.5 0.49999994 -0.50761372 2.5 -0.26371592 -0.5 2.5 
		-0.39847344 -0.5 2.5 -0.39847344 -0.5 2.5 -0.26371592 -0.5 2.5 -0.39847344 -0.50761372 
		2.5 -0.26371592 -0.50761372 2.5 -0.39847344 -0.50761372 2.5 -0.26371592 -0.50761372;
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
	setAttr ".rp" -type "double3" 3 -3.7252902984619141e-09 -2.0076136589050293 ;
	setAttr ".sp" -type "double3" 3 -3.7252902984619141e-09 -2.0076136589050293 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.5 0.49999994 -2.5076137 
		2.5 0.49999994 -2.5076137 2.5 0.49999994 -1.5076137 2.5 0.49999994 -1.5076137 2.5 
		-0.26371592 -2.5076137 2.5 -0.39847344 -2.5076137 2.5 -0.39847344 -2.5076137 2.5 
		-0.26371592 -2.5076137 2.5 -0.39847344 -1.5076137 2.5 -0.26371592 -1.5076137 2.5 
		-0.39847344 -1.5076137 2.5 -0.26371592 -1.5076137;
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
createNode transform -n "TileGroup02" -p "TileFloor";
	rename -uid "260450C9-41EA-D634-E4FF-5D9954C2D231";
	setAttr ".rp" -type "double3" 3 0 3 ;
	setAttr ".sp" -type "double3" 3 0 3 ;
createNode transform -n "Tile01" -p "TileGroup02";
	rename -uid "5526A13D-4B8B-4A63-A2F3-929FC62964A9";
	setAttr ".rp" -type "double3" 2 0 3 ;
	setAttr ".sp" -type "double3" 2 0 3 ;
createNode mesh -n "TileShape1" -p "|TileFloor|TileGroup02|Tile01";
	rename -uid "413510BC-43E9-1276-689C-DE8FDED07FC8";
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.5 0.49999994 2.5 1.5 0.49999994 
		2.5 1.5 0.49999994 2.5 1.5 0.49999994 2.5 1.5 -0.26371592 2.5 1.5 -0.39847344 2.5 
		1.5 -0.39847344 2.5 1.5 -0.26371592 2.5 1.5 -0.39847344 2.5 1.5 -0.26371592 2.5 1.5 
		-0.39847344 2.5 1.5 -0.26371592 2.5;
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
createNode transform -n "Tile02" -p "TileGroup02";
	rename -uid "6483AA78-4B58-728C-2749-0DA354098574";
	setAttr ".rp" -type "double3" 2 0 1 ;
	setAttr ".sp" -type "double3" 2 0 1 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.5 0.49999994 0.5 1.5 0.49999994 
		0.5 1.5 0.49999994 0.5 1.5 0.49999994 0.5 1.5 -0.26371592 0.5 1.5 -0.39847344 0.5 
		1.5 -0.39847344 0.5 1.5 -0.26371592 0.5 1.5 -0.39847344 0.5 1.5 -0.26371592 0.5 1.5 
		-0.39847344 0.5 1.5 -0.26371592 0.5;
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
	setAttr ".rp" -type "double3" 2 0 -1 ;
	setAttr ".sp" -type "double3" 2 0 -1 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.5 0.49999994 -1.5 1.5 0.49999994 
		-1.5 1.5 0.49999994 -1.5 1.5 0.49999994 -1.5 1.5 -0.26371592 -1.5 1.5 -0.39847344 
		-1.5 1.5 -0.39847344 -1.5 1.5 -0.26371592 -1.5 1.5 -0.39847344 -1.5 1.5 -0.26371592 
		-1.5 1.5 -0.39847344 -1.5 1.5 -0.26371592 -1.5;
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
createNode transform -n "TileGroup03" -p "TileFloor";
	rename -uid "AE1AC2D0-45FA-47A1-BA48-B5ABD6682A03";
	setAttr ".rp" -type "double3" 1 3.7252902984619141e-09 3 ;
	setAttr ".sp" -type "double3" 1 3.7252902984619141e-09 3 ;
createNode transform -n "Tile01" -p "TileGroup03";
	rename -uid "E33A715B-47F4-82C1-138D-3B976CD1B697";
	setAttr ".rp" -type "double3" 0 3.7252902984619141e-09 3 ;
	setAttr ".sp" -type "double3" 0 3.7252902984619141e-09 3 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.5 0.49999994 2.5 -0.5 
		0.49999994 2.5 -0.5 0.49999994 2.5 -0.5 0.49999994 2.5 -0.5 -0.26371592 2.5 -0.5 
		-0.39847341 2.5 -0.5 -0.39847341 2.5 -0.5 -0.26371592 2.5 -0.5 -0.39847341 2.5 -0.5 
		-0.26371592 2.5 -0.5 -0.39847341 2.5 -0.5 -0.26371592 2.5;
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
	setAttr ".rp" -type "double3" 0 3.7252902984619141e-09 1 ;
	setAttr ".sp" -type "double3" 0 3.7252902984619141e-09 1 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.5 0.49999994 0.5 -0.5 
		0.49999994 0.5 -0.5 0.49999994 0.5 -0.5 0.49999994 0.5 -0.5 -0.26371592 0.5 -0.5 
		-0.39847341 0.5 -0.5 -0.39847341 0.5 -0.5 -0.26371592 0.5 -0.5 -0.39847341 0.5 -0.5 
		-0.26371592 0.5 -0.5 -0.39847341 0.5 -0.5 -0.26371592 0.5;
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
	setAttr ".rp" -type "double3" 0 3.7252902984619141e-09 -1 ;
	setAttr ".sp" -type "double3" 0 3.7252902984619141e-09 -1 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.5 0.49999994 -1.5 -0.5 
		0.49999994 -1.5 -0.5 0.49999994 -1.5 -0.5 0.49999994 -1.5 -0.5 -0.26371592 -1.5 -0.5 
		-0.39847341 -1.5 -0.5 -0.39847341 -1.5 -0.5 -0.26371592 -1.5 -0.5 -0.39847341 -1.5 
		-0.5 -0.26371592 -1.5 -0.5 -0.39847341 -1.5 -0.5 -0.26371592 -1.5;
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
	setAttr ".rp" -type "double3" 1 3.7252902984619141e-09 3 ;
	setAttr ".sp" -type "double3" 1 3.7252902984619141e-09 3 ;
createNode transform -n "Tile01" -p "TileGroup04";
	rename -uid "69877BB4-422A-A1CD-C782-3DAF20112639";
	setAttr ".rp" -type "double3" 1 0 3 ;
	setAttr ".sp" -type "double3" 1 0 3 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.5 0.49999994 2.5 0.5 0.49999994 
		2.5 0.5 0.49999994 3.5 0.5 0.49999994 3.5 0.5 -0.26371592 2.5 0.5 -0.39847344 2.5 
		0.5 -0.39847344 2.5 0.5 -0.26371592 2.5 0.5 -0.39847344 3.5 0.5 -0.26371592 3.5 0.5 
		-0.39847344 3.5 0.5 -0.26371592 3.5;
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
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.5 0.49999994 1.5 0.5 0.49999994 
		1.5 0.5 0.49999994 1.5 0.5 0.49999994 1.5 0.5 -0.26371592 1.5 0.5 -0.39847344 1.5 
		0.5 -0.39847344 1.5 0.5 -0.26371592 1.5 0.5 -0.39847344 1.5 0.5 -0.26371592 1.5 0.5 
		-0.39847344 1.5 0.5 -0.26371592 1.5;
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
	setAttr ".rp" -type "double3" 1 0 -1 ;
	setAttr ".sp" -type "double3" 1 0 -1 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.5 0.49999994 -0.5 0.5 0.49999994 
		-0.5 0.5 0.49999994 -0.50761372 0.5 0.49999994 -0.50761372 0.5 -0.26371592 -0.5 0.5 
		-0.39847344 -0.5 0.5 -0.39847344 -0.5 0.5 -0.26371592 -0.5 0.5 -0.39847344 -0.50761372 
		0.5 -0.26371592 -0.50761372 0.5 -0.39847344 -0.50761372 0.5 -0.26371592 -0.50761372;
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
	setAttr ".rp" -type "double3" 1 0 -2.0076136589050293 ;
	setAttr ".sp" -type "double3" 1 0 -2.0076136589050293 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.5 0.49999994 -2.5076137 
		0.5 0.49999994 -2.5076137 0.5 0.49999994 -1.5076137 0.5 0.49999994 -1.5076137 0.5 
		-0.26371592 -2.5076137 0.5 -0.39847344 -2.5076137 0.5 -0.39847344 -2.5076137 0.5 
		-0.26371592 -2.5076137 0.5 -0.39847344 -1.5076137 0.5 -0.26371592 -1.5076137 0.5 
		-0.39847344 -1.5076137 0.5 -0.26371592 -1.5076137;
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
	setAttr ".rp" -type "double3" -1 7.4505805969238281e-09 3 ;
	setAttr ".sp" -type "double3" -1 7.4505805969238281e-09 3 ;
createNode transform -n "Tile01" -p "TileGroup05";
	rename -uid "93D52E97-46CC-8FF0-A0B3-E4AC245AF593";
	setAttr ".rp" -type "double3" -2 7.4505805969238281e-09 3 ;
	setAttr ".sp" -type "double3" -2 7.4505805969238281e-09 3 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5 0.49999994 2.5 -2.5 
		0.49999994 2.5 -2.5 0.49999994 2.5 -2.5 0.49999994 2.5 -2.5 -0.26371592 2.5 -2.5 
		-0.39847341 2.5 -2.5 -0.39847341 2.5 -2.5 -0.26371592 2.5 -2.5 -0.39847341 2.5 -2.5 
		-0.26371592 2.5 -2.5 -0.39847341 2.5 -2.5 -0.26371592 2.5;
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
	setAttr ".rp" -type "double3" -2 7.4505805969238281e-09 1 ;
	setAttr ".sp" -type "double3" -2 7.4505805969238281e-09 1 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5 0.49999994 0.5 -2.5 
		0.49999994 0.5 -2.5 0.49999994 0.5 -2.5 0.49999994 0.5 -2.5 -0.26371592 0.5 -2.5 
		-0.39847341 0.5 -2.5 -0.39847341 0.5 -2.5 -0.26371592 0.5 -2.5 -0.39847341 0.5 -2.5 
		-0.26371592 0.5 -2.5 -0.39847341 0.5 -2.5 -0.26371592 0.5;
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
	setAttr ".rp" -type "double3" -2 7.4505805969238281e-09 -1 ;
	setAttr ".sp" -type "double3" -2 7.4505805969238281e-09 -1 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5 0.49999994 -1.5 -2.5 
		0.49999994 -1.5 -2.5 0.49999994 -1.5 -2.5 0.49999994 -1.5 -2.5 -0.26371592 -1.5 -2.5 
		-0.39847341 -1.5 -2.5 -0.39847341 -1.5 -2.5 -0.26371592 -1.5 -2.5 -0.39847341 -1.5 
		-2.5 -0.26371592 -1.5 -2.5 -0.39847341 -1.5 -2.5 -0.26371592 -1.5;
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
	setAttr ".rp" -type "double3" -1 7.4505805969238281e-09 3 ;
	setAttr ".sp" -type "double3" -1 7.4505805969238281e-09 3 ;
createNode transform -n "Tile01" -p "TileGroup06";
	rename -uid "0708EC32-4D8A-83F0-B4D9-21A5E14A4BBE";
	setAttr ".rp" -type "double3" -1 3.7252902984619141e-09 3 ;
	setAttr ".sp" -type "double3" -1 3.7252902984619141e-09 3 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.5 0.49999994 2.5 -1.5 
		0.49999994 2.5 -1.5 0.49999994 3.5 -1.5 0.49999994 3.5 -1.5 -0.26371592 2.5 -1.5 
		-0.39847341 2.5 -1.5 -0.39847341 2.5 -1.5 -0.26371592 2.5 -1.5 -0.39847341 3.5 -1.5 
		-0.26371592 3.5 -1.5 -0.39847341 3.5 -1.5 -0.26371592 3.5;
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
	setAttr ".rp" -type "double3" -1 3.7252902984619141e-09 1 ;
	setAttr ".sp" -type "double3" -1 3.7252902984619141e-09 1 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.5 0.49999994 1.5 -1.5 
		0.49999994 1.5 -1.5 0.49999994 1.5 -1.5 0.49999994 1.5 -1.5 -0.26371592 1.5 -1.5 
		-0.39847341 1.5 -1.5 -0.39847341 1.5 -1.5 -0.26371592 1.5 -1.5 -0.39847341 1.5 -1.5 
		-0.26371592 1.5 -1.5 -0.39847341 1.5 -1.5 -0.26371592 1.5;
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
	setAttr ".rp" -type "double3" -1 3.7252902984619141e-09 -1 ;
	setAttr ".sp" -type "double3" -1 3.7252902984619141e-09 -1 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.5 0.49999994 -0.5 -1.5 
		0.49999994 -0.5 -1.5 0.49999994 -0.50761372 -1.5 0.49999994 -0.50761372 -1.5 -0.26371592 
		-0.5 -1.5 -0.39847341 -0.5 -1.5 -0.39847341 -0.5 -1.5 -0.26371592 -0.5 -1.5 -0.39847341 
		-0.50761372 -1.5 -0.26371592 -0.50761372 -1.5 -0.39847341 -0.50761372 -1.5 -0.26371592 
		-0.50761372;
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
	setAttr ".rp" -type "double3" -1 3.7252902984619141e-09 -2.0076136589050293 ;
	setAttr ".sp" -type "double3" -1 3.7252902984619141e-09 -2.0076136589050293 ;
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
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.5 0.49999994 -2.5076137 
		-1.5 0.49999994 -2.5076137 -1.5 0.49999994 -1.5076137 -1.5 0.49999994 -1.5076137 
		-1.5 -0.26371592 -2.5076137 -1.5 -0.39847341 -2.5076137 -1.5 -0.39847341 -2.5076137 
		-1.5 -0.26371592 -2.5076137 -1.5 -0.39847341 -1.5076137 -1.5 -0.26371592 -1.5076137 
		-1.5 -0.39847341 -1.5076137 -1.5 -0.26371592 -1.5076137;
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
createNode transform -n "Flashlight";
	rename -uid "1D900F58-4BF7-6307-F659-E3A607C2D991";
	setAttr ".rp" -type "double3" -0.16934950413407535 0.042621149629347377 -0.053301003241942979 ;
	setAttr ".sp" -type "double3" -0.16934950413407535 0.042621149629347377 -0.053301003241942979 ;
createNode transform -n "FlashlightBody" -p "Flashlight";
	rename -uid "EA80EB47-4A9E-155C-EFD4-799407FDAF3C";
	setAttr ".rp" -type "double3" -0.33877188071563136 0.35271073534102515 0.96338560800022544 ;
	setAttr ".sp" -type "double3" -0.33877188071563136 0.35271073534102515 0.96338560800022544 ;
createNode mesh -n "FlashlightBodyShape" -p "FlashlightBody";
	rename -uid "6F6C4CEC-4996-79F5-B3DB-CCBF11476C48";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[40:139]" "f[160:859]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[0:39]" "f[140:159]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 22 "f[0:39]" "f[140:159]" "f[700]" "f[703]" "f[705]" "f[707]" "f[709]" "f[711]" "f[713]" "f[715]" "f[717]" "f[719]" "f[721]" "f[723]" "f[725]" "f[727]" "f[729]" "f[731]" "f[733]" "f[735]" "f[737]" "f[739:859]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:59]" "vtx[160]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[60:79]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[80:159]" "vtx[161]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 42 "f[40:79]" "f[180:599]" "f[620:639]" "f[641]" "f[643]" "f[645]" "f[647]" "f[649]" "f[651]" "f[653]" "f[655]" "f[657]" "f[659]" "f[661]" "f[663]" "f[665]" "f[667]" "f[669]" "f[671]" "f[673]" "f[675]" "f[677:678]" "f[680:699]" "f[701:702]" "f[704]" "f[706]" "f[708]" "f[710]" "f[712]" "f[714]" "f[716]" "f[718]" "f[720]" "f[722]" "f[724]" "f[726]" "f[728]" "f[730]" "f[732]" "f[734]" "f[736]" "f[738]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 23 "f[80:139]" "f[160:179]" "f[600:619]" "f[640]" "f[642]" "f[644]" "f[646]" "f[648]" "f[650]" "f[652]" "f[654]" "f[656]" "f[658]" "f[660]" "f[662]" "f[664]" "f[666]" "f[668]" "f[670]" "f[672]" "f[674]" "f[676]" "f[679]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.5 0.15625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 910 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.52972054 0.14659321 0.52528179
		 0.1378817 0.5183683 0.13096821 0.50965679 0.12652946 0.5 0.125 0.49034321 0.12652946
		 0.4816317 0.13096821 0.47471821 0.1378817 0.47027948 0.14659321 0.46875 0.15625 0.47027948
		 0.16590679 0.47471821 0.1746183 0.4816317 0.18153179 0.49034321 0.18597052 0.5 0.1875
		 0.50965679 0.18597052 0.5183683 0.18153179 0.52528179 0.1746183 0.52972054 0.16590679
		 0.53125 0.15625 0.55944109 0.13693643 0.55056357 0.11951339 0.53673661 0.1056864
		 0.51931357 0.09680894 0.5 0.09374997 0.48068643 0.09680894 0.46326339 0.10568643
		 0.44943643 0.11951342 0.44055894 0.13693643 0.4375 0.15625 0.44055894 0.17556357
		 0.44943643 0.19298658 0.46326342 0.20681357 0.48068643 0.21569103 0.5 0.21875 0.51931357
		 0.21569103 0.53673661 0.20681357 0.55056357 0.19298658 0.55944103 0.17556357 0.5625
		 0.15625 0.375 0.375 0.58916163 0.81477964 0.57584536 0.78864509 0.55510491 0.76790464
		 0.52897036 0.75458837 0.5 0.74999994 0.47102964 0.75458843 0.44489512 0.76790464
		 0.42415464 0.78864515 0.41083843 0.81477964 0.40624997 0.84375 0.41083843 0.87272036
		 0.42415464 0.89885485 0.44489512 0.91959536 0.47102964 0.93291157 0.5 0.9375 0.52897036
		 0.93291157 0.55510485 0.91959536 0.57584536 0.89885485 0.58916157 0.87272036 0.59375
		 0.84375 0.55944109 0.82443643 0.55056357 0.80701339 0.53673661 0.79318643 0.51931357
		 0.78430891 0.5 0.78125 0.48068643 0.78430891 0.46326339 0.79318643 0.44943643 0.80701339
		 0.44055894 0.82443643 0.4375 0.84375 0.44055894 0.86306357 0.44943643 0.88048661
		 0.46326342 0.89431357 0.48068643 0.90319103 0.5 0.90625 0.51931357 0.90319103 0.53673661
		 0.89431357 0.55056357 0.88048661 0.55944103 0.86306357 0.5625 0.84375 0.52972054
		 0.83409321 0.52528179 0.8253817 0.5183683 0.81846821 0.50965679 0.81402946 0.5 0.8125
		 0.49034321 0.81402946 0.4816317 0.81846821 0.47471821 0.8253817 0.47027948 0.83409321
		 0.46875 0.84375 0.47027948 0.85340679 0.47471821 0.8621183 0.4816317 0.86903179 0.49034321
		 0.87347054 0.5 0.875 0.50965679 0.87347054 0.5183683 0.86903179 0.52528179 0.8621183
		 0.52972054 0.85340679 0.53125 0.84375 0.5 0.15625 0.5 0.84375 0.375 0.5 0.62499976
		 0.4375 0.375 0.625 0.62499976 0.5625 0.5874998 0.3611111 0.57499981 0.3611111 0.56249982
		 0.3611111 0.54999983 0.3611111 0.53749985 0.3611111 0.52499986 0.3611111 0.51249987
		 0.3611111 0.49999988 0.3611111 0.48749989 0.3611111 0.4749999 0.3611111 0.46249992
		 0.3611111 0.44999993 0.3611111 0.43749994 0.3611111 0.42499995 0.3611111 0.41249996
		 0.3611111 0.39999998 0.3611111 0.38749999 0.3611111 0.62499976 0.3611111 0.375 0.3611111
		 0.61249977 0.3611111 0.59999979 0.3611111 0.5874998 0.35416669 0.57499981 0.35416669
		 0.56249982 0.35416669 0.54999983 0.35416669 0.53749985 0.35416669 0.52499986 0.35416669
		 0.51249987 0.35416669 0.49999988 0.35416669 0.48749989 0.35416669 0.4749999 0.35416669
		 0.46249992 0.35416669 0.44999993 0.35416669 0.43749994 0.35416669 0.42499995 0.35416669
		 0.41249996 0.35416669 0.39999998 0.35416669 0.38749999 0.35416669 0.62499976 0.35416669
		 0.375 0.35416669 0.61249977 0.35416669 0.59999979 0.35416669 0.5874998 0.34722224
		 0.57499981 0.34722224 0.56249982 0.34722224 0.54999983 0.34722224 0.53749985 0.34722224
		 0.52499986 0.34722224 0.51249987 0.34722224 0.49999988 0.34722224 0.48749989 0.34722224
		 0.4749999 0.34722224 0.46249992 0.34722224 0.44999993 0.34722224 0.43749994 0.34722224
		 0.42499995 0.34722224 0.41249996 0.34722224 0.39999998 0.34722224 0.38749999 0.34722224
		 0.62499976 0.34722224 0.375 0.34722224 0.61249977 0.34722224 0.59999979 0.34722224
		 0.5874998 0.34027779 0.57499981 0.34027779 0.56249982 0.34027779 0.54999983 0.34027779
		 0.53749985 0.34027779 0.52499986 0.34027779 0.51249987 0.34027779 0.49999988 0.34027779
		 0.48749989 0.34027779 0.4749999 0.34027779 0.46249992 0.34027779 0.44999993 0.34027779
		 0.43749994 0.34027779 0.42499995 0.34027779 0.41249996 0.34027779 0.39999998 0.34027779
		 0.38749999 0.34027779 0.62499976 0.34027779 0.375 0.34027779 0.61249977 0.34027779
		 0.59999979 0.34027779 0.5874998 0.33333334 0.57499981 0.33333334 0.56249982 0.33333334
		 0.54999983 0.33333334 0.53749985 0.33333334 0.52499986 0.33333334 0.51249987 0.33333334
		 0.49999988 0.33333334 0.48749989 0.33333334 0.4749999 0.33333334 0.46249992 0.33333334
		 0.44999993 0.33333334 0.43749994 0.33333334 0.42499995 0.33333334 0.41249996 0.33333334
		 0.39999998 0.33333334 0.38749999 0.33333334 0.62499976 0.33333334 0.375 0.33333334
		 0.61249977 0.33333334 0.59999979 0.33333334 0.5874998 0.3263889 0.57499981 0.3263889
		 0.56249982 0.3263889 0.54999983 0.3263889 0.53749985 0.3263889 0.52499986 0.3263889
		 0.51249987 0.3263889 0.49999988 0.3263889 0.48749989 0.3263889 0.4749999 0.3263889
		 0.46249992 0.3263889 0.44999993 0.3263889 0.43749994 0.3263889 0.42499995 0.3263889
		 0.41249996 0.3263889 0.39999998 0.3263889 0.38749999 0.3263889 0.62499976 0.3263889
		 0.375 0.3263889 0.61249977 0.3263889 0.59999979 0.3263889 0.62499976 0.31944445 0.38749999
		 0.375 0.375 0.43594646 0.39999998 0.375 0.38749999 0.43594646 0.41249996 0.375 0.39999998
		 0.43594646 0.42499995 0.375 0.41249996 0.43594646 0.43749994 0.375 0.42499992 0.43594646
		 0.44999993 0.375 0.43749994 0.43594646 0.46249992 0.375 0.4499999 0.43594646 0.4749999
		 0.375 0.46249992 0.43594646;
	setAttr ".uvst[0].uvsp[250:499]" 0.48749989 0.375 0.4749999 0.43594646 0.49999988
		 0.375 0.48749989 0.43594646 0.51249987 0.375 0.49999988 0.43594646 0.52499986 0.375
		 0.51249987 0.43594646 0.53749985 0.375 0.52499986 0.43594646 0.54999983 0.375 0.53749985
		 0.43594646 0.56249982 0.375 0.54999977 0.43594646 0.57499981 0.375 0.56249982 0.43594646
		 0.5874998 0.375 0.57499981 0.43594646 0.59999979 0.375 0.5874998 0.43594646 0.61249977
		 0.375 0.59999979 0.43594646 0.62499976 0.375 0.61249977 0.43594646 0.38749999 0.50167435
		 0.375 0.56078458 0.39999998 0.50167435 0.38750002 0.56078458 0.41249996 0.50167435
		 0.40000001 0.56078458 0.42499995 0.50167435 0.41249996 0.56078458 0.43749994 0.50167435
		 0.42499995 0.56078458 0.44999993 0.50167435 0.43749994 0.56078458 0.46249992 0.50167435
		 0.44999993 0.56078458 0.4749999 0.50167435 0.46249995 0.56078458 0.48749989 0.50167429
		 0.47499993 0.56078458 0.49999988 0.50167435 0.48749989 0.56078458 0.51249987 0.50167435
		 0.49999988 0.56078458 0.52499986 0.50167435 0.51249987 0.56078464 0.53749985 0.50167435
		 0.52499986 0.56078464 0.54999983 0.50167435 0.53749985 0.56078464 0.56249982 0.50167435
		 0.54999983 0.56078458 0.57499981 0.50167435 0.56249982 0.56078458 0.5874998 0.50167435
		 0.57499987 0.56078458 0.59999979 0.50167429 0.5874998 0.56078464 0.61249977 0.50167435
		 0.59999985 0.56078458 0.62499976 0.50167435 0.61249977 0.56078458 0.38750002 0.4375
		 0.375 0.4375 0.375 0.5 0.38749999 0.5 0.39999998 0.4375 0.38749999 0.4375 0.38749999
		 0.5 0.39999998 0.5 0.41249996 0.4375 0.39999998 0.4375 0.39999998 0.5 0.41249996
		 0.5 0.42499995 0.4375 0.41249996 0.4375 0.41249996 0.5 0.42499995 0.5 0.43749994
		 0.4375 0.42499995 0.4375 0.42499995 0.5 0.43749994 0.5 0.44999993 0.4375 0.43749994
		 0.4375 0.43749994 0.5 0.44999993 0.5 0.46249992 0.4375 0.44999993 0.4375 0.44999993
		 0.5 0.46249992 0.5 0.4749999 0.4375 0.46249992 0.4375 0.46249992 0.5 0.4749999 0.5
		 0.48749989 0.4375 0.4749999 0.4375 0.4749999 0.5 0.48749989 0.5 0.49999988 0.4375
		 0.48749989 0.4375 0.48749989 0.5 0.49999988 0.5 0.51249987 0.4375 0.49999988 0.4375
		 0.49999988 0.5 0.51249987 0.5 0.52499986 0.4375 0.51249987 0.4375 0.51249987 0.5
		 0.52499986 0.5 0.53749985 0.4375 0.52499986 0.4375 0.52499986 0.5 0.53749985 0.5
		 0.54999983 0.4375 0.53749985 0.4375 0.53749985 0.5 0.54999983 0.5 0.56249982 0.4375
		 0.54999983 0.4375 0.54999983 0.5 0.56249982 0.5 0.57499981 0.4375 0.56249988 0.4375
		 0.56249982 0.5 0.57499981 0.5 0.5874998 0.4375 0.57499981 0.4375 0.57499981 0.5 0.5874998
		 0.5 0.59999979 0.4375 0.5874998 0.4375 0.5874998 0.5 0.59999979 0.5 0.61249977 0.4375
		 0.59999979 0.4375 0.59999979 0.5 0.61249977 0.5 0.62499976 0.4375 0.61249977 0.4375
		 0.61249977 0.5 0.62499976 0.5 0.38749999 0.5625 0.375 0.5625 0.375 0.625 0.38749999
		 0.625 0.39999998 0.5625 0.38749999 0.5625 0.38749999 0.625 0.39999998 0.625 0.41249996
		 0.5625 0.39999998 0.5625 0.39999998 0.625 0.41249996 0.625 0.42499995 0.5625 0.41249996
		 0.5625 0.41249996 0.625 0.42499995 0.62500006 0.43749994 0.5625 0.42499995 0.5625
		 0.42499995 0.625 0.43749994 0.62500006 0.44999993 0.5625 0.43749994 0.5625 0.43749994
		 0.625 0.44999993 0.625 0.46249992 0.5625 0.44999993 0.5625 0.44999993 0.625 0.46249992
		 0.625 0.4749999 0.5625 0.46249992 0.5625 0.46249992 0.625 0.4749999 0.625 0.48749989
		 0.5625 0.4749999 0.5625 0.47499987 0.625 0.48749989 0.625 0.49999988 0.5625 0.48749989
		 0.5625 0.48749989 0.625 0.49999988 0.625 0.51249987 0.5625 0.49999988 0.56250006
		 0.49999988 0.625 0.51249981 0.625 0.52499986 0.5625 0.51249987 0.5625 0.51249987
		 0.625 0.5249998 0.625 0.53749985 0.5625 0.52499986 0.5625 0.52499986 0.625 0.53749985
		 0.625 0.54999983 0.5625 0.53749985 0.5625 0.53749985 0.625 0.54999983 0.625 0.56249982
		 0.5625 0.54999983 0.5625 0.54999983 0.625 0.56249982 0.625 0.57499981 0.5625 0.56249988
		 0.5625 0.56249982 0.625 0.57499981 0.625 0.5874998 0.5625 0.57499981 0.56250006 0.57499981
		 0.625 0.5874998 0.625 0.59999979 0.5625 0.58749986 0.5625 0.5874998 0.625 0.59999979
		 0.625 0.61249977 0.5625 0.59999979 0.5625 0.59999979 0.625 0.61249977 0.625 0.62499976
		 0.5625 0.61249977 0.5625 0.61249977 0.625 0.62499976 0.625 0.62499976 0.43594646
		 0.375 0.4375 0.375 0.50167435 0.62499976 0.5 0.62499976 0.56078458 0.37500003 0.5625
		 0.375 0.62786967 0.62499976 0.625 0.375 0.4375 0.62499976 0.4375 0.38749999 0.4375
		 0.39999998 0.4375 0.41249996 0.4375 0.42499995 0.4375 0.43749994 0.4375 0.44999993
		 0.4375 0.46249992 0.4375 0.4749999 0.4375 0.48749989 0.4375 0.49999988 0.4375 0.51249987
		 0.4375 0.52499986 0.4375 0.53749985 0.4375 0.54999983 0.4375 0.56249982 0.4375 0.57499981
		 0.4375;
	setAttr ".uvst[0].uvsp[500:749]" 0.5874998 0.4375 0.59999979 0.4375 0.61249977
		 0.4375 0.62499976 0.5 0.375 0.5 0.38749999 0.5 0.39999998 0.5 0.41249996 0.5 0.42499995
		 0.5 0.43749994 0.5 0.44999993 0.5 0.46249992 0.5 0.4749999 0.5 0.48749989 0.5 0.49999988
		 0.5 0.51249987 0.5 0.52499986 0.5 0.53749985 0.5 0.54999983 0.5 0.56249982 0.5 0.57499981
		 0.5 0.5874998 0.5 0.59999979 0.5 0.61249977 0.5 0.375 0.5625 0.62499976 0.5625 0.38749999
		 0.5625 0.39999998 0.5625 0.41249996 0.5625 0.42499995 0.5625 0.43749994 0.5625 0.44999993
		 0.5625 0.46249992 0.5625 0.4749999 0.5625 0.48749989 0.5625 0.49999988 0.5625 0.51249987
		 0.5625 0.52499986 0.5625 0.53749985 0.5625 0.54999983 0.5625 0.56249982 0.5625 0.57499981
		 0.5625 0.5874998 0.5625 0.59999979 0.5625 0.61249977 0.5625 0.62499976 0.625 0.375
		 0.625 0.38749999 0.625 0.39999998 0.625 0.41249996 0.625 0.42499995 0.625 0.43749994
		 0.625 0.44999993 0.625 0.46249992 0.625 0.4749999 0.625 0.48749989 0.625 0.49999988
		 0.625 0.51249987 0.625 0.52499986 0.625 0.53749985 0.625 0.54999983 0.625 0.56249982
		 0.625 0.57499981 0.625 0.5874998 0.625 0.59999979 0.625 0.61249977 0.625 0.61376941
		 0.92640835 0.61888206 0.88237715 0.58265829 0.95751935 0.60112715 0.91722316 0.54345602
		 0.97749382 0.57347316 0.94487715 0.5 0.98437661 0.53862715 0.96263206 0.45654395
		 0.97749382 0.5 0.96875 0.41734174 0.95751929 0.46137285 0.96263206 0.38623065 0.92640829
		 0.42652684 0.94487715 0.36625612 0.88720608 0.39887285 0.91722316 0.35937336 0.84375
		 0.38111791 0.88237715 0.36625612 0.80029392 0.37499997 0.84375 0.38623065 0.76109177
		 0.38111791 0.80512285 0.41734168 0.72998053 0.39887285 0.77027678 0.45654398 0.71000606
		 0.42652681 0.74262285 0.5 0.70312339 0.46137285 0.72486788 0.54345602 0.71000606
		 0.5 0.71874994 0.58265829 0.72998047 0.53862715 0.72486788 0.61376941 0.76109171
		 0.57347322 0.74262285 0.63374394 0.80029398 0.60112721 0.77027678 0.64062661 0.84375
		 0.61888212 0.80512285 0.63374394 0.88720614 0.625 0.84375 0.38749999 0.62786967 0.375
		 0.68218011 0.39999998 0.62786967 0.38749999 0.68218011 0.41249996 0.62786967 0.39999998
		 0.68218011 0.42499995 0.62786967 0.41249996 0.68218011 0.43749994 0.62786967 0.42499995
		 0.68218011 0.44999993 0.62786967 0.43749994 0.68218011 0.46249992 0.62786967 0.44999993
		 0.68218011 0.4749999 0.62786967 0.46249992 0.68218011 0.48749989 0.62786967 0.4749999
		 0.68218011 0.49999988 0.62786967 0.48749989 0.68218011 0.51249987 0.62786967 0.49999988
		 0.68218011 0.52499986 0.62786967 0.51249987 0.68218011 0.53749985 0.62786967 0.52499986
		 0.68218011 0.54999983 0.62786967 0.53749985 0.68218011 0.56249982 0.62786967 0.54999983
		 0.68218011 0.57499981 0.62786967 0.56249982 0.68218011 0.5874998 0.62786967 0.57499981
		 0.68218011 0.59999979 0.62786967 0.5874998 0.68218011 0.61249977 0.62786967 0.59999979
		 0.68218011 0.62499976 0.62786967 0.61249977 0.68218011 0.62499976 0.68218011 0.6486026
		 0.89203393 0.62499976 0.6875 0.375 0.6875 0.38749999 0.6875 0.62640893 0.93559146
		 0.39999998 0.6875 0.59184146 0.97015893 0.41249996 0.6875 0.54828387 0.9923526 0.42499995
		 0.6875 0.5 1 0.43749994 0.6875 0.4517161 0.9923526 0.44999993 0.6875 0.40815854 0.97015893
		 0.46249992 0.6875 0.37359107 0.93559146 0.4749999 0.6875 0.3513974 0.89203393 0.48749989
		 0.6875 0.34374997 0.84375 0.49999988 0.6875 0.3513974 0.79546607 0.51249987 0.6875
		 0.37359107 0.75190854 0.52499986 0.6875 0.40815851 0.71734107 0.53749985 0.6875 0.45171607
		 0.69514734 0.54999983 0.6875 0.5 0.68749994 0.56249982 0.6875 0.54828393 0.69514734
		 0.57499981 0.6875 0.59184152 0.71734101 0.5874998 0.6875 0.62640899 0.75190848 0.59999979
		 0.6875 0.64860266 0.79546607 0.61249977 0.6875 0.65625 0.84375 0.38749999 0.31354994
		 0.375 0.31944445 0.39999998 0.31354994 0.38749999 0.31944445 0.41249996 0.31354994
		 0.39999998 0.31944445 0.42499995 0.31354994 0.41249996 0.31944445 0.43749994 0.31354994
		 0.42499995 0.31944445 0.44999993 0.31354994 0.43749994 0.31944445 0.46249992 0.31354994
		 0.44999993 0.31944445 0.4749999 0.31354994 0.46249992 0.31944445 0.48749989 0.31354994
		 0.4749999 0.31944445 0.49999988 0.31354994 0.48749989 0.31944445 0.51249987 0.31354997
		 0.49999988 0.31944445 0.52499986 0.31354994 0.51249987 0.31944445 0.53749985 0.31354994
		 0.52499986 0.31944445 0.54999983 0.31354997 0.53749985 0.31944445 0.56249982 0.31354994
		 0.54999983 0.31944445 0.57499981 0.31354994 0.56249982 0.31944445 0.5874998 0.31354997
		 0.57499981 0.31944445 0.59999979 0.31354994 0.5874998 0.31944445 0.61249977 0.31354994
		 0.59999979 0.31944445 0.62499976 0.31354994 0.61249977 0.31944445 0.375 0.31354994
		 0.64860266 0.10796607 0.375 0.3125 0.62499976 0.3125 0.62640899 0.064408496 0.38749999
		 0.3125 0.59184152 0.029841021 0.39999998 0.3125 0.54828393 0.0076473355 0.41249996
		 0.3125 0.5 -7.4505806e-08 0.42499995 0.3125 0.45171607 0.0076473504 0.43749994 0.3125
		 0.40815851 0.029841051 0.44999993 0.3125 0.37359107 0.064408526 0.46249992 0.3125
		 0.3513974 0.1079661 0.4749999 0.3125 0.34374997 0.15625 0.48749989 0.3125;
	setAttr ".uvst[0].uvsp[750:909]" 0.3513974 0.2045339 0.49999988 0.3125 0.37359107
		 0.24809146 0.51249987 0.3125 0.40815854 0.28265893 0.52499986 0.3125 0.4517161 0.3048526
		 0.53749985 0.3125 0.5 0.3125 0.54999983 0.3125 0.54828387 0.3048526 0.56249982 0.3125
		 0.59184146 0.28265893 0.57499981 0.3125 0.62640893 0.24809146 0.5874998 0.3125 0.6486026
		 0.2045339 0.59999979 0.3125 0.61249977 0.3125 0.65625 0.15625 0.57584536 0.10114509
		 0.61159408 0.11999086 0.55510491 0.080404609 0.59492767 0.087281033 0.52897036 0.067088395
		 0.56896901 0.061322343 0.5 0.062499955 0.53625911 0.044655852 0.47102964 0.06708841
		 0.5 0.038912971 0.44489512 0.080404624 0.46374089 0.044655859 0.42415464 0.10114512
		 0.43103105 0.061322361 0.41083843 0.12727964 0.40507239 0.087281056 0.40624997 0.15625
		 0.38840592 0.11999085 0.41083843 0.18522036 0.38266301 0.15625 0.42415464 0.21135488
		 0.38840595 0.19250911 0.44489512 0.23209536 0.40507239 0.22521894 0.47102964 0.24541157
		 0.43103108 0.25117758 0.5 0.25 0.46374086 0.26784417 0.52897036 0.24541157 0.5 0.27358693
		 0.55510485 0.23209536 0.53625917 0.26784417 0.57584536 0.21135488 0.56896889 0.25117758
		 0.58916157 0.18522033 0.59492761 0.22521892 0.59375 0.15625 0.61159408 0.1925091
		 0.58916163 0.12727964 0.61733693 0.15625 0.61123908 0.075430132 0.64265919 0.10989721
		 0.5808199 0.045010936 0.62135321 0.068081759 0.54248953 0.025480626 0.5881682 0.034896858
		 0.5 0.018750994 0.5463528 0.013590856 0.45751047 0.025480617 0.5 0.0062492108 0.4191801
		 0.045010876 0.4536472 0.013590841 0.38876098 0.075430095 0.4118318 0.03489691 0.36923072
		 0.11376049 0.37864688 0.068081811 0.362501 0.15625001 0.35734087 0.10989725 0.36923072
		 0.19873956 0.34999931 0.15625 0.38876098 0.23706992 0.3573409 0.20260274 0.41918012
		 0.26748893 0.37864691 0.24441816 0.45751044 0.28701931 0.4118318 0.27760315 0.5 0.29374906
		 0.4536472 0.29890913 0.54248953 0.28701928 0.5 0.30625051 0.5808199 0.26748893 0.54635274
		 0.29890913 0.61123902 0.23706993 0.5881682 0.27760315 0.63076931 0.19873956 0.62135309
		 0.24441817 0.63749892 0.15625003 0.64265913 0.20260276 0.63076931 0.11376048 0.65000063
		 0.15625 0.61422044 0.1191375 0.61888212 0.11762285 0.62446374 0.11580931 0.59716177
		 0.085657895 0.60112721 0.0827768 0.60587525 0.079327166 0.57059228 0.059088103 0.57347322
		 0.055122823 0.57692277 0.050374866 0.53711247 0.042029407 0.53862715 0.03736788 0.54044074
		 0.031786319 0.5 0.036151495 0.5 0.03124994 0.5 0.025381127 0.46288747 0.042029347
		 0.46137285 0.03736788 0.45955929 0.031786263 0.42940781 0.059088159 0.42652681 0.055122837
		 0.42307723 0.050374836 0.4028382 0.085657835 0.39887285 0.082776815 0.3941249 0.079327218
		 0.38577941 0.11913745 0.38111791 0.11762285 0.37553635 0.11580934 0.37990135 0.15625
		 0.37499997 0.15625 0.36913112 0.15625001 0.38577947 0.19336252 0.38111791 0.19487715
		 0.37553632 0.19669074 0.40283817 0.22684218 0.39887285 0.22972316 0.39412493 0.23317274
		 0.42940786 0.25341171 0.42652684 0.25737715 0.42307723 0.26212507 0.46288744 0.27047071
		 0.46137285 0.27513209 0.45955926 0.28071371 0.5 0.27634865 0.5 0.28125 0.5 0.28711885
		 0.53711259 0.27047062 0.53862715 0.27513206 0.54044068 0.28071362 0.57059216 0.25341183
		 0.57347316 0.25737715 0.57692277 0.26212507 0.59716183 0.22684218 0.60112715 0.22972316
		 0.60587513 0.2331728 0.6142205 0.19336249 0.61888206 0.19487712 0.62446368 0.19669072
		 0.62009865 0.15625 0.625 0.15625 0.63086879 0.15625001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 842 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0.073716275 1.4875518 0.85445726 0.13386317 
		1.4744768 0.95855486 0.23250525 1.4541118 1.041005 0.35998583 1.4284506 1.0937377 
		0.50382715 1.4000049 1.1115893 0.64994854 1.371559 1.0928133 0.78404695 1.3458977 
		1.0392466 0.89299524 1.3255328 0.9561345 0.96612918 1.3124578 0.85161197 0.99629015 
		1.3079524 0.73590845 0.98052531 1.3124578 0.62035245 0.92037821 1.3255328 0.51625484 
		0.8217364 1.3458977 0.43380433 0.69425517 1.371559 0.38107163 0.55041379 1.4000049 
		0.36322197 0.40429249 1.4284506 0.38199612 0.27019465 1.4541118 0.43556282 0.16124709 
		1.4744766 0.51867521 0.088112414 1.4875518 0.62319773 0.057951663 1.4920572 0.73890013 
		-0.3379401 1.5361117 0.96078116 -0.22549883 1.5116687 1.155385 -0.04109389 1.4735978 
		1.3095204 0.19722287 1.4256257 1.4081008 0.46612465 1.3724482 1.4414728 0.73928887 
		1.3192707 1.4063727 0.98997658 1.2712986 1.3062329 1.1936487 1.2332277 1.1508603 
		1.3303672 1.2087848 0.9554621 1.3867514 1.2003623 0.73916245 1.3572798 1.2087848 
		0.5231393 1.2448388 1.2332278 0.32853389 1.0604345 1.2712986 0.17439818 0.82211697 
		1.3192708 0.075819567 0.5532155 1.3724482 0.042446133 0.2800518 1.4256256 0.077547833 
		0.029364007 1.4735978 0.17768554 -0.17430766 1.5116686 0.33305857 -0.31102681 1.5361116 
		0.52845836 -0.36741042 1.5445341 0.74475527 -0.82217544 1.575112 1.08591 -0.65108645 
		1.5379198 1.3820194 -0.37049863 1.4799916 1.6165506 -0.0078777187 1.4069978 1.7665471 
		0.40127963 1.3260835 1.8173262 0.81692326 1.2451693 1.7639173 1.1983668 1.1721755 
		1.6115485 1.5082713 1.1142473 1.3751347 1.7163018 1.0770551 1.0778165 1.8020943 1.0642396 
		0.74869919 1.7572516 1.0770551 0.41999921 1.5861626 1.1142473 0.12389199 1.3055748 
		1.1721755 -0.11064003 0.94295382 1.2451693 -0.26063618 0.53379601 1.3260835 -0.31141534 
		0.11815285 1.4069978 -0.25800645 -0.26329011 1.4799914 -0.10563801 -0.57319528 1.5379198 
		0.13077669 -0.78122562 1.575112 0.42809266 -0.86701787 1.5879273 0.75720918 -0.95672941 
		0.97668445 1.1219037 -0.82694465 0.94847119 1.3465258 -0.61409593 0.90452796 1.5244368 
		-0.33901885 0.84915626 1.638221 -0.028640037 0.78777641 1.6767405 0.28665897 0.72639644 
		1.6362262 0.57601422 0.6710248 1.5206416 0.81110173 0.62708163 1.3413032 0.96890944 
		0.59886837 1.1157641 1.0339901 0.58914679 0.8661021 0.99997312 0.59886837 0.61675721 
		0.87018847 0.62708163 0.39213508 0.65734005 0.6710248 0.21422461 0.38226312 0.72639644 
		0.10044003 0.071884252 0.78777641 0.06191957 -0.24341457 0.84915626 0.10243488 -0.5327698 
		0.9045279 0.21801905 -0.76785719 0.94847107 0.39735767 -0.92566496 0.97668433 0.62289673 
		-0.9907456 0.98640597 0.87255758 -1.9981165 -0.55446655 1.3942364 -1.8942889 -0.5770371 
		1.5739342 -1.7240101 -0.61219168 1.7162634 -1.5039485 -0.65648901 1.8072909 -1.2556454 
		-0.70559293 1.8381062 -1.0034063 -0.75469691 1.8056951 -0.77192187 -0.79899424 1.7132279 
		-0.58385199 -0.83414876 1.569756 -0.45760575 -0.85671937 1.3893248 -0.40554121 -0.86449665 
		1.1895955 -0.43275478 -0.85671937 0.99011958 -0.53658259 -0.83414876 0.81042153 -0.70686144 
		-0.79899418 0.66809422 -0.92692274 -0.75469691 0.57706547 -1.175226 -0.70559293 0.54624927 
		-1.427465 -0.65648901 0.57866132 -1.6589493 -0.61219174 0.67112976 -1.8470193 -0.57703716 
		0.81459957 -1.9732653 -0.55446661 0.99503124 -2.0253298 -0.54668933 1.1947598 -1.8024464 
		-0.59224814 1.3437219 -1.7245756 -0.6091761 1.4784955 -1.5968666 -0.63554198 1.5852416 
		-1.43182 -0.66876501 1.6535121 -1.245593 -0.70559293 1.6766245 -1.0564137 -0.74242091 
		1.6523153 -0.8828004 -0.77564389 1.5829649 -0.74174798 -0.80200976 1.4753619 -0.6470632 
		-0.81893772 1.3400382 -0.60801488 -0.82477069 1.190241 -0.628425 -0.81893772 1.0406338 
		-0.70629597 -0.80200976 0.90586132 -0.83400488 -0.77564389 0.79911411 -0.99905103 
		-0.74242091 0.7308439 -1.1852784 -0.70559293 0.70773154 -1.3744576 -0.66876501 0.73204082 
		-1.5480705 -0.63554209 0.80139077 -1.6891234 -0.6091761 0.90899485 -1.7838079 -0.5922482 
		1.0443175 -1.8228562 -0.58641523 1.1941143 -1.6067762 -0.63002974 1.2932076 -1.5548623 
		-0.64131504 1.383056 -1.4697227 -0.65889233 1.4542202 -1.3596922 -0.68104094 1.4997342 
		-1.2355405 -0.70559293 1.5151422 -1.1094209 -0.73014492 1.4989362 -0.99367881 -0.75229359 
		1.4527023 -0.89964366 -0.76987088 1.380967 -0.83652079 -0.78115612 1.2907518 -0.81048834 
		-0.78504479 1.1908865 -0.82409525 -0.78115612 1.0911489 -0.87600917 -0.76987082 1.0012996 
		-0.96114844 -0.75229359 0.93013555 -1.0711793 -0.73014492 0.88462156 -1.1953309 -0.70559293 
		0.86921346 -1.3214501 -0.681041 0.88541949 -1.4371924 -0.65889233 0.93165332 -1.5312274 
		-0.6413151 1.0033886 -1.5943505 -0.6300298 1.0936046 -1.6203827 -0.62614113 1.1934687 
		-1.411106 -0.66781133 1.2426926 -1.385149 -0.67345399 1.2876171 -1.3425792 -0.68224263 
		1.323199 -1.2875639 -0.69331694 1.3459561 -1.2254882 -0.70559293 1.3536603 -1.1624283 
		-0.71786892 1.3455571 -1.104557 -0.72894329 1.3224401 -1.0575395 -0.73773193 1.2865726 
		-1.0259781 -0.74337459 1.2414647 -1.0129619 -0.74531889 1.1915321 -1.0197653 -0.74337459 
		1.1416631 -1.0457221 -0.73773193 1.0967389 -1.0882919 -0.72894329 1.0611566 -1.1433074 
		-0.71786892 1.0383996 -1.2053833 -0.70559293 1.0306965 -1.2684431 -0.69331694 1.0387986 
		-1.3263141 -0.68224263 1.0619155 -1.3733312 -0.67345411 1.0977836 -1.404893 -0.66781133 
		1.1428909 -1.4179093 -0.66586703 1.1928232 0.53789192 1.4110144 0.73459357 -1.2154356 
		-0.70559293 1.1921777 -1.206089 0.44263235 1.1874505 -1.0983801 0.41921806 1.3738651 
		-1.1896696 0.30901396 1.3976899 -1.2973784 0.33242825 1.2112753;
	setAttr ".pt[166:331]" -0.92173642 0.38274944 1.5215138 -1.0130259 0.27254534 
		1.5453385 -0.69344866 0.33679622 1.6159443 -0.78473806 0.22659212 1.6397691 -0.43586421 
		0.28585681 1.647912 -0.52715367 0.17565273 1.6717368 -0.17419632 0.23491736 1.6142888 
		-0.26548573 0.12471326 1.6381135 0.065940753 0.18896423 1.5183648 -0.025348676 0.07876014 
		1.5421896 0.26104081 0.15249562 1.3695309 0.16975138 0.042291526 1.3933556 0.39200598 
		0.12908135 1.1823553 0.30071655 0.018877255 1.2061801 0.44601667 0.12101334 0.97515988 
		0.35472724 0.010809247 0.99898463 0.41778588 0.12908135 0.7682274 0.32649645 0.018877255 
		0.79205215 0.31007698 0.15249565 0.58181238 0.21878755 0.042291552 0.60563713 0.13343324 
		0.18896426 0.43416452 0.042143799 0.078760162 0.45798928 -0.094854228 0.2349174 0.33973461 
		-0.18614367 0.12471332 0.36355937 -0.35243869 0.28585681 0.30776551 -0.44372812 0.17565273 
		0.33159024 -0.61410636 0.33679622 0.34139016 -0.70539576 0.22659212 0.36521491 -0.85424334 
		0.38274935 0.43731353 -0.9455328 0.27254525 0.46113828 -1.0493436 0.419218 0.58614665 
		-1.140633 0.3090139 0.6099714 -1.1803088 0.44263229 0.77332258 -1.2715983 0.33242819 
		0.79714733 -1.2343196 0.45070031 0.98051733 -1.325609 0.34049621 1.0043421 -1.6953573 
		-0.14787813 1.3151397 -1.587636 -0.17129511 1.5015762 -1.6856382 -0.28960282 1.5271528 
		-1.7933595 -0.26618582 1.3407162 -1.4109718 -0.20776798 1.649242 -1.508974 -0.3260757 
		1.6748186 -1.1826578 -0.25372645 1.7436832 -1.28066 -0.37203416 1.7692598 -0.9250434 
		-0.30467176 1.7756548 -1.0230457 -0.42297947 1.8012314 -0.66334522 -0.35561714 1.7420275 
		-0.76134741 -0.47392485 1.7676041 -0.42318022 -0.4015756 1.6460927 -0.52118242 -0.51988333 
		1.6716692 -0.22805774 -0.43804842 1.4972414 -0.32605994 -0.55635613 1.5228181 -0.09707725 
		-0.46146542 1.3100438 -0.19507945 -0.57977313 1.3356205 -0.043060366 -0.46953434 
		1.1028244 -0.14106256 -0.58784205 1.1284012 -0.071294382 -0.46146542 0.89586812 -0.16929658 
		-0.57977313 0.92144477 -0.17901585 -0.43804842 0.70943314 -0.27701804 -0.55635613 
		0.73500979 -0.35567981 -0.4015756 0.56176686 -0.45368201 -0.51988333 0.58734351 -0.58399373 
		-0.35561714 0.4673259 -0.68199593 -0.47392485 0.49290255 -0.84160823 -0.30467176 
		0.43535301 -0.93961042 -0.42297947 0.46092966 -1.1033063 -0.25372645 0.46898162 -1.2013085 
		-0.37203416 0.49455827 -1.3434711 -0.20776802 0.56491625 -1.4414732 -0.32607573 0.5904929 
		-1.5385936 -0.1712952 0.71376789 -1.6365958 -0.28960291 0.73934454 -1.6695741 -0.14787817 
		0.90096396 -1.7675763 -0.26618588 0.92654055 -1.723591 -0.13980925 1.1081825 -1.8215932 
		-0.25811696 1.1337591 -0.80442363 1.1177634 0.27696931 -0.52428472 1.0653991 0.063263208 
		-0.17947865 0.99941623 -0.074470922 0.19624287 0.9262737 -0.12275 0.56610149 0.85313123 
		-0.07684806 0.89389336 0.7871483 0.058741618 1.1475312 0.73478407 0.2707459 1.3021873 
		0.70116413 0.53841358 1.342723 0.68957949 0.83554214 1.2651707 0.70116413 1.1330484 
		1.0771213 0.73478407 1.4018091 0.79698259 0.7871483 1.6155155 0.45217633 0.85313112 
		1.7532505 0.076454513 0.9262737 1.8015287 -0.29340419 0.99941623 1.7556276 -0.62119603 
		1.0653992 1.620038 -0.874834 1.1177635 1.4080325 -1.02949 1.1513834 1.1403645 -1.070025 
		1.1629678 0.84323472 -0.99247295 1.1513833 0.5457297 -0.82307667 1.2024848 0.2165544 
		-0.52030158 1.1458893 -0.014420492 -0.147635 1.0745751 -0.16328314 0.2584458 0.99552244 
		-0.21546403 0.65818995 0.91646981 -0.16585235 1.0124679 0.84515542 -0.019307431 1.2866001 
		0.78855997 0.20982811 1.4537528 0.75222355 0.49912351 1.4975641 0.73970276 0.82026064 
		1.413745 0.75222355 1.1418064 1.210501 0.78855997 1.4322828 0.90772653 0.84515542 
		1.6632571 0.53505898 0.91646981 1.8121214 0.12897828 0.99552244 1.8643007 -0.27076593 
		1.0745751 1.8146906 -0.62504375 1.1458894 1.6681451 -0.89917576 1.2024848 1.4390092 
		-1.066329 1.2388214 1.1497135 -1.1101393 1.2513419 0.82857484 -1.0263208 1.2388213 
		0.50703073 -0.82684529 1.2841766 0.16503812 -0.50586689 1.2241784 -0.079824075 -0.11079411 
		1.1485765 -0.23763688 0.31970105 1.0647711 -0.29295501 0.74347866 0.98096561 -0.24036057 
		1.1190567 0.90536362 -0.085004829 1.4096705 0.84536552 0.15790743 1.5868727 0.80684447 
		0.46459526 1.6333181 0.79357094 0.80504006 1.5444597 0.80684447 1.1459174 1.3289961 
		0.84536552 1.4538587 1.0080181 0.90536356 1.6987195 0.61294496 0.98096561 1.8565333 
		0.18244958 1.0647711 1.9118508 -0.24132796 1.1485765 1.859257 -0.61690587 1.2241786 
		1.7039013 -0.90752012 1.2841767 1.4609894 -1.0847224 1.3226978 1.1543 -1.1311662 
		1.335971 0.8138541 -1.0423089 1.3226976 0.47297791 -0.82518238 1.3647628 0.11676755 
		-0.48761719 1.3016642 -0.14074656 -0.072130047 1.2221557 -0.30671486 0.38061047 1.1340197 
		-0.36489078 0.82628638 1.0458838 -0.30957928 1.2212718 0.96637511 -0.14619502 1.5269028 
		0.90327668 0.10926838 1.7132616 0.86276507 0.43180448 1.762107 0.84880567 0.78984165 
		1.6686569 0.86276507 1.1483332 1.4420596 0.90327668 1.4721869 1.1044955 0.96637505 
		1.729701 0.68900734 1.0458838 1.8956699 0.23626676 1.1340197 1.9538447 -0.2094091 
		1.2221557 1.8985343 -0.60439491 1.3016645 1.7351505 -0.91002595 1.3647629 1.4796861 
		-1.0963848 1.4052745 1.1571491 -1.1452291 1.4192337 0.79911113 -1.0517789 1.4052743 
		0.44062027 -0.81911266 1.4444519 0.071132384 -0.46627414 1.3784984 -0.19803444 -0.031986505 
		1.2953923 -0.37151214 0.44123936 1.2032684 -0.43232009 0.90708113 1.1111444 -0.37450621 
		1.3199385 1.0280383 -0.20372944 1.6393987 0.96208471 0.063293897 1.8341899 0.91974008 
		0.40042379 1.8852452 0.9051491 0.77466124 1.787567 0.91974008 1.1493737;
	setAttr ".pt[332:497]" 1.5507166 0.96208471 1.4878807 1.1978784 1.0280381 
		1.7570469 0.76359051 1.1111444 1.9305253 0.29036444 1.2032684 1.9913325 -0.17547712 
		1.2953923 1.9335192 -0.5883348 1.3784986 1.7627425 -0.90779543 1.444452 1.4957201 
		-1.1025867 1.4867969 1.1585883 -1.1536407 1.5013876 0.78435016 -1.0559627 1.4867966 
		0.40963849 -0.79854184 1.5211896 0.03416609 -0.43474698 1.4531881 -0.24335817 0.013025028 
		1.3675015 -0.42222282 0.50094509 1.2725171 -0.48491907 0.98125142 1.1775327 -0.42530981 
		1.4069284 1.0918459 -0.24922998 1.736308 1.0238445 0.026084214 1.9371477 0.98018503 
		0.37368217 1.9897883 0.965141 0.75954008 1.8890772 0.98018503 1.1458877 1.6448723 
		1.0238445 1.4949056 1.2810782 1.0918459 1.7724298 0.8333053 1.1775327 1.9512945 0.34538537 
		1.2725171 2.0139904 -0.13492107 1.3675015 1.9543815 -0.56059837 1.4531883 1.7783017 
		-0.88997829 1.5211897 1.5029885 -1.0908179 1.5648493 1.1553886 -1.1434568 1.579893 
		0.76952982 -1.0427462 1.564849 0.38318297 -0.76521796 1.5953314 0.0048238044 -0.39426488 
		1.5259919 -0.27816153 0.062318411 1.4386191 -0.46054593 0.55983883 1.3417658 -0.52447379 
		1.0495964 1.2449123 -0.46369368 1.4836495 1.1575395 -0.28414887 1.81951 1.0882001 
		-0.0034170996 2.0243018 1.0436815 0.35102147 2.0779781 1.0283414 0.74447113 1.9752854 
		1.0436815 1.1384212 1.7262752 1.0882001 1.4943064 1.3553227 1.1575395 1.7772912 0.8987391 
		1.2449123 1.9596757 0.40121827 1.3417658 2.0236051 -0.088538863 1.4386191 1.9628234 
		-0.52259243 1.525992 1.7832792 -0.85845357 1.5953315 1.5025483 -1.0632453 1.6398501 
		1.148109 -1.1169199 1.6551899 0.75465745 -1.0142276 1.6398499 0.36070925 -1.3487698 
		0.50341547 1.2242185 -1.3441761 0.49085784 1.2230563 -1.315284 0.47747737 1.215613 
		-1.2189851 0.4752022 1.4488406 -1.2161065 0.4630174 1.4447103 -1.1917859 0.45063075 
		1.4293544 -1.0061363 0.43125898 1.6267517 -1.0060703 0.41965482 1.6202701 -0.9892481 
		0.40881619 1.5986472 -0.73105925 0.3758873 1.7405359 -0.73462814 0.36501485 1.7325506 
		-0.72749555 0.35612667 1.7069203 -0.42068043 0.3145074 1.7790554 -0.42835078 0.30444604 
		1.7705617 -0.43215179 0.29772007 1.7435738 -0.10538143 0.25312746 1.738541 -0.11721803 
		0.24387714 1.7305822 -0.13212572 0.23931335 1.705022 0.18397385 0.19775581 1.6229565 
		0.16831362 0.18923721 1.6165257 0.1432128 0.18662401 1.5950366 0.41906136 0.15381265 
		1.4436181 0.40029457 0.14587472 1.4395567 0.36691281 0.14480941 1.4243848 0.57686907 
		0.1255994 1.218079 0.5560171 0.11803428 1.2169979 0.51707608 0.11796287 1.2097708 
		0.64194971 0.11587778 0.96841693 0.62023777 0.10844113 0.97063476 0.57900423 0.10871217 
		0.97220254 0.60793275 0.1255994 0.71907204 0.58667028 0.11803428 0.72458529 0.54663503 
		0.11796287 0.73493636 0.47814807 0.15381265 0.49444994 0.45860052 0.14587472 0.50293052 
		0.42313701 0.14480947 0.52119571 0.26529968 0.19775581 0.31653947 0.24856482 0.18923721 
		0.32737145 0.22059917 0.18662401 0.35190281 -0.0097772582 0.25312746 0.20275487 -0.022877056 
		0.24387714 0.21508995 -0.041152891 0.23931342 0.24362986 -0.32015613 0.3145074 0.16423441 
		-0.32915479 0.30444604 0.17707875 -0.33649695 0.29772007 0.20697571 -0.63545495 0.3758873 
		0.20474972 -0.64028734 0.36501488 0.21705844 -0.63652271 0.35612676 0.24552809 -0.92481023 
		0.43125892 0.3203339 -0.92581904 0.41965482 0.33111572 -0.91186124 0.4088161 0.35551345 
		-1.1598976 0.47520208 0.49967253 -1.1577998 0.46301728 0.50808412 -1.135561 0.45063066 
		0.52616531 -1.3177054 0.50341535 0.72521156 -1.3135225 0.49085772 0.73064369 -1.2857246 
		0.47747728 0.74077851 -1.382786 0.51313692 0.97487241 -1.3777432 0.50045091 0.97700495 
		-1.3476526 0.48672795 0.97834527 -1.4875256 0.3359102 1.2604311 -1.4662629 0.34347534 
		1.2549186 -1.4262277 0.34354678 1.244567 -1.3577409 0.30769694 1.4850532 -1.3381933 
		0.31563494 1.4765725 -1.3027296 0.31670016 1.4583085 -1.1448921 0.26375371 1.6629642 
		-1.128157 0.27227232 1.6521324 -1.1001917 0.27488559 1.6276014 -0.86981505 0.20838203 
		1.7767484 -0.85671496 0.21763237 1.7644129 -0.83843923 0.22219609 1.7358744 -0.55943626 
		0.14700213 1.8152679 -0.55043757 0.15706354 1.802424 -0.54309547 0.1637895 1.7725279 
		-0.24413726 0.085622184 1.7747536 -0.23930481 0.09649466 1.7624445 -0.24306975 0.10538284 
		1.7339761 0.045218032 0.030250559 1.659169 0.046226844 0.041854724 1.6483879 0.032269128 
		0.052693415 1.6239908 0.28030553 -0.013692621 1.4798305 0.27820778 -0.0015077615 
		1.471419 0.25596914 0.010878826 1.4533389 0.43811324 -0.041905861 1.2542915 0.43393022 
		-0.029348195 1.2488601 0.40613243 -0.015967727 1.2387249 0.50319391 -0.051627476 
		1.0046295 0.49815097 -0.038941357 1.002497 0.46806055 -0.025218427 1.0011567 0.46917692 
		-0.041905861 0.75528461 0.46458343 -0.029348195 0.75644755 0.43569136 -0.015967727 
		0.7638905 0.33939224 -0.013692621 0.53066248 0.33651376 -0.0015077615 0.53479278 
		0.31219327 0.010878885 0.55014986 0.12654385 0.030250559 0.352752 0.12647805 0.041854724 
		0.35923368 0.10965551 0.052693415 0.38085693 -0.14853308 0.085622206 0.23896742 -0.14496383 
		0.09649466 0.24695221 -0.15209669 0.10538286 0.27258399 -0.45891196 0.14700213 0.20044695 
		-0.45124158 0.15706354 0.20894101 -0.44744062 0.1637895 0.23592983 -0.77421075 0.20838203 
		0.24096227 -0.76237398 0.21763237 0.24892069 -0.74746603 0.22219609 0.27448219 -1.0635661 
		0.26375365 0.35654643 -1.0479058 0.27227232 0.36297798 -1.0228049 0.27488551 0.38446757 
		-1.2986535 0.30769682 0.5358851 -1.2798866 0.31563479 0.53994632 -1.2465047 0.31670007 
		0.55511945 -1.4564612 0.33591005 0.76142412 -1.4356092 0.34347525 0.76250595;
	setAttr ".pt[498:663]" -1.3966683 0.34354669 0.76973259 -1.5215418 0.34563169 
		1.011085 -1.49983 0.35306844 1.0088671 -1.4585962 0.35279736 1.0072994 -1.8403225 
		-0.089984238 1.3525041 -1.8348982 -0.1027024 1.3511275 -1.8040051 -0.11600359 1.3431672 
		-1.7105378 -0.11819749 1.5771263 -1.7069386 -0.1305189 1.5725906 -1.6808388 -0.14277808 
		1.5563346 -1.497689 -0.16214074 1.7550373 -1.4970833 -0.17384414 1.7479998 -1.4788444 
		-0.18448044 1.7251744 -1.2226119 -0.21751241 1.8688215 -1.2258748 -0.2284371 1.8601844 
		-1.2177943 -0.23702854 1.8331543 -0.91223311 -0.27889231 1.907341 -0.9198609 -0.28895378 
		1.8981616 -0.92324364 -0.29527831 1.8697102 -0.59693414 -0.34027225 1.8668267 -0.60899603 
		-0.34947056 1.8582176 -0.62402314 -0.3535282 1.8312613 -0.30757883 -0.39564389 1.751242 
		-0.32370993 -0.40406346 1.7442577 -0.34942344 -0.40607619 1.721571 -0.072491333 -0.43958706 
		1.5719036 -0.091928579 -0.44738865 1.5674415 -0.12632437 -0.44777843 1.5513783 0.085316353 
		-0.46780029 1.3463646 0.063659817 -0.47520512 1.3450744 0.023436056 -0.47455299 1.3373407 
		0.15039702 -0.47752193 1.0967026 0.12782525 -0.48479003 1.0989231 0.085197903 -0.48377883 
		1.1004096 0.11638005 -0.46780029 0.84735763 0.09428668 -0.47520512 0.85308492 0.052915715 
		-0.47455299 0.86377984 -0.013404631 -0.43958706 0.62273556 -0.033672851 -0.44738865 
		0.6316222 -0.07025063 -0.44777846 0.65061241 -0.22625302 -0.39564389 0.44482505 -0.24352784 
		-0.40406346 0.45621386 -0.27224481 -0.40607619 0.48177472 -0.50132996 -0.34027225 
		0.33104047 -0.51473635 -0.34947053 0.34402862 -0.53329414 -0.3535282 0.37379208 -0.81170881 
		-0.27889231 0.29252002 -0.8207503 -0.28895378 0.30605006 -0.82784563 -0.29527831 
		0.337237 -1.1270076 -0.21751241 0.33303532 -1.1316149 -0.2284371 0.34599543 -1.1270659 
		-0.23702843 0.37568519 -1.4163629 -0.16214079 0.44861948 -1.4169008 -0.17384423 0.45995492 
		-1.4016654 -0.1844805 0.48537567 -1.6514503 -0.11819763 0.62795812 -1.6486824 -0.13051899 
		0.63677138 -1.6247648 -0.14277819 0.65556872 -1.8092581 -0.08998438 0.85349715 -1.8042706 
		-0.10270254 0.85913807 -1.774525 -0.11600368 0.86960626 -1.8743387 -0.08026275 1.103158 
		-1.8684357 -0.093117684 1.1052878 -1.8362863 -0.10677793 1.1065359 -1.9810346 -0.25985125 
		1.3892273 -1.9589416 -0.25244653 1.3835003 -1.9175708 -0.25309905 1.3728055 -1.8512499 
		-0.28806448 1.6138493 -1.8309817 -0.28026307 1.6049634 -1.7944043 -0.27987361 1.5859729 
		-1.6384013 -0.33200774 1.7917604 -1.6211264 -0.32358831 1.7803726 -1.5924101 -0.32157594 
		1.7548127 -1.3633242 -0.38737941 1.9055446 -1.3499179 -0.37818125 1.8925573 -1.3313603 
		-0.37412396 1.8627934 -1.0529454 -0.44875932 1.9440641 -1.0439041 -0.43869796 1.9305345 
		-1.0368091 -0.43237382 1.8993485 -0.73764634 -0.51013929 1.9035498 -0.73303914 -0.49921471 
		1.8905904 -0.73758858 -0.49062374 1.8609004 -0.44829106 -0.56551087 1.7879652 -0.44775304 
		-0.55380762 1.7766305 -0.46298897 -0.5431717 1.7512114 -0.21320355 -0.60945404 1.6086267 
		-0.21597163 -0.59713286 1.5998143 -0.23988965 -0.58487397 1.5810167 -0.05539586 -0.6376673 
		1.3830876 -0.060383234 -0.62494928 1.3774471 -0.090129286 -0.6116485 1.3669791 0.0096848086 
		-0.64738894 1.1334257 0.0037821941 -0.63453418 1.1312959 -0.02836738 -0.6208744 1.1300479 
		-0.024332156 -0.6376673 0.88408077 -0.029756378 -0.62494928 0.88545769 -0.060649626 
		-0.6116485 0.89341819 -0.15411684 -0.60945404 0.65945864 -0.1577159 -0.59713286 0.66399503 
		-0.18381585 -0.58487403 0.68025076 -0.36696523 -0.56551087 0.48154819 -0.36757097 
		-0.55380762 0.48858666 -0.38581023 -0.5431717 0.51141304 -0.64204216 -0.51013923 
		0.36776358 -0.63877946 -0.49921468 0.37640142 -0.64685953 -0.49062374 0.4034304 -0.95242107 
		-0.44875932 0.32924312 -0.9447934 -0.43869796 0.33842289 -0.94141096 -0.43237382 
		0.36687419 -1.2677199 -0.38737941 0.36975846 -1.255658 -0.37818125 0.37836823 -1.2406312 
		-0.37412396 0.40532354 -1.5570751 -0.3320078 0.48534262 -1.5409439 -0.3235884 0.49232775 
		-1.5152309 -0.32157603 0.51501399 -1.7921625 -0.28806463 0.66468126 -1.7727255 -0.28026316 
		0.66914421 -1.7383301 -0.2798737 0.68520707 -1.9499702 -0.2598514 0.89022028 -1.9283137 
		-0.25244671 0.8915109 -1.8880906 -0.25309917 0.89924461 -2.0150509 -0.25012976 1.1398811 
		-1.9924788 -0.24286185 1.1376606 -1.9498516 -0.24387345 1.1361742 -2.0959623 -0.53557372 
		1.4194975 -2.1595757 -0.51550627 1.4359041 -2.1748066 -0.49377164 1.4397979 -1.9791547 
		-0.5609659 1.6216593 -2.0335917 -0.54289323 1.6539476 -2.0450218 -0.52198488 1.66442 
		-1.7875887 -0.60051531 1.7817814 -1.8269767 -0.58554953 1.826648 -1.8321731 -0.56592816 
		1.8423311 -1.5400162 -0.65035039 1.8841881 -1.5599554 -0.63929963 1.9371002 -1.5570961 
		-0.6212998 1.9561152 -1.2606721 -0.70559293 1.9188558 -1.2586666 -0.69888186 1.974492 
		-1.2467172 -0.68267971 1.9946347 -0.97689974 -0.76083553 1.8823926 -0.95260161 -0.75846422 
		1.9351637 -0.93141824 -0.74405962 1.9541204 -0.71647692 -0.81067061 1.7783654 -0.67172033 
		-0.81221426 1.8229647 -0.64206296 -0.79943126 1.8385359 -0.50489569 -0.85021991 1.6169585 
		-0.44351777 -0.8548705 1.648878 -0.40697548 -0.84337443 1.6591974 -0.36286721 -0.87561208 
		1.4139711 -0.2903316 -0.88225746 1.4299444 -0.24916779 -0.87158769 1.4336584 -0.30429387 
		-0.88436168 1.1892726 -0.22715686 -0.89169437 1.1875936 -0.18408711 -0.88130933 1.1839963 
		-0.33490956 -0.87561208 0.96486014 -0.26017761 -0.88225746 0.9455514 -0.21810408 
		-0.87158769 0.93465143 -0.45171705 -0.85021991 0.76269758 -0.38616154 -0.8548705 
		0.72750789 -0.34788877 -0.84337443 0.7100293 -0.64328277 -0.81067061 0.60257596 -0.59277618 
		-0.81221426 0.55480713 -0.56073713 -0.79943126 0.53211886 -0.89085507 -0.76083547 
		0.50016874 -0.8597973 -0.75846422 0.44435459 -0.83581406 -0.74405962 0.41833425;
	setAttr ".pt[664:829]" -1.1701993 -0.70559293 0.46550021 -1.1610863 -0.69888186 
		0.40696341 -1.1461929 -0.68267971 0.37981379 -1.4539714 -0.65035039 0.50196415 -1.467151 
		-0.63929963 0.44629103 -1.4614918 -0.6212998 0.42032912 -1.7143937 -0.60051543 0.60599101 
		-1.7480323 -0.58554959 0.55849046 -1.750847 -0.56592816 0.53591329 -1.9259751 -0.56096613 
		0.76739794 -1.9762347 -0.54289341 0.7325775 -1.9859345 -0.52198505 0.71525192 -2.0680039 
		-0.53557384 0.97038579 -2.129421 -0.51550639 0.95151114 -2.1437421 -0.49377176 0.94079095 
		-2.1265771 -0.5268243 1.1950827 -2.1925955 -0.50606948 1.1938601 -2.2088227 -0.48405015 
		1.1904519 -0.97700912 1.7017848 1.1257036 -1.0183109 1.7042022 1.1363939 -1.0444669 
		1.6986557 1.1431862 -0.77693623 1.6582919 1.4719752 -0.81410855 1.6598116 1.4898139 
		-0.83864468 1.653913 1.4994086 -0.4488146 1.5905503 1.7462385 -0.47921449 1.5906718 
		1.769737 -0.50109434 1.5842248 1.7815515 -0.024762403 1.5051906 1.9216447 -0.046410359 
		1.5035504 1.9487636 -0.064857319 1.4964124 1.9619987 0.45370993 1.4105688 1.9810263 
		0.44193745 1.4069757 2.0093708 0.42736363 1.3990718 2.0230868 0.93976682 1.3159472 
		1.9185694 0.93802631 1.310401 1.9456253 0.92738724 1.3017311 1.9588351 1.3858299 
		1.2305876 1.7403876 1.3932959 1.2232797 1.7637658 1.3862677 1.2139188 1.7755332 1.7482346 
		1.162846 1.4639232 1.7631805 1.1541399 1.4815958 1.7590861 1.1442306 1.4911252 1.9915072 
		1.1193531 1.1162391 2.0114739 1.1097494 1.126734 2.0093489 1.099488 1.1334498 2.0918338 
		1.1043665 0.7313661 2.1138713 1.0944535 0.73391843 2.1125584 1.0840708 0.73751795 
		2.0393941 1.1193531 0.34698218 2.0603492 1.1097494 0.34160116 2.0586121 1.099488 
		0.34208831 1.8393211 1.162846 0.00071132486 1.8561469 1.1541399 -0.011817328 1.85279 
		1.1442306 -0.014131491 1.5111995 1.2305876 -0.27355257 1.521253 1.2232797 -0.29174078 
		1.5152398 1.2139188 -0.29627672 1.0871482 1.3159471 -0.44896013 1.0884494 1.310401 
		-0.47076797 1.0790033 1.3017311 -0.47672415 0.60867554 1.4105688 -0.50833923 0.60010153 
		1.4069757 -0.53137511 0.58678216 1.3990718 -0.5378105 0.12261879 1.5051906 -0.44588488 
		0.10401262 1.5035504 -0.46762928 0.086758792 1.4964124 -0.47356057 -0.32344365 1.5905501 
		-0.26770318 -0.35125628 1.5906717 -0.28577062 -0.37212151 1.5842247 -0.29025924 -0.68584877 
		1.6582918 0.0087623391 -0.72114146 1.6598115 -0.0036001436 -0.7449401 1.6539129 -0.0058491323 
		-0.9291209 1.7017846 0.35644671 -0.96943432 1.7042019 0.35126102 -0.99520254 1.6986555 
		0.35182482 -1.0294472 1.7167711 0.74131769 -1.0718312 1.7194978 0.74407542 -1.0984117 
		1.7140726 0.74775547 -0.79894763 1.6449845 1.0797644 -0.80262417 1.6551323 1.0806946 
		-0.81919348 1.6661292 1.0849564 -0.84646988 1.6765283 1.0919876 -0.88084525 1.6849557 
		1.1008588 -0.62389594 1.606931 1.3827319 -0.62619066 1.6167783 1.3860533 -0.63982296 
		1.6271368 1.3953979 -0.6629951 1.6366438 1.4095334 -0.69264102 1.644043 1.42659 -0.33680868 
		1.5476611 1.6226963 -0.33683747 1.5570405 1.6279126 -0.34565338 1.5664046 1.6412829 
		-0.36209357 1.5745217 1.6610448 -0.38398287 1.5803195 1.6845852 0.034211751 1.4729764 
		1.7761672 0.037112225 1.4817662 1.7825949 0.034520146 1.4898776 1.7985398 0.026779728 
		1.4962434 1.8219 0.014915379 1.5000232 1.8495873 0.45284677 1.3901879 1.8281218 0.45905155 
		1.3983243 1.8349593 0.46348289 1.4050467 1.8517753 0.46555856 1.4094714 1.8763541 
		0.46500504 1.4110144 1.9054452 0.87811852 1.3073994 1.7734765 0.88768023 1.3148822 
		1.779883 0.8992458 1.3202158 1.7957828 0.91129315 1.3226992 1.8190799 0.92222995 
		1.3220055 1.8466945 1.2683973 1.2327149 1.6175784 1.2810397 1.239608 1.6227543 1.299153 
		1.2436887 1.6360388 1.3203516 1.244421 1.6556808 1.3418335 1.2417092 1.6790828 1.5854802 
		1.1734447 1.3756878 1.6006258 1.1798702 1.3789536 1.6240582 1.1829566 1.3881799 1.652692 
		1.182299 1.4021503 1.682741 1.1779859 1.4190165 1.7983292 1.1353911 1.0714834 1.815155 
		1.1415162 1.0723482 1.8421584 1.1439641 1.0764712 1.8757827 1.1424143 1.0833082 1.9115828 
		1.137073 1.0919558 1.8861094 1.1222787 0.73474211 1.903628 1.1283003 0.73294872 1.932104 
		1.1305282 0.73142242 1.9677868 1.1286709 0.73036379 2.0059586 1.1229753 0.72991252 
		1.8402276 1.1353911 0.39842924 1.8573842 1.1415162 0.39398068 1.8850905 1.1439641 
		0.38681221 1.9196972 1.1424143 0.37786755 1.9566294 1.137073 0.36832947 1.6651756 
		1.1734447 0.095462568 1.6809502 1.1798702 0.088622995 1.7057197 1.1829566 0.076371327 
		1.7362219 1.1822991 0.060322832 1.7684243 1.177986 0.042598579 1.3780882 1.2327148 
		-0.14450161 1.3915968 1.2396082 -0.15323511 1.4115502 1.2436887 -0.16951239 1.4353207 
		1.244421 -0.19118707 1.4597664 1.2417094 -0.21539415 1.0070685 1.3073994 -0.29797384 
		1.0176481 1.3148822 -0.30791858 1.0313771 1.3202157 -0.32677042 1.046448 1.3226992 
		-0.35204414 1.0608691 1.3220054 -0.38039842 0.58843267 1.3901879 -0.34992835 0.59570777 
		1.3983243 -0.36028406 0.60241365 1.4050467 -0.38000655 0.60766852 1.4094714 -0.40649843 
		0.61077845 1.4110144 -0.43625706 0.1631617 1.4729764 -0.2952832 0.16707958 1.4817662 
		-0.30520672 0.16665129 1.4898776 -0.32401341 0.16193447 1.4962434 -0.34922403 0.15355399 
		1.5000234 -0.37750563 -0.22711723 1.5476609 -0.13938372 -0.22628003 1.5570403 -0.14807683 
		-0.23325594 1.5664046 -0.16426824 -0.24712411 1.5745217 -0.18582292 -0.26604968 1.5803195 
		-0.20989174 -0.54420036 1.6069309 0.10250673 -0.54586601 1.6167783 0.095722765 -0.55816126 
		1.6271367 0.083589271;
	setAttr ".pt[830:841]" -0.57946426 1.6366435 0.067705944 -0.60695708 1.6440428 
		0.05017202 -0.75704926 1.6449845 0.40671018 -0.76039505 1.6551323 0.40232694 -0.77626127 
		1.6661292 0.39529741 -0.8025552 1.6765283 0.38654691 -0.8357988 1.6849557 0.37723258 
		-0.84482884 1.6580969 0.74344915 -0.84886765 1.6683481 0.74172455 -0.86620647 1.6795651 
		0.74034429 -0.89455861 1.6902716 0.73948979 -0.93017364 1.6990533 0.73927385;
	setAttr -s 842 ".vt";
	setAttr ".vt[0:165]"  0.44075513 -0.98970675 -0.14321089 0.37492895 -0.98970675 -0.27240181
		 0.27240169 -0.98970675 -0.37492847 0.14321029 -0.98970675 -0.44075584 1.1920929e-07 -0.98970675 -0.46343803
		 -0.14321005 -0.98970675 -0.44075584 -0.27240205 -0.98970675 -0.37492847 -0.37492907 -0.98970675 -0.27240181
		 -0.44075549 -0.98970675 -0.14321089 -0.4634378 -0.98970675 4.7683716e-07 -0.44075549 -0.98970675 0.14321041
		 -0.37492907 -0.98970675 0.27240133 -0.27240205 -0.98970675 0.37492847 -0.14321005 -0.98970675 0.44075584
		 1.1920929e-07 -0.98970675 0.46343565 0.14321029 -0.98970675 0.44075584 0.27240169 -0.98970675 0.37492847
		 0.374928 -0.98970675 0.27240133 0.44075513 -0.98970675 0.14321041 0.46343732 -0.98970675 4.7683716e-07
		 0.8239634 -0.96331072 -0.26772356 0.70090508 -0.96331072 -0.50923777 0.50923705 -0.96331072 -0.70090485
		 0.26772201 -0.96331072 -0.82396507 1.1920929e-07 -0.96331072 -0.86636734 -0.26772177 -0.96331072 -0.82396507
		 -0.50923717 -0.96331072 -0.70090485 -0.70090526 -0.96331072 -0.50923777 -0.82396281 -0.96331072 -0.26772356
		 -0.86636621 -0.96331072 0 -0.82396281 -0.96331072 0.26772022 -0.70090467 -0.96331072 0.50923634
		 -0.50923717 -0.96331072 0.70090389 -0.26772153 -0.96331072 0.82396173 1.1920929e-07 -0.96331072 0.86636591
		 0.26772141 -0.96331072 0.82396173 0.50923705 -0.96331072 0.70090389 0.70090461 -0.96331072 0.50923634
		 0.82396269 -0.96331072 0.26772022 0.86636567 -0.96331072 0 1.25373268 -0.91974813 -0.40736246
		 1.066488743 -0.91974813 -0.77485085 0.77484941 -0.91974813 -1.066489935 0.40736222 -0.91974813 -1.25373387
		 1.1920929e-07 -0.91974813 -1.31825376 -0.40736246 -0.91974813 -1.25373387 -0.77484965 -0.91974813 -1.066489935
		 -1.066488981 -0.91974813 -0.77485085 -1.25373292 -0.91974813 -0.40736246 -1.31825256 -0.91974813 4.7683716e-07
		 -1.25373292 -0.91974813 0.40736246 -1.066488981 -0.91974813 0.77484798 -0.77484965 -0.91974813 1.066488266
		 -0.40736246 -0.91974813 1.25373173 1.1920929e-07 -0.91974813 1.31825161 0.40736222 -0.91974813 1.25373173
		 0.77484894 -0.91974813 1.066488266 1.066488743 -0.91974813 0.77484798 1.25373268 -0.91974813 0.40736246
		 1.31825209 -0.91974813 4.7683716e-07 0.9510572 -0.41109717 -0.30901766 0.80901766 -0.41109717 -0.5877862
		 0.58778548 -0.41109717 -0.80901837 0.30901694 -0.41109717 -0.95105767 0 -0.41109717 -1.000000476837
		 -0.30901718 -0.41109717 -0.95105767 -0.58778548 -0.41109717 -0.80901742 -0.8090173 -0.41109717 -0.5877862
		 -0.95105678 -0.41109717 -0.30901766 -1.000000238419 -0.41109717 0 -0.95105678 -0.41109717 0.30901623
		 -0.8090173 -0.41109717 0.58778477 -0.58778548 -0.41109717 0.80901623 -0.30901706 -0.41109717 0.951056
		 0 -0.41109717 1 0.30901694 -0.41109717 0.951056 0.58778524 -0.41109717 0.80901623
		 0.80901694 -0.41109717 0.58778477 0.95105648 -0.41109717 0.30901623 1 -0.41109717 0
		 0.76084542 1 -0.24721384 0.64721394 1 -0.47022867 0.47022843 1 -0.64721489 0.24721348 1 -0.76084661
		 0 1 -0.80000043 -0.24721372 1 -0.76084661 -0.47022855 1 -0.64721489 -0.64721382 1 -0.47022867
		 -0.76084548 1 -0.24721384 -0.80000025 1 0 -0.76084548 1 0.24721289 -0.64721382 1 0.4702282
		 -0.47022831 1 0.64721203 -0.24721372 1 0.76084518 0 1 0.80000019 0.24721348 1 0.76084518
		 0.4702282 1 0.64721203 0.6472137 1 0.4702282 0.76084518 1 0.24721289 0.79999995 1 0
		 0.57063413 1 -0.1854105 0.48541045 1 -0.3526721 0.35267138 1 -0.48541069 0.18541002 1 -0.57063437
		 0 1 -0.60000086 -0.18541026 1 -0.57063437 -0.35267127 1 -0.48541069 -0.48541033 1 -0.3526721
		 -0.57063413 1 -0.1854105 -0.60000014 1 0 -0.57063413 1 0.18541002 -0.48541033 1 0.35267019
		 -0.35267127 1 0.48541021 -0.18541026 1 0.57063341 0 1 0.5999999 0.18541002 1 0.57063341
		 0.35267091 1 0.48541021 0.48541021 1 0.35267019 0.57063389 1 0.18541002 0.5999999 1 0
		 0.38042283 1 -0.12360764 0.32360697 1 -0.23511457 0.2351141 1 -0.32360697 0.12360692 1 -0.38042307
		 0 1 -0.40000057 -0.12360692 1 -0.38042307 -0.23511422 1 -0.32360697 -0.32360709 1 -0.23511457
		 -0.38042271 1 -0.12360764 -0.40000021 1 0 -0.38042271 1 0.1236062 -0.32360685 1 0.2351141
		 -0.23511422 1 0.32360649 -0.1236068 1 0.38042259 0 1 0.4000001 0.12360656 1 0.38042259
		 0.2351141 1 0.32360649 0.32360673 1 0.2351141 0.38042259 1 0.1236062 0.39999986 1 0
		 0.19021142 1 -0.061803818 0.16180348 1 -0.11755753 0.11755705 1 -0.16180372 0.06180346 1 -0.19021177
		 0 1 -0.20000076 -0.06180346 1 -0.19021177 -0.11755729 1 -0.16180372 -0.16180372 1 -0.11755753
		 -0.19021153 1 -0.061803818 -0.20000029 1 0 -0.19021153 1 0.061803341 -0.16180372 1 0.11755657
		 -0.11755729 1 0.16180325 -0.06180346 1 0.1902113 0 1 0.19999886 0.06180346 1 0.1902113
		 0.11755705 1 0.16180325 0.16180301 1 0.11755657 0.1902113 1 0.061803341 0.20000005 1 0
		 0 -1 0 0 1 0 0.7892859 0.06317082 -0.25645494 0.67140675 0.06317082 -0.48780584 0.67140675 0.16730359 -0.48780584
		 0.7892859 0.16730359 -0.25645494;
	setAttr ".vt[166:331]" 0.4878056 0.06317082 -0.67140675 0.4878056 0.16730359 -0.67140675
		 0.25645423 0.06317082 -0.78928638 0.25645423 0.16730359 -0.78928638 0 0.06317082 -0.82990456
		 0 0.16730359 -0.82990456 -0.25645459 0.06317082 -0.78928638 -0.25645459 0.16730359 -0.78928638
		 -0.48780549 0.06317082 -0.67140675 -0.48780549 0.16730359 -0.67140675 -0.67140663 0.06317082 -0.48780584
		 -0.67140663 0.16730359 -0.48780584 -0.78928572 0.06317082 -0.25645494 -0.78928572 0.16730359 -0.25645494
		 -0.82990408 0.06317082 0 -0.82990408 0.16730359 0 -0.78928572 0.06317082 0.25645399
		 -0.78928572 0.16730359 0.25645399 -0.67140651 0.06317082 0.48780537 -0.67140651 0.16730359 0.48780537
		 -0.48780537 0.06317082 0.67140532 -0.48780537 0.16730359 0.67140532 -0.25645435 0.06317082 0.78928423
		 -0.25645435 0.16730359 0.78928423 0 0.06317082 0.82990408 0 0.16730359 0.82990408
		 0.25645423 0.06317082 0.78928423 0.25645423 0.16730359 0.78928423 0.48780513 0.06317082 0.67140532
		 0.48780513 0.16730359 0.67140532 0.67140651 0.06317082 0.48780537 0.67140651 0.16730359 0.48780537
		 0.78928566 0.06317082 0.25645399 0.78928566 0.16730359 0.25645399 0.82990408 0.06317082 0
		 0.82990408 0.16730359 0 0.78937721 0.62116623 -0.25648451 0.67148447 0.62116623 -0.48786259
		 0.67148447 0.73295617 -0.48786259 0.78937721 0.73295617 -0.25648451 0.48786187 0.62116623 -0.67148495
		 0.48786187 0.73295617 -0.67148495 0.25648403 0.62116623 -0.78937793 0.25648403 0.73295617 -0.78937793
		 0 0.62116623 -0.83000088 0 0.73295617 -0.83000088 -0.25648427 0.62116623 -0.78937793
		 -0.25648427 0.73295617 -0.78937793 -0.48786211 0.62116623 -0.67148495 -0.48786211 0.73295617 -0.67148495
		 -0.67148435 0.62116623 -0.48786259 -0.67148435 0.73295617 -0.48786259 -0.78937721 0.62116623 -0.25648451
		 -0.78937721 0.73295617 -0.25648451 -0.83000022 0.62116623 0 -0.83000022 0.73295617 0
		 -0.78937721 0.62116623 0.25648355 -0.78937721 0.73295617 0.25648355 -0.67148435 0.62116623 0.48785973
		 -0.67148435 0.73295617 0.48785973 -0.48786211 0.62116623 0.67148256 -0.48786211 0.73295617 0.67148256
		 -0.25648427 0.62116623 0.78937531 -0.25648427 0.73295617 0.78937531 0 0.62116623 0.82999992
		 0 0.73295617 0.82999992 0.25648403 0.62116623 0.78937531 0.25648403 0.73295617 0.78937531
		 0.48786163 0.62116623 0.67148256 0.48786163 0.73295617 0.67148256 0.67148399 0.62116623 0.48785973
		 0.67148399 0.73295617 0.48785973 0.78937697 0.62116623 0.25648355 0.78937697 0.73295617 0.25648355
		 0.82999992 0.62116623 0 0.82999992 0.73295617 0 0.96405411 -0.54196447 0.70042562
		 0.7004261 -0.54196447 0.96405268 0.36823583 -0.54196447 1.13331223 0 -0.54196447 1.19163513
		 -0.36823583 -0.54196447 1.13331223 -0.70042658 -0.54196447 0.96405268 -0.96405435 -0.54196447 0.70042562
		 -1.13331378 -0.54196447 0.36823511 -1.19163644 -0.54196447 0 -1.13331378 -0.54196447 -0.36823654
		 -0.96405435 -0.54196447 -0.70042753 -0.70042658 -0.54196447 -0.96405482 -0.36823618 -0.54196447 -1.13331556
		 0 -0.54196447 -1.19163728 0.36823583 -0.54196447 -1.13331556 0.70042658 -0.54196447 -0.96405602
		 0.96405458 -0.54196447 -0.70042753 1.13331389 -0.54196447 -0.36823654 1.19163585 -0.54196447 0
		 1.13331342 -0.54196447 0.36823511 1.041951656 -0.60739815 0.75702095 0.75702167 -0.60739815 1.041950703
		 0.39799023 -0.60739815 1.22488594 0 -0.60739815 1.28792238 -0.39799023 -0.60739815 1.22488594
		 -0.7570225 -0.60739815 1.041950703 -1.041951895 -0.60739815 0.75702095 -1.22488773 -0.60739815 0.39798927
		 -1.28792334 -0.60739815 0 -1.22488773 -0.60739815 -0.39799118 -1.041951895 -0.60739815 -0.7570231
		 -0.7570225 -0.60739815 -1.041952133 -0.39799023 -0.60739815 -1.22488928 0 -0.60739815 -1.28792381
		 0.39799023 -0.60739815 -1.22488928 0.75702238 -0.60739815 -1.041953325 1.041951656 -0.60739815 -0.7570231
		 1.22488809 -0.60739815 -0.39799118 1.28792262 -0.60739815 0 1.22488761 -0.60739815 0.39798927
		 1.10459638 -0.67283177 0.8025341 0.80253601 -0.67283177 1.10459518 0.42191815 -0.67283177 1.29852915
		 0 -0.67283177 1.36535549 -0.42191827 -0.67283177 1.29852915 -0.80253643 -0.67283177 1.10459518
		 -1.10459661 -0.67283177 0.8025341 -1.29853094 -0.67283177 0.42191744 -1.36535633 -0.67283177 0
		 -1.29853094 -0.67283177 -0.42191887 -1.10459661 -0.67283177 -0.80253744 -0.80253661 -0.67283177 -1.10459685
		 -0.42191839 -0.67283177 -1.29853201 0 -0.67283177 -1.36535764 0.42191815 -0.67283177 -1.29853201
		 0.80253625 -0.67283177 -1.10459805 1.10459685 -0.67283177 -0.80253744 1.29853129 -0.67283177 -0.42191887
		 1.36535525 -0.67283177 0 1.29853082 -0.67283177 0.42191744 1.16167521 -0.7382654 0.84400511
		 0.84400558 -0.7382654 1.16167355 0.44372034 -0.7382654 1.36562967 0 -0.7382654 1.43590832
		 -0.44372046 -0.7382654 1.36562967 -0.84400648 -0.7382654 1.16167355 -1.16167533 -0.7382654 0.84400511
		 -1.36563087 -0.7382654 0.44371986 -1.43590939 -0.7382654 0 -1.36563087 -0.7382654 -0.44372082
		 -1.16167533 -0.7382654 -0.84400725 -0.84400666 -0.7382654 -1.16167569 -0.44372046 -0.7382654 -1.36563253
		 0 -0.7382654 -1.43590975 0.44372034 -0.7382654 -1.36563253 0.84400678 -0.7382654 -1.16167688
		 1.16167569 -0.7382654 -0.84400725 1.36563134 -0.7382654 -0.44372082 1.43590879 -0.7382654 0
		 1.36563015 -0.7382654 0.44371986 1.21423817 -0.80369902 0.88219404 0.88219547 -0.80369902 1.21423721
		 0.46379757 -0.80369902 1.42742157 0 -0.80369902 1.50087976 -0.46379781 -0.80369902 1.42742157
		 -0.88219571 -0.80369902 1.21423721 -1.21423841 -0.80369902 0.88219404 -1.42742252 -0.80369902 0.46379709
		 -1.50088072 -0.80369902 0 -1.42742252 -0.80369902 -0.46379805;
	setAttr ".vt[332:497]" -1.21423841 -0.80369902 -0.88219619 -0.88219589 -0.80369902 -1.21423864
		 -0.46379781 -0.80369902 -1.42742372 0 -0.80369902 -1.5008812 0.46379757 -0.80369902 -1.42742372
		 0.88219571 -0.80369902 -1.21423936 1.21423888 -0.80369902 -0.88219738 1.42742324 -0.80369902 -0.46379805
		 1.50088024 -0.80369902 0 1.42742205 -0.80369902 0.46379709 1.2519412 -0.8691327 0.90958691
		 0.90958786 -0.8691327 1.25193977 0.47819901 -0.8691327 1.47174406 0 -0.8691327 1.54748344
		 -0.47819889 -0.8691327 1.47174406 -0.90958846 -0.8691327 1.25193977 -1.2519412 -0.8691327 0.90958691
		 -1.47174501 -0.8691327 0.47819853 -1.54748416 -0.8691327 0 -1.47174501 -0.8691327 -0.47819948
		 -1.2519412 -0.8691327 -0.90958905 -0.90958863 -0.8691327 -1.25194192 -0.47819889 -0.8691327 -1.47174621
		 0 -0.8691327 -1.54748511 0.47819901 -0.8691327 -1.47174621 0.90958881 -0.8691327 -1.25194192
		 1.25194192 -0.8691327 -0.90959024 1.47174573 -0.8691327 -0.47819948 1.54748321 -0.8691327 0
		 1.47174454 -0.8691327 0.47819853 1.27657557 -0.93456638 0.92748499 0.92748594 -0.93456638 1.27657461
		 0.48760819 -0.93456638 1.50070429 0 -0.93456638 1.5779314 -0.48760855 -0.93456638 1.50070429
		 -0.9274866 -0.93456638 1.27657461 -1.27657568 -0.93456638 0.92748499 -1.50070477 -0.93456638 0.487607
		 -1.57793415 -0.93456638 0 -1.50070477 -0.93456638 -0.48760939 -1.27657568 -0.93456638 -0.92748713
		 -0.92748666 -0.93456638 -1.27657604 -0.48760855 -0.93456638 -1.50070572 0 -0.93456638 -1.57793474
		 0.48760819 -0.93456638 -1.50070572 0.92748666 -0.93456638 -1.27657676 1.27657628 -0.93456638 -0.92748833
		 1.50070524 -0.93456638 -0.48760939 1.57793307 -0.93456638 0 1.50070405 -0.93456638 0.487607
		 0.9510572 0.036098659 -0.30901766 0.93848968 0.045605719 -0.3049345 0.90498757 0.051961124 -0.29404879
		 0.80901766 0.036098659 -0.5877862 0.79832721 0.045605719 -0.58001947 0.76982832 0.051961124 -0.55931377
		 0.58778548 0.036098659 -0.80901837 0.58001828 0.045605719 -0.79832792 0.55931306 0.051961124 -0.76982927
		 0.30901694 0.036098659 -0.95105767 0.30493355 0.045605719 -0.93849015 0.29404783 0.051961124 -0.90498877
		 0 0.036098659 -1.000000476837 0 0.045605719 -0.98678684 0 0.051961124 -0.95156074
		 -0.30901718 0.036098659 -0.95105767 -0.30493391 0.045605719 -0.93849015 -0.29404855 0.051961124 -0.90498877
		 -0.58778548 0.036098659 -0.80901742 -0.58001852 0.045605719 -0.79832768 -0.55931294 0.051961124 -0.76982927
		 -0.8090173 0.036098659 -0.5877862 -0.79832685 0.045605719 -0.58001947 -0.76982838 0.051961124 -0.55931377
		 -0.95105678 0.036098659 -0.30901766 -0.9384895 0.045605719 -0.3049345 -0.90498728 0.051961124 -0.29404879
		 -1.000000238419 0.036098659 0 -0.98678619 0.045605719 0 -0.9515599 0.051961124 0
		 -0.95105678 0.036098659 0.30901623 -0.9384895 0.045605719 0.30493212 -0.90498728 0.051961124 0.29404688
		 -0.8090173 0.036098659 0.58778477 -0.79832685 0.045605719 0.58001804 -0.76982814 0.051961124 0.55931091
		 -0.58778548 0.036098659 0.80901623 -0.58001852 0.045605719 0.79832554 -0.55931294 0.051961124 0.76982641
		 -0.30901706 0.036098659 0.951056 -0.30493391 0.045605719 0.93848896 -0.29404819 0.051961124 0.9049859
		 0 0.036098659 1 0 0.045605719 0.98678589 0 0.051961124 0.95155859 0.30901694 0.036098659 0.951056
		 0.30493367 0.045605719 0.93848896 0.29404819 0.051961124 0.9049859 0.58778524 0.036098659 0.80901623
		 0.58001828 0.045605719 0.79832554 0.55931258 0.051961124 0.76982641 0.80901694 0.036098659 0.58778477
		 0.79832649 0.045605719 0.58001804 0.76982784 0.051961124 0.55931091 0.95105648 0.036098659 0.30901623
		 0.9384892 0.045605719 0.30493212 0.9049871 0.051961124 0.29404688 1 0.036098659 0
		 0.98678613 0.045605719 0 0.95155954 0.051961124 0 0.9510572 0.19437578 -0.30901766
		 0.93848968 0.18486866 -0.3049345 0.90498757 0.17851326 -0.29404879 0.80901766 0.19437578 -0.5877862
		 0.79832721 0.18486866 -0.58001947 0.76982832 0.17851326 -0.55931377 0.58778548 0.19437578 -0.80901837
		 0.58001828 0.18486866 -0.79832792 0.55931306 0.17851326 -0.76982927 0.30901694 0.19437578 -0.95105767
		 0.30493355 0.18486866 -0.93849015 0.29404783 0.17851326 -0.90498877 0 0.19437578 -1.000000476837
		 0 0.18486866 -0.98678684 0 0.17851326 -0.95156074 -0.30901718 0.19437578 -0.95105767
		 -0.30493391 0.18486866 -0.93849015 -0.29404819 0.17851326 -0.90498877 -0.58778548 0.19437578 -0.80901742
		 -0.58001852 0.18486866 -0.79832768 -0.55931294 0.17851326 -0.76982927 -0.8090173 0.19437578 -0.5877862
		 -0.79832685 0.18486866 -0.58001947 -0.76982838 0.17851326 -0.55931377 -0.95105678 0.19437578 -0.30901766
		 -0.93848944 0.18486866 -0.3049345 -0.90498728 0.17851326 -0.29404879 -1.000000238419 0.19437578 0
		 -0.98678619 0.18486866 0 -0.9515599 0.17851326 0 -0.95105678 0.19437578 0.30901623
		 -0.93848944 0.18486866 0.30493212 -0.90498728 0.17851326 0.29404688 -0.8090173 0.19437578 0.58778477
		 -0.79832685 0.18486866 0.58001804 -0.76982808 0.17851326 0.55931091 -0.58778548 0.19437578 0.80901623
		 -0.58001852 0.18486866 0.79832554 -0.55931294 0.17851326 0.76982641 -0.30901706 0.19437578 0.951056
		 -0.30493391 0.18486866 0.93848896 -0.29404807 0.17851326 0.9049859 0 0.19437578 1
		 0 0.18486866 0.98678589 0 0.17851326 0.95155859 0.30901694 0.19437578 0.951056 0.30493355 0.18486866 0.93848896
		 0.29404783 0.17851326 0.9049859 0.58778524 0.19437578 0.80901623 0.58001828 0.18486866 0.79832554
		 0.55931258 0.17851326 0.76982641 0.80901694 0.19437578 0.58778477 0.79832649 0.18486866 0.58001804
		 0.76982784 0.17851326 0.55931091 0.95105648 0.19437578 0.30901623 0.9384892 0.18486866 0.30493212;
	setAttr ".vt[498:663]" 0.9049871 0.17851326 0.29404688 1 0.19437578 0 0.98678613 0.18486866 0
		 0.95155954 0.17851326 0 0.9510572 0.596807 -0.30901766 0.93768215 0.60631418 -0.30467224
		 0.90255809 0.61229026 -0.2932601 0.80901766 0.596807 -0.5877862 0.79764009 0.60631418 -0.57952023
		 0.76776195 0.61229026 -0.55781269 0.58778548 0.596807 -0.80901837 0.57951927 0.60631418 -0.79764128
		 0.5578115 0.61229026 -0.76776481 0.30901694 0.596807 -0.95105767 0.30467117 0.60631418 -0.93768382
		 0.29325831 0.61229026 -0.90255857 0 0.596807 -1.000000476837 0 0.60631418 -0.9859376
		 0 0.61229026 -0.94900632 -0.30901718 0.596807 -0.95105767 -0.30467141 0.60631418 -0.93768382
		 -0.29325902 0.61229026 -0.90255857 -0.58778548 0.596807 -0.80901742 -0.57951939 0.60631418 -0.79764009
		 -0.55781162 0.61229026 -0.76776171 -0.8090173 0.596807 -0.5877862 -0.79763991 0.60631418 -0.57952023
		 -0.76776159 0.61229026 -0.55781269 -0.95105678 0.596807 -0.30901766 -0.93768185 0.60631418 -0.30467224
		 -0.90255791 0.61229026 -0.2932601 -1.000000238419 0.596807 0 -0.985937 0.60631418 0
		 -0.94900542 0.61229026 0 -0.95105678 0.596807 0.30901623 -0.93768185 0.60631418 0.30467033
		 -0.90255791 0.61229026 0.29325819 -0.8090173 0.596807 0.58778477 -0.79763991 0.60631418 0.57951784
		 -0.76776171 0.61229026 0.55781078 -0.58778548 0.596807 0.80901623 -0.57951939 0.60631418 0.79763794
		 -0.55781162 0.61229026 0.76776028 -0.30901706 0.596807 0.951056 -0.30467129 0.60631418 0.9376812
		 -0.29325902 0.61229026 0.90255737 0 0.596807 1 0 0.60631418 0.98593664 0 0.61229026 0.94900417
		 0.30901694 0.596807 0.951056 0.30467117 0.60631418 0.9376812 0.29325879 0.61229026 0.90255737
		 0.58778524 0.596807 0.80901623 0.5795188 0.60631418 0.79763794 0.55781126 0.61229026 0.76776028
		 0.80901694 0.596807 0.58778477 0.79763961 0.60631418 0.57951784 0.76776147 0.61229026 0.55781078
		 0.95105648 0.596807 0.30901623 0.93768144 0.60631418 0.30467033 0.90255761 0.61229026 0.29325819
		 1 0.596807 0 0.9859364 0.60631418 0 0.94900465 0.61229026 0 0.9510572 0.75731575 -0.30901766
		 0.93768239 0.74780869 -0.30467224 0.90255833 0.74183297 -0.2932601 0.80901766 0.75731575 -0.5877862
		 0.79764009 0.74780869 -0.57952023 0.76776195 0.74183297 -0.55781269 0.58778548 0.75731575 -0.80901837
		 0.57951927 0.74780869 -0.79764128 0.55781174 0.74183297 -0.76776481 0.30901694 0.75731575 -0.95105767
		 0.30467117 0.74780869 -0.93768382 0.29325879 0.74183297 -0.90255952 0 0.75731575 -1.000000476837
		 0 0.74780869 -0.9859376 0 0.74183297 -0.94900632 -0.30901718 0.75731575 -0.95105767
		 -0.30467141 0.74780869 -0.93768382 -0.29325902 0.74183297 -0.90255952 -0.58778548 0.75731575 -0.80901742
		 -0.57951939 0.74780869 -0.79764009 -0.55781162 0.74183297 -0.76776433 -0.8090173 0.75731575 -0.5877862
		 -0.79763997 0.74780869 -0.57952023 -0.76776171 0.74183297 -0.55781269 -0.95105678 0.75731575 -0.30901766
		 -0.93768191 0.74780869 -0.30467224 -0.90255797 0.74183297 -0.2932601 -1.000000238419 0.75731575 0
		 -0.98593706 0.74780869 0 -0.94900554 0.74183297 0 -0.95105678 0.75731575 0.30901623
		 -0.93768191 0.74780869 0.30467033 -0.90255797 0.74183297 0.29325819 -0.8090173 0.75731575 0.58778477
		 -0.79763997 0.74780869 0.57951784 -0.76776189 0.74183297 0.55781078 -0.58778548 0.75731575 0.80901623
		 -0.57951939 0.74780869 0.79763794 -0.55781162 0.74183297 0.76776028 -0.30901706 0.75731575 0.951056
		 -0.30467129 0.74780869 0.9376812 -0.29325902 0.74183297 0.90255737 0 0.75731575 1
		 0 0.74780869 0.98593664 0 0.74183297 0.9490056 0.30901694 0.75731575 0.951056 0.30467117 0.74780869 0.9376812
		 0.29325879 0.74183297 0.90255737 0.58778524 0.75731575 0.80901623 0.5795188 0.74780869 0.79763794
		 0.55781126 0.74183297 0.76776028 0.80901694 0.75731575 0.58778477 0.79763961 0.74780869 0.57951784
		 0.76776147 0.74183297 0.55781078 0.95105648 0.75731575 0.30901623 0.93768144 0.74780869 0.30467033
		 0.90255785 0.74183297 0.29325819 1 0.75731575 0 0.9859364 0.74780869 0 0.94900465 0.74183297 0
		 0.85596132 1 -0.27812004 0.92320418 0.99365866 -0.29996824 0.9510572 0.97834909 -0.30901766
		 0.72812438 1 -0.52901411 0.78532434 0.99365866 -0.57057238 0.80901766 0.97834909 -0.5877862
		 0.52901316 1 -0.72812581 0.57057142 0.99365866 -0.78532505 0.58778548 0.97834909 -0.80901837
		 0.27811837 1 -0.85596228 0.29996681 0.99365866 -0.9232049 0.30901694 0.97834909 -0.95105767
		 0 1 -0.90001106 0 0.99365866 -0.97071481 0 0.97834909 -1.000000476837 -0.27811873 1 -0.85596228
		 -0.29996717 0.99365866 -0.9232049 -0.30901718 0.97834909 -0.95105767 -0.52901316 1 -0.72812462
		 -0.57057154 0.99365866 -0.78532505 -0.58778548 0.97834909 -0.80901742 -0.72812408 1 -0.52901363
		 -0.78532416 0.99365866 -0.57057238 -0.8090173 0.97834909 -0.5877862 -0.85596102 1 -0.27811909
		 -0.92320395 0.99365866 -0.29996824 -0.95105678 0.97834909 -0.30901766 -0.9000107 1 0
		 -0.97071403 0.99365866 0 -1.000000238419 0.97834909 0 -0.85596102 1 0.27811718 -0.92320395 0.99365866 0.29996586
		 -0.95105678 0.97834909 0.30901623 -0.72812408 1 0.5290122 -0.78532416 0.99365866 0.57056999
		 -0.8090173 0.97834909 0.58778477 -0.52901316 1 0.72812319 -0.57057154 0.99365866 0.78532314
		 -0.58778548 0.97834909 0.80901623 -0.27811849 1 0.85596037 -0.29996705 0.99365866 0.92320347
		 -0.30901706 0.97834909 0.951056;
	setAttr ".vt[664:829]" 0 1 0.90001011 0 0.99365866 0.97071266 0 0.97834909 1
		 0.27811837 1 0.85596037 0.29996681 0.99365866 0.92320347 0.30901694 0.97834909 0.951056
		 0.52901244 1 0.72812319 0.57057118 0.99365866 0.78532314 0.58778524 0.97834909 0.80901623
		 0.72812343 1 0.5290122 0.78532362 0.99365866 0.57056999 0.80901694 0.97834909 0.58778477
		 0.85596061 1 0.27811718 0.92320347 0.99365866 0.29996586 0.95105648 0.97834909 0.30901623
		 0.90001035 1 0 0.97071362 0.99365866 0 1 0.97834909 0 1.46612573 -1 -0.47637415 1.49638581 -0.99708343 -0.4862051
		 1.50825453 -0.99010694 -0.49006224 1.24716115 -1 -0.90611649 1.27290177 -0.99708343 -0.92481899
		 1.28299785 -0.99010694 -0.93215394 0.90611577 -1 -1.24716258 0.92481732 -0.99708343 -1.27290297
		 0.93215251 -0.99010694 -1.28299832 0.47637296 -1 -1.46612597 0.4862051 -0.99708343 -1.49638581
		 0.49006128 -0.99010694 -1.50825453 0 -1 -1.54157615 0 -0.99708343 -1.57339311 0 -0.99010694 -1.58587289
		 -0.47637296 -1 -1.46612597 -0.4862051 -0.99708343 -1.49638629 -0.4900614 -0.99010694 -1.50825453
		 -0.90611541 -1 -1.24716067 -0.92481714 -0.99708343 -1.27290177 -0.93215227 -0.99010694 -1.28299737
		 -1.24716055 -1 -0.90611529 -1.2729013 -0.99708343 -0.9248178 -1.28299737 -0.99010694 -0.93215275
		 -1.46612525 -1 -0.47637415 -1.49638522 -0.99708343 -0.4862051 -1.50825381 -0.99010694 -0.49006224
		 -1.54157507 -1 0 -1.57339239 -0.99708343 0 -1.58587182 -0.99010694 0 -1.46612525 -1 0.47637177
		 -1.49638522 -0.99708343 0.48620367 -1.50825381 -0.99010694 0.49006081 -1.24716055 -1 0.90611315
		 -1.2729013 -0.99708343 0.92481565 -1.28299737 -0.99010694 0.93214941 -0.90611511 -1 1.24715996
		 -0.92481691 -0.99708343 1.2729001 -0.93215209 -0.99010694 1.28299665 -0.47637308 -1 1.46612501
		 -0.4862051 -0.99708343 1.49638367 -0.4900614 -0.99010694 1.5082531 0 -1 1.54157209
		 0 -0.99708343 1.57339096 0 -0.99010694 1.58586931 0.47637296 -1 1.46612501 0.4862051 -0.99708343 1.49638367
		 0.49006128 -0.99010694 1.5082531 0.90611482 -1 1.24715996 0.92481661 -0.99708343 1.2729001
		 0.93215203 -0.99010694 1.28299665 1.2471602 -1 0.90611315 1.2729013 -0.99708343 0.92481565
		 1.28299713 -0.99010694 0.93214941 1.46612453 -1 0.47637177 1.49638462 -0.99708343 0.48620367
		 1.50825334 -0.99010694 0.49006081 1.54157424 -1 0 1.57339144 -0.99708343 0 1.58587098 -0.99010694 0
		 1.28277326 -0.98032081 -0.41679907 1.29289913 -0.98800898 -0.42008924 1.31441951 -0.99436104 -0.42708158
		 1.34449792 -0.99854195 -0.43685436 1.37915683 -1 -0.4481163 1.091192484 -0.98032081 -0.79279876
		 1.09980607 -0.98800898 -0.79905653 1.11811209 -0.99436104 -0.81235671 1.14369869 -0.99854195 -0.83094645
		 1.17318153 -1 -0.85236669 0.7927978 -0.98032093 -1.091194153 0.79905605 -0.98800898 -1.099808216
		 0.812356 -0.99436104 -1.11811447 0.83094549 -0.99854195 -1.1437006 0.85236621 -1 -1.17318344
		 0.41679835 -0.98032093 -1.28277516 0.42008805 -0.98800898 -1.29290152 0.42708063 -0.99436104 -1.31442165
		 0.43685365 -0.99854195 -1.34449959 0.44811487 -1 -1.37915921 1.1920929e-07 -0.98032081 -1.3487885
		 1.1920929e-07 -0.98800898 -1.35943556 1.1920929e-07 -0.99436104 -1.38206267 1.1920929e-07 -0.99854195 -1.4136889
		 1.1920929e-07 -1 -1.45013213 -0.41679871 -0.98032093 -1.28277516 -0.42008889 -0.98800898 -1.29290152
		 -0.42708099 -0.99436104 -1.31442165 -0.436854 -0.99854195 -1.34449959 -0.44811535 -1 -1.37915921
		 -0.79279792 -0.98032093 -1.091194153 -0.79905611 -0.98800898 -1.099808216 -0.81235635 -0.99436104 -1.11811447
		 -0.83094585 -0.99854195 -1.1437006 -0.85236639 -1 -1.17318344 -1.091192484 -0.98032081 -0.79279876
		 -1.09980607 -0.98800898 -0.79905653 -1.11811209 -0.99436104 -0.81235671 -1.14369845 -0.99854195 -0.83094645
		 -1.1731813 -1 -0.85236669 -1.28277361 -0.98032081 -0.41679907 -1.29289961 -0.98800898 -0.42008924
		 -1.31441963 -0.99436104 -0.42708158 -1.34449792 -0.99854195 -0.43685436 -1.37915719 -1 -0.4481163
		 -1.34878802 -0.98032081 4.7683716e-07 -1.35943496 -0.98800898 4.7683716e-07 -1.38206255 -0.99436104 4.7683716e-07
		 -1.4136889 -0.99854195 4.7683716e-07 -1.45013165 -1 4.7683716e-07 -1.28277361 -0.98032081 0.41679716
		 -1.29289961 -0.98800898 0.42008781 -1.31441963 -0.99436104 0.42708015 -1.34449792 -0.99854195 0.43685341
		 -1.37915719 -1 0.44811487 -1.091192484 -0.98032081 0.79279566 -1.09980607 -0.98800898 0.79905367
		 -1.11811209 -0.99436104 0.81235456 -1.14369822 -0.99854195 0.83094406 -1.17318106 -1 0.85236502
		 -0.79279768 -0.98032081 1.091190815 -0.79905599 -0.98800898 1.099803925 -0.81235605 -0.99436104 1.11811066
		 -0.83094555 -0.99854195 1.14369631 -0.85236615 -1 1.17317867 -0.41679871 -0.98032093 1.28277349
		 -0.42008889 -0.98800898 1.29289865 -0.42708111 -0.99436104 1.31441927 -0.43685412 -0.99854195 1.34449768
		 -0.44811559 -1 1.37915707 1.1920929e-07 -0.98032081 1.34878683 1.1920929e-07 -0.98800898 1.35943413
		 1.1920929e-07 -0.99436104 1.382061 1.1920929e-07 -0.99854195 1.41368723 1.1920929e-07 -1 1.45013094
		 0.41679835 -0.98032093 1.28277349 0.42008853 -0.98800898 1.29289865 0.42708063 -0.99436104 1.31441927
		 0.43685365 -0.99854195 1.34449768 0.44811511 -1 1.37915707 0.79279757 -0.98032081 1.091190815
		 0.79905581 -0.98800898 1.099803925 0.812356 -0.99436104 1.11811066 0.83094549 -0.99854195 1.14369631
		 0.85236621 -1 1.17317867 1.091192245 -0.98032081 0.79279566 1.099805832 -0.98800898 0.79905367
		 1.11811185 -0.99436104 0.81235456;
	setAttr ".vt[830:841]" 1.14369798 -0.99854195 0.83094406 1.17318106 -1 0.85236502
		 1.28277326 -0.98032081 0.41679716 1.29289913 -0.98800898 0.42008781 1.31441927 -0.99436104 0.42708015
		 1.34449768 -0.99854195 0.43685341 1.37915683 -1 0.44811487 1.34878731 -0.98032081 4.7683716e-07
		 1.35943437 -0.98800898 4.7683716e-07 1.38206196 -0.99436104 4.7683716e-07 1.41368818 -0.99854195 4.7683716e-07
		 1.4501307 -1 4.7683716e-07;
	setAttr -s 1700 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 40 0 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1;
	setAttr ".ed[166:331]" 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1
		 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1
		 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1
		 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1
		 85 105 1 86 106 1 87 107 1 88 108 1 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1
		 94 114 1 95 115 1 96 116 1 97 117 1 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1
		 103 123 1 104 124 1 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1
		 112 132 1 113 133 1 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1
		 121 141 1 122 142 1 123 143 1 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1
		 130 150 1 131 151 1 132 152 1 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1
		 139 159 1 160 0 1 160 1 1 160 2 1 160 3 1 160 4 1 160 5 1 160 6 1 160 7 1 160 8 1
		 160 9 1 160 10 1 160 11 1 160 12 1 160 13 1 160 14 1 160 15 1 160 16 1 160 17 1 160 18 1
		 160 19 1 140 161 1 141 161 1 142 161 1 143 161 1 144 161 1 145 161 1 146 161 1 147 161 1
		 148 161 1 149 161 1 150 161 1 151 161 1 152 161 1 153 161 1 154 161 1 155 161 1 156 161 1
		 157 161 1 158 161 1 159 161 1 162 163 0 163 164 1 165 164 0 162 165 1 163 166 0 166 167 1
		 164 167 0 166 168 0 168 169 1 167 169 0 168 170 0 170 171 1 169 171 0 170 172 0 172 173 1
		 171 173 0 172 174 0 174 175 1 173 175 0 174 176 0 176 177 1 175 177 0 176 178 0 178 179 1
		 177 179 0 178 180 0 180 181 1 179 181 0 180 182 0 182 183 1 181 183 0 182 184 0;
	setAttr ".ed[332:497]" 184 185 1 183 185 0 184 186 0 186 187 1 185 187 0 186 188 0
		 188 189 1 187 189 0 188 190 0 190 191 1 189 191 0 190 192 0 192 193 1 191 193 0 192 194 0
		 194 195 1 193 195 0 194 196 0 196 197 1 195 197 0 196 198 0 198 199 1 197 199 0 198 200 0
		 200 201 1 199 201 0 200 162 0 201 165 0 202 203 0 203 204 1 205 204 0 202 205 1 203 206 0
		 206 207 1 204 207 0 206 208 0 208 209 1 207 209 0 208 210 0 210 211 1 209 211 0 210 212 0
		 212 213 1 211 213 0 212 214 0 214 215 1 213 215 0 214 216 0 216 217 1 215 217 0 216 218 0
		 218 219 1 217 219 0 218 220 0 220 221 1 219 221 0 220 222 0 222 223 1 221 223 0 222 224 0
		 224 225 1 223 225 0 224 226 0 226 227 1 225 227 0 226 228 0 228 229 1 227 229 0 228 230 0
		 230 231 1 229 231 0 230 232 0 232 233 1 231 233 0 232 234 0 234 235 1 233 235 0 234 236 0
		 236 237 1 235 237 0 236 238 0 238 239 1 237 239 0 238 240 0 240 241 1 239 241 0 240 202 0
		 241 205 0 242 77 1 243 76 1 242 243 1 244 75 1 243 244 1 245 74 1 244 245 1 246 73 1
		 245 246 1 247 72 1 246 247 1 248 71 1 247 248 1 249 70 1 248 249 1 250 69 1 249 250 1
		 251 68 1 250 251 1 252 67 1 251 252 1 253 66 1 252 253 1 254 65 1 253 254 1 255 64 1
		 254 255 1 256 63 1 255 256 1 257 62 1 256 257 1 258 61 1 257 258 1 259 60 1 258 259 1
		 260 79 1 259 260 1 261 78 1 260 261 1 261 242 1 262 242 1 263 243 1 262 263 1 264 244 1
		 263 264 1 265 245 1 264 265 1 266 246 1 265 266 1 267 247 1 266 267 1 268 248 1 267 268 1
		 269 249 1 268 269 1 270 250 1 269 270 1 271 251 1 270 271 1 272 252 1 271 272 1 273 253 1
		 272 273 1 274 254 1 273 274 1 275 255 1 274 275 1 276 256 1 275 276 1 277 257 1 276 277 1
		 278 258 1 277 278 1 279 259 1 278 279 1 280 260 1 279 280 1 281 261 1;
	setAttr ".ed[498:663]" 280 281 1 281 262 1 282 262 1 283 263 1 282 283 1 284 264 1
		 283 284 1 285 265 1 284 285 1 286 266 1 285 286 1 287 267 1 286 287 1 288 268 1 287 288 1
		 289 269 1 288 289 1 290 270 1 289 290 1 291 271 1 290 291 1 292 272 1 291 292 1 293 273 1
		 292 293 1 294 274 1 293 294 1 295 275 1 294 295 1 296 276 1 295 296 1 297 277 1 296 297 1
		 298 278 1 297 298 1 299 279 1 298 299 1 300 280 1 299 300 1 301 281 1 300 301 1 301 282 1
		 302 282 1 303 283 1 302 303 1 304 284 1 303 304 1 305 285 1 304 305 1 306 286 1 305 306 1
		 307 287 1 306 307 1 308 288 1 307 308 1 309 289 1 308 309 1 310 290 1 309 310 1 311 291 1
		 310 311 1 312 292 1 311 312 1 313 293 1 312 313 1 314 294 1 313 314 1 315 295 1 314 315 1
		 316 296 1 315 316 1 317 297 1 316 317 1 318 298 1 317 318 1 319 299 1 318 319 1 320 300 1
		 319 320 1 321 301 1 320 321 1 321 302 1 322 302 1 323 303 1 322 323 1 324 304 1 323 324 1
		 325 305 1 324 325 1 326 306 1 325 326 1 327 307 1 326 327 1 328 308 1 327 328 1 329 309 1
		 328 329 1 330 310 1 329 330 1 331 311 1 330 331 1 332 312 1 331 332 1 333 313 1 332 333 1
		 334 314 1 333 334 1 335 315 1 334 335 1 336 316 1 335 336 1 337 317 1 336 337 1 338 318 1
		 337 338 1 339 319 1 338 339 1 340 320 1 339 340 1 341 321 1 340 341 1 341 322 1 342 322 1
		 343 323 1 342 343 1 344 324 1 343 344 1 345 325 1 344 345 1 346 326 1 345 346 1 347 327 1
		 346 347 1 348 328 1 347 348 1 349 329 1 348 349 1 350 330 1 349 350 1 351 331 1 350 351 1
		 352 332 1 351 352 1 353 333 1 352 353 1 354 334 1 353 354 1 355 335 1 354 355 1 356 336 1
		 355 356 1 357 337 1 356 357 1 358 338 1 357 358 1 359 339 1 358 359 1 360 340 1 359 360 1
		 361 341 1 360 361 1 361 342 1 362 342 1 363 343 1 362 363 1 364 344 1;
	setAttr ".ed[664:829]" 363 364 1 365 345 1 364 365 1 366 346 1 365 366 1 367 347 1
		 366 367 1 368 348 1 367 368 1 369 349 1 368 369 1 370 350 1 369 370 1 371 351 1 370 371 1
		 372 352 1 371 372 1 373 353 1 372 373 1 374 354 1 373 374 1 375 355 1 374 375 1 376 356 1
		 375 376 1 377 357 1 376 377 1 378 358 1 377 378 1 379 359 1 378 379 1 380 360 1 379 380 1
		 381 361 1 380 381 1 381 362 1 440 439 1 439 382 1 384 441 1 441 440 1 384 383 1 387 384 1
		 383 382 1 382 385 1 387 386 1 390 387 1 386 385 1 385 388 1 390 389 1 393 390 1 389 388 1
		 388 391 1 393 392 1 396 393 1 392 391 1 391 394 1 396 395 1 399 396 1 395 394 1 394 397 1
		 399 398 1 402 399 1 398 397 1 397 400 1 402 401 1 405 402 1 401 400 1 400 403 1 405 404 1
		 408 405 1 404 403 1 403 406 1 408 407 1 411 408 1 407 406 1 406 409 1 411 410 1 414 411 1
		 410 409 1 409 412 1 414 413 1 417 414 1 413 412 1 412 415 1 417 416 1 420 417 1 416 415 1
		 415 418 1 420 419 1 423 420 1 419 418 1 418 421 1 423 422 1 426 423 1 422 421 1 421 424 1
		 426 425 1 429 426 1 425 424 1 424 427 1 429 428 1 432 429 1 428 427 1 427 430 1 432 431 1
		 435 432 1 431 430 1 430 433 1 435 434 1 438 435 1 434 433 1 433 436 1 438 437 1 441 438 1
		 437 436 1 436 439 1 446 445 1 445 442 1 444 447 1 447 446 1 444 443 1 501 444 1 443 442 1
		 442 499 1 449 448 1 448 445 1 447 450 1 450 449 1 452 451 1 451 448 1 450 453 1 453 452 1
		 455 454 1 454 451 1 453 456 1 456 455 1 458 457 1 457 454 1 456 459 1 459 458 1 461 460 1
		 460 457 1 459 462 1 462 461 1 464 463 1 463 460 1 462 465 1 465 464 1 467 466 1 466 463 1
		 465 468 1 468 467 1 470 469 1 469 466 1 468 471 1 471 470 1 473 472 1 472 469 1 471 474 1
		 474 473 1 476 475 1 475 472 1 474 477 1 477 476 1 479 478 1 478 475 1;
	setAttr ".ed[830:995]" 477 480 1 480 479 1 482 481 1 481 478 1 480 483 1 483 482 1
		 485 484 1 484 481 1 483 486 1 486 485 1 488 487 1 487 484 1 486 489 1 489 488 1 491 490 1
		 490 487 1 489 492 1 492 491 1 494 493 1 493 490 1 492 495 1 495 494 1 497 496 1 496 493 1
		 495 498 1 498 497 1 500 499 1 499 496 1 498 501 1 501 500 1 560 559 1 559 502 1 504 561 1
		 561 560 1 504 503 1 507 504 1 503 502 1 502 505 1 507 506 1 510 507 1 506 505 1 505 508 1
		 510 509 1 513 510 1 509 508 1 508 511 1 513 512 1 516 513 1 512 511 1 511 514 1 516 515 1
		 519 516 1 515 514 1 514 517 1 519 518 1 522 519 1 518 517 1 517 520 1 522 521 1 525 522 1
		 521 520 1 520 523 1 525 524 1 528 525 1 524 523 1 523 526 1 528 527 1 531 528 1 527 526 1
		 526 529 1 531 530 1 534 531 1 530 529 1 529 532 1 534 533 1 537 534 1 533 532 1 532 535 1
		 537 536 1 540 537 1 536 535 1 535 538 1 540 539 1 543 540 1 539 538 1 538 541 1 543 542 1
		 546 543 1 542 541 1 541 544 1 546 545 1 549 546 1 545 544 1 544 547 1 549 548 1 552 549 1
		 548 547 1 547 550 1 552 551 1 555 552 1 551 550 1 550 553 1 555 554 1 558 555 1 554 553 1
		 553 556 1 558 557 1 561 558 1 557 556 1 556 559 1 566 565 1 565 562 1 564 567 1 567 566 1
		 564 563 1 621 564 1 563 562 1 562 619 1 569 568 1 568 565 1 567 570 1 570 569 1 572 571 1
		 571 568 1 570 573 1 573 572 1 575 574 1 574 571 1 573 576 1 576 575 1 578 577 1 577 574 1
		 576 579 1 579 578 1 581 580 1 580 577 1 579 582 1 582 581 1 584 583 1 583 580 1 582 585 1
		 585 584 1 587 586 1 586 583 1 585 588 1 588 587 1 590 589 1 589 586 1 588 591 1 591 590 1
		 593 592 1 592 589 1 591 594 1 594 593 1 596 595 1 595 592 1 594 597 1 597 596 1 599 598 1
		 598 595 1 597 600 1 600 599 1 602 601 1 601 598 1 600 603 1 603 602 1;
	setAttr ".ed[996:1161]" 605 604 1 604 601 1 603 606 1 606 605 1 608 607 1 607 604 1
		 606 609 1 609 608 1 611 610 1 610 607 1 609 612 1 612 611 1 614 613 1 613 610 1 612 615 1
		 615 614 1 617 616 1 616 613 1 615 618 1 618 617 1 620 619 1 619 616 1 618 621 1 621 620 1
		 61 385 1 382 60 1 62 388 1 63 391 1 64 394 1 65 397 1 66 400 1 67 403 1 68 406 1
		 69 409 1 70 412 1 71 415 1 72 418 1 73 421 1 74 424 1 75 427 1 76 430 1 77 433 1
		 78 436 1 79 439 1 445 505 1 502 442 1 448 508 1 451 511 1 454 514 1 457 517 1 460 520 1
		 463 523 1 466 526 1 469 529 1 472 532 1 475 535 1 478 538 1 481 541 1 484 544 1 487 547 1
		 490 550 1 493 553 1 496 556 1 499 559 1 387 163 1 162 384 1 444 165 1 164 447 1 390 166 1
		 167 450 1 393 168 1 169 453 1 396 170 1 171 456 1 399 172 1 173 459 1 402 174 1 175 462 1
		 405 176 1 177 465 1 408 178 1 179 468 1 411 180 1 181 471 1 414 182 1 183 474 1 417 184 1
		 185 477 1 420 186 1 187 480 1 423 188 1 189 483 1 426 190 1 191 486 1 429 192 1 193 489 1
		 432 194 1 195 492 1 435 196 1 197 495 1 438 198 1 199 498 1 441 200 1 201 501 1 507 203 1
		 202 504 1 564 205 1 204 567 1 510 206 1 207 570 1 513 208 1 209 573 1 516 210 1 211 576 1
		 519 212 1 213 579 1 522 214 1 215 582 1 525 216 1 217 585 1 528 218 1 219 588 1 531 220 1
		 221 591 1 534 222 1 223 594 1 537 224 1 225 597 1 540 226 1 227 600 1 543 228 1 229 603 1
		 546 230 1 231 606 1 549 232 1 233 609 1 552 234 1 235 612 1 555 236 1 237 615 1 558 238 1
		 239 618 1 561 240 1 241 621 1 383 440 0 383 386 0 386 389 0 389 392 0 392 395 0 395 398 0
		 398 401 0 401 404 0 404 407 0 407 410 0 410 413 0 413 416 0 416 419 0 419 422 0 422 425 0
		 425 428 0 428 431 0 431 434 0 434 437 0 437 440 0 443 446 0 446 449 0;
	setAttr ".ed[1162:1327]" 449 452 0 452 455 0 455 458 0 458 461 0 461 464 0 464 467 0
		 467 470 0 470 473 0 473 476 0 476 479 0 479 482 0 482 485 0 485 488 0 488 491 0 491 494 0
		 494 497 0 497 500 0 443 500 0 503 560 0 503 506 0 506 509 0 509 512 0 512 515 0 515 518 0
		 518 521 0 521 524 0 524 527 0 527 530 0 530 533 0 533 536 0 536 539 0 539 542 0 542 545 0
		 545 548 0 548 551 0 551 554 0 554 557 0 557 560 0 563 566 0 566 569 0 569 572 0 572 575 0
		 575 578 0 578 581 0 581 584 0 584 587 0 587 590 0 590 593 0 593 596 0 596 599 0 599 602 0
		 602 605 0 605 608 0 608 611 0 611 614 0 614 617 0 617 620 0 563 620 0 626 625 1 625 622 1
		 624 627 1 627 626 1 624 623 1 681 624 1 623 622 1 622 679 1 629 628 1 628 625 1 627 630 1
		 630 629 1 632 631 1 631 628 1 630 633 1 633 632 1 635 634 1 634 631 1 633 636 1 636 635 1
		 638 637 1 637 634 1 636 639 1 639 638 1 641 640 1 640 637 1 639 642 1 642 641 1 644 643 1
		 643 640 1 642 645 1 645 644 1 647 646 1 646 643 1 645 648 1 648 647 1 650 649 1 649 646 1
		 648 651 1 651 650 1 653 652 1 652 649 1 651 654 1 654 653 1 656 655 1 655 652 1 654 657 1
		 657 656 1 659 658 1 658 655 1 657 660 1 660 659 1 662 661 1 661 658 1 660 663 1 663 662 1
		 665 664 1 664 661 1 663 666 1 666 665 1 668 667 1 667 664 1 666 669 1 669 668 1 671 670 1
		 670 667 1 669 672 1 672 671 1 674 673 1 673 670 1 672 675 1 675 674 1 677 676 1 676 673 1
		 675 678 1 678 677 1 680 679 1 679 676 1 678 681 1 681 680 1 625 81 1 80 622 1 628 82 1
		 631 83 1 634 84 1 637 85 1 640 86 1 643 87 1 646 88 1 649 89 1 652 90 1 655 91 1
		 658 92 1 661 93 1 664 94 1 667 95 1 670 96 1 673 97 1 676 98 1 679 99 1 565 627 1
		 624 562 1 568 630 1 571 633 1 574 636 1 577 639 1 580 642 1 583 645 1;
	setAttr ".ed[1328:1493]" 586 648 1 589 651 1 592 654 1 595 657 1 598 660 1 601 663 1
		 604 666 1 607 669 1 610 672 1 613 675 1 616 678 1 619 681 1 623 626 0 626 629 0 629 632 0
		 632 635 0 635 638 0 638 641 0 641 644 0 644 647 0 647 650 0 650 653 0 653 656 0 656 659 0
		 659 662 0 662 665 0 665 668 0 668 671 0 671 674 0 674 677 0 677 680 0 623 680 0 740 739 1
		 739 682 1 684 741 1 741 740 1 684 683 1 687 684 1 683 682 1 682 685 1 687 686 1 690 687 1
		 686 685 1 685 688 1 690 689 1 693 690 1 689 688 1 688 691 1 693 692 1 696 693 1 692 691 1
		 691 694 1 696 695 1 699 696 1 695 694 1 694 697 1 699 698 1 702 699 1 698 697 1 697 700 1
		 702 701 1 705 702 1 701 700 1 700 703 1 705 704 1 708 705 1 704 703 1 703 706 1 708 707 1
		 711 708 1 707 706 1 706 709 1 711 710 1 714 711 1 710 709 1 709 712 1 714 713 1 717 714 1
		 713 712 1 712 715 1 717 716 1 720 717 1 716 715 1 715 718 1 720 719 1 723 720 1 719 718 1
		 718 721 1 723 722 1 726 723 1 722 721 1 721 724 1 726 725 1 729 726 1 725 724 1 724 727 1
		 729 728 1 732 729 1 728 727 1 727 730 1 732 731 1 735 732 1 731 730 1 730 733 1 735 734 1
		 738 735 1 734 733 1 733 736 1 738 737 1 741 738 1 737 736 1 736 739 1 687 378 1 379 684 1
		 690 377 1 693 376 1 696 375 1 699 374 1 702 373 1 705 372 1 708 371 1 711 370 1 714 369 1
		 717 368 1 720 367 1 723 366 1 726 365 1 729 364 1 732 363 1 735 362 1 738 381 1 741 380 1
		 683 740 0 683 686 0 686 689 0 689 692 0 692 695 0 695 698 0 698 701 0 701 704 0 704 707 0
		 707 710 0 710 713 0 713 716 0 716 719 0 719 722 0 722 725 0 725 728 0 728 731 0 731 734 0
		 734 737 0 737 740 0 838 837 1 837 742 1 839 838 1 840 839 1 746 841 1 841 840 1 746 745 1
		 751 746 1 745 744 1 744 743 1 743 742 1 742 747 1 751 750 1 756 751 1;
	setAttr ".ed[1494:1659]" 750 749 1 749 748 1 748 747 1 747 752 1 756 755 1 761 756 1
		 755 754 1 754 753 1 753 752 1 752 757 1 761 760 1 766 761 1 760 759 1 759 758 1 758 757 1
		 757 762 1 766 765 1 771 766 1 765 764 1 764 763 1 763 762 1 762 767 1 771 770 1 776 771 1
		 770 769 1 769 768 1 768 767 1 767 772 1 776 775 1 781 776 1 775 774 1 774 773 1 773 772 1
		 772 777 1 781 780 1 786 781 1 780 779 1 779 778 1 778 777 1 777 782 1 786 785 1 791 786 1
		 785 784 1 784 783 1 783 782 1 782 787 1 791 790 1 796 791 1 790 789 1 789 788 1 788 787 1
		 787 792 1 796 795 1 801 796 1 795 794 1 794 793 1 793 792 1 792 797 1 801 800 1 806 801 1
		 800 799 1 799 798 1 798 797 1 797 802 1 806 805 1 811 806 1 805 804 1 804 803 1 803 802 1
		 802 807 1 811 810 1 816 811 1 810 809 1 809 808 1 808 807 1 807 812 1 816 815 1 821 816 1
		 815 814 1 814 813 1 813 812 1 812 817 1 821 820 1 826 821 1 820 819 1 819 818 1 818 817 1
		 817 822 1 826 825 1 831 826 1 825 824 1 824 823 1 823 822 1 822 827 1 831 830 1 836 831 1
		 830 829 1 829 828 1 828 827 1 827 832 1 836 835 1 841 836 1 835 834 1 834 833 1 833 832 1
		 832 837 1 41 747 1 742 40 1 42 752 1 43 757 1 44 762 1 45 767 1 46 772 1 47 777 1
		 48 782 1 49 787 1 50 792 1 51 797 1 52 802 1 53 807 1 54 812 1 55 817 1 56 822 1
		 57 827 1 58 832 1 59 837 1 751 685 1 682 746 1 756 688 1 761 691 1 766 694 1 771 697 1
		 776 700 1 781 703 1 786 706 1 791 709 1 796 712 1 801 715 1 806 718 1 811 721 1 816 724 1
		 821 727 1 826 730 1 831 733 1 836 736 1 841 739 1 745 840 1 744 839 1 743 838 1 745 750 1
		 744 749 1 743 748 1 750 755 1 749 754 1 748 753 1 755 760 1 754 759 1 753 758 1 760 765 1
		 759 764 1 758 763 1 765 770 1 764 769 1 763 768 1 770 775 1 769 774 1;
	setAttr ".ed[1660:1699]" 768 773 1 775 780 1 774 779 1 773 778 1 780 785 1 779 784 1
		 778 783 1 785 790 1 784 789 1 783 788 1 790 795 1 789 794 1 788 793 1 795 800 1 794 799 1
		 793 798 1 800 805 1 799 804 1 798 803 1 805 810 1 804 809 1 803 808 1 810 815 1 809 814 1
		 808 813 1 815 820 1 814 819 1 813 818 1 820 825 1 819 824 1 818 823 1 825 830 1 824 829 1
		 823 828 1 830 835 1 829 834 1 828 833 1 835 840 1 834 839 1 833 838 1;
	setAttr -s 860 -ch 3400 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 161 -21 -161
		mu 0 4 0 1 21 20
		f 4 1 162 -22 -162
		mu 0 4 1 2 22 21
		f 4 2 163 -23 -163
		mu 0 4 2 3 23 22
		f 4 3 164 -24 -164
		mu 0 4 3 4 24 23
		f 4 4 165 -25 -165
		mu 0 4 4 5 25 24
		f 4 5 166 -26 -166
		mu 0 4 5 6 26 25
		f 4 6 167 -27 -167
		mu 0 4 6 7 27 26
		f 4 7 168 -28 -168
		mu 0 4 7 8 28 27
		f 4 8 169 -29 -169
		mu 0 4 8 9 29 28
		f 4 9 170 -30 -170
		mu 0 4 9 10 30 29
		f 4 10 171 -31 -171
		mu 0 4 10 11 31 30
		f 4 11 172 -32 -172
		mu 0 4 11 12 32 31
		f 4 12 173 -33 -173
		mu 0 4 12 13 33 32
		f 4 13 174 -34 -174
		mu 0 4 13 14 34 33
		f 4 14 175 -35 -175
		mu 0 4 14 15 35 34
		f 4 15 176 -36 -176
		mu 0 4 15 16 36 35
		f 4 16 177 -37 -177
		mu 0 4 16 17 37 36
		f 4 17 178 -38 -178
		mu 0 4 17 18 38 37
		f 4 18 179 -39 -179
		mu 0 4 18 19 39 38
		f 4 19 160 -40 -180
		mu 0 4 19 0 20 39
		f 4 20 181 -41 -181
		mu 0 4 20 21 770 808
		f 4 21 182 -42 -182
		mu 0 4 21 22 772 770
		f 4 22 183 -43 -183
		mu 0 4 22 23 774 772
		f 4 23 184 -44 -184
		mu 0 4 23 24 776 774
		f 4 24 185 -45 -185
		mu 0 4 24 25 778 776
		f 4 25 186 -46 -186
		mu 0 4 25 26 780 778
		f 4 26 187 -47 -187
		mu 0 4 26 27 782 780
		f 4 27 188 -48 -188
		mu 0 4 27 28 784 782
		f 4 28 189 -49 -189
		mu 0 4 28 29 786 784
		f 4 29 190 -50 -190
		mu 0 4 29 30 788 786
		f 4 30 191 -51 -191
		mu 0 4 30 31 790 788
		f 4 31 192 -52 -192
		mu 0 4 31 32 792 790
		f 4 32 193 -53 -193
		mu 0 4 32 33 794 792
		f 4 33 194 -54 -194
		mu 0 4 33 34 796 794
		f 4 34 195 -55 -195
		mu 0 4 34 35 798 796
		f 4 35 196 -56 -196
		mu 0 4 35 36 800 798
		f 4 36 197 -57 -197
		mu 0 4 36 37 802 800
		f 4 37 198 -58 -198
		mu 0 4 37 38 804 802
		f 4 38 199 -59 -199
		mu 0 4 38 39 806 804
		f 4 39 180 -60 -200
		mu 0 4 39 20 808 806
		f 4 300 301 -303 -304
		mu 0 4 315 319 317 103
		f 4 304 305 -307 -302
		mu 0 4 319 323 321 317
		f 4 307 308 -310 -306
		mu 0 4 323 327 325 321
		f 4 310 311 -313 -309
		mu 0 4 327 331 329 325
		f 4 313 314 -316 -312
		mu 0 4 331 335 333 329
		f 4 316 317 -319 -315
		mu 0 4 335 339 337 333
		f 4 319 320 -322 -318
		mu 0 4 339 343 341 337
		f 4 322 323 -325 -321
		mu 0 4 343 347 345 341
		f 4 325 326 -328 -324
		mu 0 4 347 351 349 345
		f 4 328 329 -331 -327
		mu 0 4 351 355 353 349
		f 4 331 332 -334 -330
		mu 0 4 355 359 357 353
		f 4 334 335 -337 -333
		mu 0 4 359 363 361 357
		f 4 337 338 -340 -336
		mu 0 4 363 367 365 361
		f 4 340 341 -343 -339
		mu 0 4 367 371 369 365
		f 4 343 344 -346 -342
		mu 0 4 371 375 373 369
		f 4 346 347 -349 -345
		mu 0 4 375 379 377 373
		f 4 349 350 -352 -348
		mu 0 4 379 383 381 377
		f 4 352 353 -355 -351
		mu 0 4 383 387 385 381
		f 4 355 356 -358 -354
		mu 0 4 387 391 389 385
		f 4 358 303 -360 -357
		mu 0 4 391 104 393 389
		f 4 360 361 -363 -364
		mu 0 4 395 399 397 105
		f 4 364 365 -367 -362
		mu 0 4 399 403 401 397
		f 4 367 368 -370 -366
		mu 0 4 403 407 405 401
		f 4 370 371 -373 -369
		mu 0 4 407 411 409 405
		f 4 373 374 -376 -372
		mu 0 4 411 415 413 409
		f 4 376 377 -379 -375
		mu 0 4 415 419 417 413
		f 4 379 380 -382 -378
		mu 0 4 419 423 421 417
		f 4 382 383 -385 -381
		mu 0 4 423 427 425 421
		f 4 385 386 -388 -384
		mu 0 4 427 431 429 425
		f 4 388 389 -391 -387
		mu 0 4 431 435 433 429
		f 4 391 392 -394 -390
		mu 0 4 435 439 437 433
		f 4 394 395 -397 -393
		mu 0 4 439 443 441 437
		f 4 397 398 -400 -396
		mu 0 4 443 447 445 441
		f 4 400 401 -403 -399
		mu 0 4 447 451 449 445
		f 4 403 404 -406 -402
		mu 0 4 451 455 453 449
		f 4 406 407 -409 -405
		mu 0 4 455 459 457 453
		f 4 409 410 -412 -408
		mu 0 4 459 463 461 457
		f 4 412 413 -415 -411
		mu 0 4 463 467 465 461
		f 4 415 416 -418 -414
		mu 0 4 467 471 469 465
		f 4 418 363 -420 -417
		mu 0 4 471 106 473 469
		f 4 80 201 -101 -201
		mu 0 4 567 569 58 59
		f 4 81 202 -102 -202
		mu 0 4 569 571 57 58
		f 4 82 203 -103 -203
		mu 0 4 571 573 56 57
		f 4 83 204 -104 -204
		mu 0 4 573 575 55 56
		f 4 84 205 -105 -205
		mu 0 4 575 577 54 55
		f 4 85 206 -106 -206
		mu 0 4 577 579 53 54
		f 4 86 207 -107 -207
		mu 0 4 579 581 52 53
		f 4 87 208 -108 -208
		mu 0 4 581 583 51 52
		f 4 88 209 -109 -209
		mu 0 4 583 585 50 51
		f 4 89 210 -110 -210
		mu 0 4 585 587 49 50
		f 4 90 211 -111 -211
		mu 0 4 587 589 48 49
		f 4 91 212 -112 -212
		mu 0 4 589 591 47 48
		f 4 92 213 -113 -213
		mu 0 4 591 593 46 47
		f 4 93 214 -114 -214
		mu 0 4 593 595 45 46
		f 4 94 215 -115 -215
		mu 0 4 595 597 44 45
		f 4 95 216 -116 -216
		mu 0 4 597 599 43 44
		f 4 96 217 -117 -217
		mu 0 4 599 601 42 43
		f 4 97 218 -118 -218
		mu 0 4 601 603 41 42
		f 4 98 219 -119 -219
		mu 0 4 603 605 60 41
		f 4 99 200 -120 -220
		mu 0 4 605 567 59 60
		f 4 100 221 -121 -221
		mu 0 4 59 58 78 79
		f 4 101 222 -122 -222
		mu 0 4 58 57 77 78
		f 4 102 223 -123 -223
		mu 0 4 57 56 76 77
		f 4 103 224 -124 -224
		mu 0 4 56 55 75 76
		f 4 104 225 -125 -225
		mu 0 4 55 54 74 75
		f 4 105 226 -126 -226
		mu 0 4 54 53 73 74
		f 4 106 227 -127 -227
		mu 0 4 53 52 72 73
		f 4 107 228 -128 -228
		mu 0 4 52 51 71 72
		f 4 108 229 -129 -229
		mu 0 4 51 50 70 71
		f 4 109 230 -130 -230
		mu 0 4 50 49 69 70
		f 4 110 231 -131 -231
		mu 0 4 49 48 68 69
		f 4 111 232 -132 -232
		mu 0 4 48 47 67 68
		f 4 112 233 -133 -233
		mu 0 4 47 46 66 67
		f 4 113 234 -134 -234
		mu 0 4 46 45 65 66
		f 4 114 235 -135 -235
		mu 0 4 45 44 64 65
		f 4 115 236 -136 -236
		mu 0 4 44 43 63 64
		f 4 116 237 -137 -237
		mu 0 4 43 42 62 63
		f 4 117 238 -138 -238
		mu 0 4 42 41 61 62
		f 4 118 239 -139 -239
		mu 0 4 41 60 80 61
		f 4 119 220 -140 -240
		mu 0 4 60 59 79 80
		f 4 120 241 -141 -241
		mu 0 4 79 78 98 99
		f 4 121 242 -142 -242
		mu 0 4 78 77 97 98
		f 4 122 243 -143 -243
		mu 0 4 77 76 96 97
		f 4 123 244 -144 -244
		mu 0 4 76 75 95 96
		f 4 124 245 -145 -245
		mu 0 4 75 74 94 95
		f 4 125 246 -146 -246
		mu 0 4 74 73 93 94
		f 4 126 247 -147 -247
		mu 0 4 73 72 92 93
		f 4 127 248 -148 -248
		mu 0 4 72 71 91 92
		f 4 128 249 -149 -249
		mu 0 4 71 70 90 91
		f 4 129 250 -150 -250
		mu 0 4 70 69 89 90
		f 4 130 251 -151 -251
		mu 0 4 69 68 88 89
		f 4 131 252 -152 -252
		mu 0 4 68 67 87 88
		f 4 132 253 -153 -253
		mu 0 4 67 66 86 87
		f 4 133 254 -154 -254
		mu 0 4 66 65 85 86
		f 4 134 255 -155 -255
		mu 0 4 65 64 84 85
		f 4 135 256 -156 -256
		mu 0 4 64 63 83 84
		f 4 136 257 -157 -257
		mu 0 4 63 62 82 83
		f 4 137 258 -158 -258
		mu 0 4 62 61 81 82
		f 4 138 259 -159 -259
		mu 0 4 61 80 100 81
		f 4 139 240 -160 -260
		mu 0 4 80 79 99 100
		f 3 -1 -261 261
		mu 0 3 1 0 101
		f 3 -2 -262 262
		mu 0 3 2 1 101
		f 3 -3 -263 263
		mu 0 3 3 2 101
		f 3 -4 -264 264
		mu 0 3 4 3 101
		f 3 -5 -265 265
		mu 0 3 5 4 101
		f 3 -6 -266 266
		mu 0 3 6 5 101
		f 3 -7 -267 267
		mu 0 3 7 6 101
		f 3 -8 -268 268
		mu 0 3 8 7 101
		f 3 -9 -269 269
		mu 0 3 9 8 101
		f 3 -10 -270 270
		mu 0 3 10 9 101
		f 3 -11 -271 271
		mu 0 3 11 10 101
		f 3 -12 -272 272
		mu 0 3 12 11 101
		f 3 -13 -273 273
		mu 0 3 13 12 101
		f 3 -14 -274 274
		mu 0 3 14 13 101
		f 3 -15 -275 275
		mu 0 3 15 14 101
		f 3 -16 -276 276
		mu 0 3 16 15 101
		f 3 -17 -277 277
		mu 0 3 17 16 101
		f 3 -18 -278 278
		mu 0 3 18 17 101
		f 3 -19 -279 279
		mu 0 3 19 18 101
		f 3 -20 -280 260
		mu 0 3 0 19 101
		f 3 140 281 -281
		mu 0 3 99 98 102
		f 3 141 282 -282
		mu 0 3 98 97 102
		f 3 142 283 -283
		mu 0 3 97 96 102
		f 3 143 284 -284
		mu 0 3 96 95 102
		f 3 144 285 -285
		mu 0 3 95 94 102
		f 3 145 286 -286
		mu 0 3 94 93 102
		f 3 146 287 -287
		mu 0 3 93 92 102
		f 3 147 288 -288
		mu 0 3 92 91 102
		f 3 148 289 -289
		mu 0 3 91 90 102
		f 3 149 290 -290
		mu 0 3 90 89 102
		f 3 150 291 -291
		mu 0 3 89 88 102
		f 3 151 292 -292
		mu 0 3 88 87 102
		f 3 152 293 -293
		mu 0 3 87 86 102
		f 3 153 294 -294
		mu 0 3 86 85 102
		f 3 154 295 -295
		mu 0 3 85 84 102
		f 3 155 296 -296
		mu 0 3 84 83 102
		f 3 156 297 -297
		mu 0 3 83 82 102
		f 3 157 298 -298
		mu 0 3 82 81 102
		f 3 158 299 -299
		mu 0 3 81 100 102
		f 3 159 280 -300
		mu 0 3 100 99 102
		f 4 -422 -423 420 -77
		mu 0 4 264 108 107 266
		f 4 -424 -425 421 -76
		mu 0 4 262 109 108 264
		f 4 -426 -427 423 -75
		mu 0 4 260 110 109 262
		f 4 -428 -429 425 -74
		mu 0 4 258 111 110 260
		f 4 -430 -431 427 -73
		mu 0 4 256 112 111 258
		f 4 -432 -433 429 -72
		mu 0 4 254 113 112 256
		f 4 -434 -435 431 -71
		mu 0 4 252 114 113 254
		f 4 -436 -437 433 -70
		mu 0 4 250 115 114 252
		f 4 -438 -439 435 -69
		mu 0 4 248 116 115 250
		f 4 -440 -441 437 -68
		mu 0 4 246 117 116 248
		f 4 -442 -443 439 -67
		mu 0 4 244 118 117 246
		f 4 -444 -445 441 -66
		mu 0 4 242 119 118 244
		f 4 -446 -447 443 -65
		mu 0 4 240 120 119 242
		f 4 -448 -449 445 -64
		mu 0 4 238 121 120 240
		f 4 -450 -451 447 -63
		mu 0 4 236 122 121 238
		f 4 -452 -453 449 -62
		mu 0 4 234 123 122 236
		f 4 -454 -455 451 -61
		mu 0 4 40 125 123 234
		f 4 -456 -457 453 -80
		mu 0 4 270 126 124 272
		f 4 -458 -459 455 -79
		mu 0 4 268 127 126 270
		f 4 -421 -460 457 -78
		mu 0 4 266 107 127 268
		f 4 -463 460 422 -462
		mu 0 4 129 128 107 108
		f 4 -465 461 424 -464
		mu 0 4 130 129 108 109
		f 4 -467 463 426 -466
		mu 0 4 131 130 109 110
		f 4 -469 465 428 -468
		mu 0 4 132 131 110 111
		f 4 -471 467 430 -470
		mu 0 4 133 132 111 112
		f 4 -473 469 432 -472
		mu 0 4 134 133 112 113
		f 4 -475 471 434 -474
		mu 0 4 135 134 113 114
		f 4 -477 473 436 -476
		mu 0 4 136 135 114 115
		f 4 -479 475 438 -478
		mu 0 4 137 136 115 116
		f 4 -481 477 440 -480
		mu 0 4 138 137 116 117
		f 4 -483 479 442 -482
		mu 0 4 139 138 117 118
		f 4 -485 481 444 -484
		mu 0 4 140 139 118 119
		f 4 -487 483 446 -486
		mu 0 4 141 140 119 120
		f 4 -489 485 448 -488
		mu 0 4 142 141 120 121
		f 4 -491 487 450 -490
		mu 0 4 143 142 121 122
		f 4 -493 489 452 -492
		mu 0 4 144 143 122 123
		f 4 -495 491 454 -494
		mu 0 4 146 144 123 125
		f 4 -497 493 456 -496
		mu 0 4 147 145 124 126
		f 4 -499 495 458 -498
		mu 0 4 148 147 126 127
		f 4 -500 497 459 -461
		mu 0 4 128 148 127 107
		f 4 -503 500 462 -502
		mu 0 4 150 149 128 129
		f 4 -505 501 464 -504
		mu 0 4 151 150 129 130
		f 4 -507 503 466 -506
		mu 0 4 152 151 130 131
		f 4 -509 505 468 -508
		mu 0 4 153 152 131 132
		f 4 -511 507 470 -510
		mu 0 4 154 153 132 133
		f 4 -513 509 472 -512
		mu 0 4 155 154 133 134
		f 4 -515 511 474 -514
		mu 0 4 156 155 134 135
		f 4 -517 513 476 -516
		mu 0 4 157 156 135 136
		f 4 -519 515 478 -518
		mu 0 4 158 157 136 137
		f 4 -521 517 480 -520
		mu 0 4 159 158 137 138
		f 4 -523 519 482 -522
		mu 0 4 160 159 138 139
		f 4 -525 521 484 -524
		mu 0 4 161 160 139 140
		f 4 -527 523 486 -526
		mu 0 4 162 161 140 141
		f 4 -529 525 488 -528
		mu 0 4 163 162 141 142
		f 4 -531 527 490 -530
		mu 0 4 164 163 142 143
		f 4 -533 529 492 -532
		mu 0 4 165 164 143 144
		f 4 -535 531 494 -534
		mu 0 4 167 165 144 146
		f 4 -537 533 496 -536
		mu 0 4 168 166 145 147
		f 4 -539 535 498 -538
		mu 0 4 169 168 147 148
		f 4 -540 537 499 -501
		mu 0 4 149 169 148 128
		f 4 -543 540 502 -542
		mu 0 4 171 170 149 150
		f 4 -545 541 504 -544
		mu 0 4 172 171 150 151
		f 4 -547 543 506 -546
		mu 0 4 173 172 151 152
		f 4 -549 545 508 -548
		mu 0 4 174 173 152 153
		f 4 -551 547 510 -550
		mu 0 4 175 174 153 154
		f 4 -553 549 512 -552
		mu 0 4 176 175 154 155
		f 4 -555 551 514 -554
		mu 0 4 177 176 155 156
		f 4 -557 553 516 -556
		mu 0 4 178 177 156 157
		f 4 -559 555 518 -558
		mu 0 4 179 178 157 158
		f 4 -561 557 520 -560
		mu 0 4 180 179 158 159
		f 4 -563 559 522 -562
		mu 0 4 181 180 159 160
		f 4 -565 561 524 -564
		mu 0 4 182 181 160 161
		f 4 -567 563 526 -566
		mu 0 4 183 182 161 162
		f 4 -569 565 528 -568
		mu 0 4 184 183 162 163
		f 4 -571 567 530 -570
		mu 0 4 185 184 163 164
		f 4 -573 569 532 -572
		mu 0 4 186 185 164 165
		f 4 -575 571 534 -574
		mu 0 4 188 186 165 167
		f 4 -577 573 536 -576
		mu 0 4 189 187 166 168
		f 4 -579 575 538 -578
		mu 0 4 190 189 168 169
		f 4 -580 577 539 -541
		mu 0 4 170 190 169 149
		f 4 -583 580 542 -582
		mu 0 4 192 191 170 171
		f 4 -585 581 544 -584
		mu 0 4 193 192 171 172
		f 4 -587 583 546 -586
		mu 0 4 194 193 172 173
		f 4 -589 585 548 -588
		mu 0 4 195 194 173 174
		f 4 -591 587 550 -590
		mu 0 4 196 195 174 175
		f 4 -593 589 552 -592
		mu 0 4 197 196 175 176
		f 4 -595 591 554 -594
		mu 0 4 198 197 176 177
		f 4 -597 593 556 -596
		mu 0 4 199 198 177 178
		f 4 -599 595 558 -598
		mu 0 4 200 199 178 179
		f 4 -601 597 560 -600
		mu 0 4 201 200 179 180
		f 4 -603 599 562 -602
		mu 0 4 202 201 180 181
		f 4 -605 601 564 -604
		mu 0 4 203 202 181 182
		f 4 -607 603 566 -606
		mu 0 4 204 203 182 183
		f 4 -609 605 568 -608
		mu 0 4 205 204 183 184
		f 4 -611 607 570 -610
		mu 0 4 206 205 184 185
		f 4 -613 609 572 -612
		mu 0 4 207 206 185 186
		f 4 -615 611 574 -614
		mu 0 4 209 207 186 188
		f 4 -617 613 576 -616
		mu 0 4 210 208 187 189
		f 4 -619 615 578 -618
		mu 0 4 211 210 189 190
		f 4 -620 617 579 -581
		mu 0 4 191 211 190 170
		f 4 -623 620 582 -622
		mu 0 4 213 212 191 192
		f 4 -625 621 584 -624
		mu 0 4 214 213 192 193
		f 4 -627 623 586 -626
		mu 0 4 215 214 193 194
		f 4 -629 625 588 -628
		mu 0 4 216 215 194 195
		f 4 -631 627 590 -630
		mu 0 4 217 216 195 196
		f 4 -633 629 592 -632
		mu 0 4 218 217 196 197
		f 4 -635 631 594 -634
		mu 0 4 219 218 197 198
		f 4 -637 633 596 -636
		mu 0 4 220 219 198 199
		f 4 -639 635 598 -638
		mu 0 4 221 220 199 200
		f 4 -641 637 600 -640
		mu 0 4 222 221 200 201
		f 4 -643 639 602 -642
		mu 0 4 223 222 201 202
		f 4 -645 641 604 -644
		mu 0 4 224 223 202 203
		f 4 -647 643 606 -646
		mu 0 4 225 224 203 204
		f 4 -649 645 608 -648
		mu 0 4 226 225 204 205
		f 4 -651 647 610 -650
		mu 0 4 227 226 205 206
		f 4 -653 649 612 -652
		mu 0 4 228 227 206 207
		f 4 -655 651 614 -654
		mu 0 4 230 228 207 209
		f 4 -657 653 616 -656
		mu 0 4 231 229 208 210
		f 4 -659 655 618 -658
		mu 0 4 232 231 210 211
		f 4 -660 657 619 -621
		mu 0 4 212 232 211 191
		f 4 -663 660 622 -662
		mu 0 4 721 723 212 213
		f 4 -665 661 624 -664
		mu 0 4 719 721 213 214
		f 4 -667 663 626 -666
		mu 0 4 717 719 214 215
		f 4 -669 665 628 -668
		mu 0 4 715 717 215 216
		f 4 -671 667 630 -670
		mu 0 4 713 715 216 217
		f 4 -673 669 632 -672
		mu 0 4 711 713 217 218
		f 4 -675 671 634 -674
		mu 0 4 709 711 218 219
		f 4 -677 673 636 -676
		mu 0 4 707 709 219 220
		f 4 -679 675 638 -678
		mu 0 4 705 707 220 221
		f 4 -681 677 640 -680
		mu 0 4 703 705 221 222
		f 4 -683 679 642 -682
		mu 0 4 701 703 222 223
		f 4 -685 681 644 -684
		mu 0 4 699 701 223 224
		f 4 -687 683 646 -686
		mu 0 4 697 699 224 225
		f 4 -689 685 648 -688
		mu 0 4 695 697 225 226
		f 4 -691 687 650 -690
		mu 0 4 693 695 226 227
		f 4 -693 689 652 -692
		mu 0 4 691 693 227 228
		f 4 -695 691 654 -694
		mu 0 4 689 691 228 230
		f 4 -697 693 656 -696
		mu 0 4 727 233 229 231
		f 4 -699 695 658 -698
		mu 0 4 725 727 231 232
		f 4 -700 697 659 -661
		mu 0 4 723 725 232 212
		f 4 60 1020 -708 1021
		mu 0 4 40 234 237 235
		f 4 61 1022 -712 -1021
		mu 0 4 234 236 239 237
		f 4 62 1023 -716 -1023
		mu 0 4 236 238 241 239
		f 4 63 1024 -720 -1024
		mu 0 4 238 240 243 241
		f 4 64 1025 -724 -1025
		mu 0 4 240 242 245 243
		f 4 65 1026 -728 -1026
		mu 0 4 242 244 247 245
		f 4 66 1027 -732 -1027
		mu 0 4 244 246 249 247
		f 4 67 1028 -736 -1028
		mu 0 4 246 248 251 249
		f 4 68 1029 -740 -1029
		mu 0 4 248 250 253 251
		f 4 69 1030 -744 -1030
		mu 0 4 250 252 255 253
		f 4 70 1031 -748 -1031
		mu 0 4 252 254 257 255
		f 4 71 1032 -752 -1032
		mu 0 4 254 256 259 257
		f 4 72 1033 -756 -1033
		mu 0 4 256 258 261 259
		f 4 73 1034 -760 -1034
		mu 0 4 258 260 263 261
		f 4 74 1035 -764 -1035
		mu 0 4 260 262 265 263
		f 4 75 1036 -768 -1036
		mu 0 4 262 264 267 265
		f 4 76 1037 -772 -1037
		mu 0 4 264 266 269 267
		f 4 77 1038 -776 -1038
		mu 0 4 266 268 271 269
		f 4 78 1039 -780 -1039
		mu 0 4 268 270 273 271
		f 4 79 -1022 -702 -1040
		mu 0 4 270 272 474 273
		f 4 -782 1040 -868 1041
		mu 0 4 476 274 277 275
		f 4 -790 1042 -872 -1041
		mu 0 4 274 276 279 277
		f 4 -794 1043 -876 -1043
		mu 0 4 276 278 281 279
		f 4 -798 1044 -880 -1044
		mu 0 4 278 280 283 281
		f 4 -802 1045 -884 -1045
		mu 0 4 280 282 285 283
		f 4 -806 1046 -888 -1046
		mu 0 4 282 284 287 285
		f 4 -810 1047 -892 -1047
		mu 0 4 284 286 289 287
		f 4 -814 1048 -896 -1048
		mu 0 4 286 288 291 289
		f 4 -818 1049 -900 -1049
		mu 0 4 288 290 293 291
		f 4 -822 1050 -904 -1050
		mu 0 4 290 292 295 293
		f 4 -826 1051 -908 -1051
		mu 0 4 292 294 297 295
		f 4 -830 1052 -912 -1052
		mu 0 4 294 296 299 297
		f 4 -834 1053 -916 -1053
		mu 0 4 296 298 301 299
		f 4 -838 1054 -920 -1054
		mu 0 4 298 300 303 301
		f 4 -842 1055 -924 -1055
		mu 0 4 300 302 305 303
		f 4 -846 1056 -928 -1056
		mu 0 4 302 304 307 305
		f 4 -850 1057 -932 -1057
		mu 0 4 304 306 309 307
		f 4 -854 1058 -936 -1058
		mu 0 4 306 308 311 309
		f 4 -858 1059 -940 -1059
		mu 0 4 308 310 313 311
		f 4 -788 -1042 -862 -1060
		mu 0 4 310 312 478 313
		f 4 -706 1060 -301 1061
		mu 0 4 475 314 319 315
		f 4 -783 1062 302 1063
		mu 0 4 320 316 103 317
		f 4 -710 1064 -305 -1061
		mu 0 4 314 318 323 319
		f 4 -791 -1064 306 1065
		mu 0 4 324 320 317 321
		f 4 -714 1066 -308 -1065
		mu 0 4 318 322 327 323
		f 4 -795 -1066 309 1067
		mu 0 4 328 324 321 325
		f 4 -718 1068 -311 -1067
		mu 0 4 322 326 331 327
		f 4 -799 -1068 312 1069
		mu 0 4 332 328 325 329
		f 4 -722 1070 -314 -1069
		mu 0 4 326 330 335 331
		f 4 -803 -1070 315 1071
		mu 0 4 336 332 329 333
		f 4 -726 1072 -317 -1071
		mu 0 4 330 334 339 335
		f 4 -807 -1072 318 1073
		mu 0 4 340 336 333 337
		f 4 -730 1074 -320 -1073
		mu 0 4 334 338 343 339
		f 4 -811 -1074 321 1075
		mu 0 4 344 340 337 341
		f 4 -734 1076 -323 -1075
		mu 0 4 338 342 347 343
		f 4 -815 -1076 324 1077
		mu 0 4 348 344 341 345
		f 4 -738 1078 -326 -1077
		mu 0 4 342 346 351 347
		f 4 -819 -1078 327 1079
		mu 0 4 352 348 345 349
		f 4 -742 1080 -329 -1079
		mu 0 4 346 350 355 351
		f 4 -823 -1080 330 1081
		mu 0 4 356 352 349 353
		f 4 -746 1082 -332 -1081
		mu 0 4 350 354 359 355
		f 4 -827 -1082 333 1083
		mu 0 4 360 356 353 357
		f 4 -750 1084 -335 -1083
		mu 0 4 354 358 363 359
		f 4 -831 -1084 336 1085
		mu 0 4 364 360 357 361
		f 4 -754 1086 -338 -1085
		mu 0 4 358 362 367 363
		f 4 -835 -1086 339 1087
		mu 0 4 368 364 361 365
		f 4 -758 1088 -341 -1087
		mu 0 4 362 366 371 367
		f 4 -839 -1088 342 1089
		mu 0 4 372 368 365 369
		f 4 -762 1090 -344 -1089
		mu 0 4 366 370 375 371
		f 4 -843 -1090 345 1091
		mu 0 4 376 372 369 373
		f 4 -766 1092 -347 -1091
		mu 0 4 370 374 379 375
		f 4 -847 -1092 348 1093
		mu 0 4 380 376 373 377
		f 4 -770 1094 -350 -1093
		mu 0 4 374 378 383 379
		f 4 -851 -1094 351 1095
		mu 0 4 384 380 377 381
		f 4 -774 1096 -353 -1095
		mu 0 4 378 382 387 383
		f 4 -855 -1096 354 1097
		mu 0 4 388 384 381 385
		f 4 -778 1098 -356 -1097
		mu 0 4 382 386 391 387
		f 4 -859 -1098 357 1099
		mu 0 4 392 388 385 389
		f 4 -703 -1062 -359 -1099
		mu 0 4 386 390 104 391
		f 4 -786 -1100 359 -1063
		mu 0 4 477 392 389 393
		f 4 -866 1100 -361 1101
		mu 0 4 479 394 399 395
		f 4 -943 1102 362 1103
		mu 0 4 400 396 105 397
		f 4 -870 1104 -365 -1101
		mu 0 4 394 398 403 399
		f 4 -951 -1104 366 1105
		mu 0 4 404 400 397 401
		f 4 -874 1106 -368 -1105
		mu 0 4 398 402 407 403
		f 4 -955 -1106 369 1107
		mu 0 4 408 404 401 405
		f 4 -878 1108 -371 -1107
		mu 0 4 402 406 411 407
		f 4 -959 -1108 372 1109
		mu 0 4 412 408 405 409
		f 4 -882 1110 -374 -1109
		mu 0 4 406 410 415 411
		f 4 -963 -1110 375 1111
		mu 0 4 416 412 409 413
		f 4 -886 1112 -377 -1111
		mu 0 4 410 414 419 415
		f 4 -967 -1112 378 1113
		mu 0 4 420 416 413 417
		f 4 -890 1114 -380 -1113
		mu 0 4 414 418 423 419
		f 4 -971 -1114 381 1115
		mu 0 4 424 420 417 421
		f 4 -894 1116 -383 -1115
		mu 0 4 418 422 427 423
		f 4 -975 -1116 384 1117
		mu 0 4 428 424 421 425
		f 4 -898 1118 -386 -1117
		mu 0 4 422 426 431 427
		f 4 -979 -1118 387 1119
		mu 0 4 432 428 425 429
		f 4 -902 1120 -389 -1119
		mu 0 4 426 430 435 431
		f 4 -983 -1120 390 1121
		mu 0 4 436 432 429 433
		f 4 -906 1122 -392 -1121
		mu 0 4 430 434 439 435
		f 4 -987 -1122 393 1123
		mu 0 4 440 436 433 437
		f 4 -910 1124 -395 -1123
		mu 0 4 434 438 443 439
		f 4 -991 -1124 396 1125
		mu 0 4 444 440 437 441
		f 4 -914 1126 -398 -1125
		mu 0 4 438 442 447 443
		f 4 -995 -1126 399 1127
		mu 0 4 448 444 441 445
		f 4 -918 1128 -401 -1127
		mu 0 4 442 446 451 447
		f 4 -999 -1128 402 1129
		mu 0 4 452 448 445 449
		f 4 -922 1130 -404 -1129
		mu 0 4 446 450 455 451
		f 4 -1003 -1130 405 1131
		mu 0 4 456 452 449 453
		f 4 -926 1132 -407 -1131
		mu 0 4 450 454 459 455
		f 4 -1007 -1132 408 1133
		mu 0 4 460 456 453 457
		f 4 -930 1134 -410 -1133
		mu 0 4 454 458 463 459
		f 4 -1011 -1134 411 1135
		mu 0 4 464 460 457 461
		f 4 -934 1136 -413 -1135
		mu 0 4 458 462 467 463
		f 4 -1015 -1136 414 1137
		mu 0 4 468 464 461 465
		f 4 -938 1138 -416 -1137
		mu 0 4 462 466 471 467
		f 4 -1019 -1138 417 1139
		mu 0 4 472 468 465 469
		f 4 -863 -1102 -419 -1139
		mu 0 4 466 470 106 471
		f 4 -946 -1140 419 -1103
		mu 0 4 481 472 469 473
		f 4 -707 1140 700 701
		mu 0 4 474 483 502 273
		f 4 -705 702 703 -1141
		mu 0 4 483 390 386 502
		f 4 704 1141 -709 705
		mu 0 4 475 482 484 314
		f 4 706 707 -711 -1142
		mu 0 4 482 235 237 484
		f 4 708 1142 -713 709
		mu 0 4 314 484 485 318
		f 4 710 711 -715 -1143
		mu 0 4 484 237 239 485
		f 4 712 1143 -717 713
		mu 0 4 318 485 486 322
		f 4 714 715 -719 -1144
		mu 0 4 485 239 241 486
		f 4 716 1144 -721 717
		mu 0 4 322 486 487 326
		f 4 718 719 -723 -1145
		mu 0 4 486 241 243 487
		f 4 720 1145 -725 721
		mu 0 4 326 487 488 330
		f 4 722 723 -727 -1146
		mu 0 4 487 243 245 488
		f 4 724 1146 -729 725
		mu 0 4 330 488 489 334
		f 4 726 727 -731 -1147
		mu 0 4 488 245 247 489
		f 4 728 1147 -733 729
		mu 0 4 334 489 490 338
		f 4 730 731 -735 -1148
		mu 0 4 489 247 249 490
		f 4 732 1148 -737 733
		mu 0 4 338 490 491 342
		f 4 734 735 -739 -1149
		mu 0 4 490 249 251 491
		f 4 736 1149 -741 737
		mu 0 4 342 491 492 346
		f 4 738 739 -743 -1150
		mu 0 4 491 251 253 492
		f 4 740 1150 -745 741
		mu 0 4 346 492 493 350
		f 4 742 743 -747 -1151
		mu 0 4 492 253 255 493
		f 4 744 1151 -749 745
		mu 0 4 350 493 494 354
		f 4 746 747 -751 -1152
		mu 0 4 493 255 257 494
		f 4 748 1152 -753 749
		mu 0 4 354 494 495 358
		f 4 750 751 -755 -1153
		mu 0 4 494 257 259 495
		f 4 752 1153 -757 753
		mu 0 4 358 495 496 362
		f 4 754 755 -759 -1154
		mu 0 4 495 259 261 496
		f 4 756 1154 -761 757
		mu 0 4 362 496 497 366
		f 4 758 759 -763 -1155
		mu 0 4 496 261 263 497
		f 4 760 1155 -765 761
		mu 0 4 366 497 498 370
		f 4 762 763 -767 -1156
		mu 0 4 497 263 265 498
		f 4 764 1156 -769 765
		mu 0 4 370 498 499 374
		f 4 766 767 -771 -1157
		mu 0 4 498 265 267 499
		f 4 768 1157 -773 769
		mu 0 4 374 499 500 378
		f 4 770 771 -775 -1158
		mu 0 4 499 267 269 500
		f 4 772 1158 -777 773
		mu 0 4 378 500 501 382
		f 4 774 775 -779 -1159
		mu 0 4 500 269 271 501
		f 4 776 1159 -704 777
		mu 0 4 382 501 502 386
		f 4 778 779 -701 -1160
		mu 0 4 501 271 273 502
		f 4 -787 1160 780 781
		mu 0 4 476 504 505 274
		f 4 -785 782 783 -1161
		mu 0 4 504 316 320 505
		f 4 -781 1161 788 789
		mu 0 4 274 505 506 276
		f 4 -784 790 791 -1162
		mu 0 4 505 320 324 506
		f 4 -789 1162 792 793
		mu 0 4 276 506 507 278
		f 4 -792 794 795 -1163
		mu 0 4 506 324 328 507
		f 4 -793 1163 796 797
		mu 0 4 278 507 508 280
		f 4 -796 798 799 -1164
		mu 0 4 507 328 332 508
		f 4 -797 1164 800 801
		mu 0 4 280 508 509 282
		f 4 -800 802 803 -1165
		mu 0 4 508 332 336 509
		f 4 -801 1165 804 805
		mu 0 4 282 509 510 284
		f 4 -804 806 807 -1166
		mu 0 4 509 336 340 510
		f 4 -805 1166 808 809
		mu 0 4 284 510 511 286
		f 4 -808 810 811 -1167
		mu 0 4 510 340 344 511
		f 4 -809 1167 812 813
		mu 0 4 286 511 512 288
		f 4 -812 814 815 -1168
		mu 0 4 511 344 348 512
		f 4 -813 1168 816 817
		mu 0 4 288 512 513 290
		f 4 -816 818 819 -1169
		mu 0 4 512 348 352 513
		f 4 -817 1169 820 821
		mu 0 4 290 513 514 292
		f 4 -820 822 823 -1170
		mu 0 4 513 352 356 514;
	setAttr ".fc[500:859]"
		f 4 -821 1170 824 825
		mu 0 4 292 514 515 294
		f 4 -824 826 827 -1171
		mu 0 4 514 356 360 515
		f 4 -825 1171 828 829
		mu 0 4 294 515 516 296
		f 4 -828 830 831 -1172
		mu 0 4 515 360 364 516
		f 4 -829 1172 832 833
		mu 0 4 296 516 517 298
		f 4 -832 834 835 -1173
		mu 0 4 516 364 368 517
		f 4 -833 1173 836 837
		mu 0 4 298 517 518 300
		f 4 -836 838 839 -1174
		mu 0 4 517 368 372 518
		f 4 -837 1174 840 841
		mu 0 4 300 518 519 302
		f 4 -840 842 843 -1175
		mu 0 4 518 372 376 519
		f 4 -841 1175 844 845
		mu 0 4 302 519 520 304
		f 4 -844 846 847 -1176
		mu 0 4 519 376 380 520
		f 4 -845 1176 848 849
		mu 0 4 304 520 521 306
		f 4 -848 850 851 -1177
		mu 0 4 520 380 384 521
		f 4 -849 1177 852 853
		mu 0 4 306 521 522 308
		f 4 -852 854 855 -1178
		mu 0 4 521 384 388 522
		f 4 -853 1178 856 857
		mu 0 4 308 522 523 310
		f 4 -856 858 859 -1179
		mu 0 4 522 388 392 523
		f 4 784 1179 -860 785
		mu 0 4 477 503 523 392
		f 4 786 787 -857 -1180
		mu 0 4 503 312 310 523
		f 4 -867 1180 860 861
		mu 0 4 478 525 544 313
		f 4 -865 862 863 -1181
		mu 0 4 525 470 466 544
		f 4 864 1181 -869 865
		mu 0 4 479 524 526 394
		f 4 866 867 -871 -1182
		mu 0 4 524 275 277 526
		f 4 868 1182 -873 869
		mu 0 4 394 526 527 398
		f 4 870 871 -875 -1183
		mu 0 4 526 277 279 527
		f 4 872 1183 -877 873
		mu 0 4 398 527 528 402
		f 4 874 875 -879 -1184
		mu 0 4 527 279 281 528
		f 4 876 1184 -881 877
		mu 0 4 402 528 529 406
		f 4 878 879 -883 -1185
		mu 0 4 528 281 283 529
		f 4 880 1185 -885 881
		mu 0 4 406 529 530 410
		f 4 882 883 -887 -1186
		mu 0 4 529 283 285 530
		f 4 884 1186 -889 885
		mu 0 4 410 530 531 414
		f 4 886 887 -891 -1187
		mu 0 4 530 285 287 531
		f 4 888 1187 -893 889
		mu 0 4 414 531 532 418
		f 4 890 891 -895 -1188
		mu 0 4 531 287 289 532
		f 4 892 1188 -897 893
		mu 0 4 418 532 533 422
		f 4 894 895 -899 -1189
		mu 0 4 532 289 291 533
		f 4 896 1189 -901 897
		mu 0 4 422 533 534 426
		f 4 898 899 -903 -1190
		mu 0 4 533 291 293 534
		f 4 900 1190 -905 901
		mu 0 4 426 534 535 430
		f 4 902 903 -907 -1191
		mu 0 4 534 293 295 535
		f 4 904 1191 -909 905
		mu 0 4 430 535 536 434
		f 4 906 907 -911 -1192
		mu 0 4 535 295 297 536
		f 4 908 1192 -913 909
		mu 0 4 434 536 537 438
		f 4 910 911 -915 -1193
		mu 0 4 536 297 299 537
		f 4 912 1193 -917 913
		mu 0 4 438 537 538 442
		f 4 914 915 -919 -1194
		mu 0 4 537 299 301 538
		f 4 916 1194 -921 917
		mu 0 4 442 538 539 446
		f 4 918 919 -923 -1195
		mu 0 4 538 301 303 539
		f 4 920 1195 -925 921
		mu 0 4 446 539 540 450
		f 4 922 923 -927 -1196
		mu 0 4 539 303 305 540
		f 4 924 1196 -929 925
		mu 0 4 450 540 541 454
		f 4 926 927 -931 -1197
		mu 0 4 540 305 307 541
		f 4 928 1197 -933 929
		mu 0 4 454 541 542 458
		f 4 930 931 -935 -1198
		mu 0 4 541 307 309 542
		f 4 932 1198 -937 933
		mu 0 4 458 542 543 462
		f 4 934 935 -939 -1199
		mu 0 4 542 309 311 543
		f 4 936 1199 -864 937
		mu 0 4 462 543 544 466
		f 4 938 939 -861 -1200
		mu 0 4 543 311 313 544
		f 4 -947 1200 940 941
		mu 0 4 480 546 547 606
		f 4 -945 942 943 -1201
		mu 0 4 546 396 400 547
		f 4 -941 1201 948 949
		mu 0 4 606 547 548 608
		f 4 -944 950 951 -1202
		mu 0 4 547 400 404 548
		f 4 -949 1202 952 953
		mu 0 4 608 548 549 610
		f 4 -952 954 955 -1203
		mu 0 4 548 404 408 549
		f 4 -953 1203 956 957
		mu 0 4 610 549 550 612
		f 4 -956 958 959 -1204
		mu 0 4 549 408 412 550
		f 4 -957 1204 960 961
		mu 0 4 612 550 551 614
		f 4 -960 962 963 -1205
		mu 0 4 550 412 416 551
		f 4 -961 1205 964 965
		mu 0 4 614 551 552 616
		f 4 -964 966 967 -1206
		mu 0 4 551 416 420 552
		f 4 -965 1206 968 969
		mu 0 4 616 552 553 618
		f 4 -968 970 971 -1207
		mu 0 4 552 420 424 553
		f 4 -969 1207 972 973
		mu 0 4 618 553 554 620
		f 4 -972 974 975 -1208
		mu 0 4 553 424 428 554
		f 4 -973 1208 976 977
		mu 0 4 620 554 555 622
		f 4 -976 978 979 -1209
		mu 0 4 554 428 432 555
		f 4 -977 1209 980 981
		mu 0 4 622 555 556 624
		f 4 -980 982 983 -1210
		mu 0 4 555 432 436 556
		f 4 -981 1210 984 985
		mu 0 4 624 556 557 626
		f 4 -984 986 987 -1211
		mu 0 4 556 436 440 557
		f 4 -985 1211 988 989
		mu 0 4 626 557 558 628
		f 4 -988 990 991 -1212
		mu 0 4 557 440 444 558
		f 4 -989 1212 992 993
		mu 0 4 628 558 559 630
		f 4 -992 994 995 -1213
		mu 0 4 558 444 448 559
		f 4 -993 1213 996 997
		mu 0 4 630 559 560 632
		f 4 -996 998 999 -1214
		mu 0 4 559 448 452 560
		f 4 -997 1214 1000 1001
		mu 0 4 632 560 561 634
		f 4 -1000 1002 1003 -1215
		mu 0 4 560 452 456 561
		f 4 -1001 1215 1004 1005
		mu 0 4 634 561 562 636
		f 4 -1004 1006 1007 -1216
		mu 0 4 561 456 460 562
		f 4 -1005 1216 1008 1009
		mu 0 4 636 562 563 638
		f 4 -1008 1010 1011 -1217
		mu 0 4 562 460 464 563
		f 4 -1009 1217 1012 1013
		mu 0 4 638 563 564 640
		f 4 -1012 1014 1015 -1218
		mu 0 4 563 464 468 564
		f 4 -1013 1218 1016 1017
		mu 0 4 640 564 565 642
		f 4 -1016 1018 1019 -1219
		mu 0 4 564 468 472 565
		f 4 944 1219 -1020 945
		mu 0 4 481 545 565 472
		f 4 946 947 -1017 -1220
		mu 0 4 545 644 642 565
		f 4 -1222 1300 -81 1301
		mu 0 4 604 566 569 567
		f 4 -1230 1302 -82 -1301
		mu 0 4 566 568 571 569
		f 4 -1234 1303 -83 -1303
		mu 0 4 568 570 573 571
		f 4 -1238 1304 -84 -1304
		mu 0 4 570 572 575 573
		f 4 -1242 1305 -85 -1305
		mu 0 4 572 574 577 575
		f 4 -1246 1306 -86 -1306
		mu 0 4 574 576 579 577
		f 4 -1250 1307 -87 -1307
		mu 0 4 576 578 581 579
		f 4 -1254 1308 -88 -1308
		mu 0 4 578 580 583 581
		f 4 -1258 1309 -89 -1309
		mu 0 4 580 582 585 583
		f 4 -1262 1310 -90 -1310
		mu 0 4 582 584 587 585
		f 4 -1266 1311 -91 -1311
		mu 0 4 584 586 589 587
		f 4 -1270 1312 -92 -1312
		mu 0 4 586 588 591 589
		f 4 -1274 1313 -93 -1313
		mu 0 4 588 590 593 591
		f 4 -1278 1314 -94 -1314
		mu 0 4 590 592 595 593
		f 4 -1282 1315 -95 -1315
		mu 0 4 592 594 597 595
		f 4 -1286 1316 -96 -1316
		mu 0 4 594 596 599 597
		f 4 -1290 1317 -97 -1317
		mu 0 4 596 598 601 599
		f 4 -1294 1318 -98 -1318
		mu 0 4 598 600 603 601
		f 4 -1298 1319 -99 -1319
		mu 0 4 600 602 605 603
		f 4 -1228 -1302 -100 -1320
		mu 0 4 602 604 567 605
		f 4 -942 1320 -1223 1321
		mu 0 4 480 606 609 607
		f 4 -950 1322 -1231 -1321
		mu 0 4 606 608 611 609
		f 4 -954 1323 -1235 -1323
		mu 0 4 608 610 613 611
		f 4 -958 1324 -1239 -1324
		mu 0 4 610 612 615 613
		f 4 -962 1325 -1243 -1325
		mu 0 4 612 614 617 615
		f 4 -966 1326 -1247 -1326
		mu 0 4 614 616 619 617
		f 4 -970 1327 -1251 -1327
		mu 0 4 616 618 621 619
		f 4 -974 1328 -1255 -1328
		mu 0 4 618 620 623 621
		f 4 -978 1329 -1259 -1329
		mu 0 4 620 622 625 623
		f 4 -982 1330 -1263 -1330
		mu 0 4 622 624 627 625
		f 4 -986 1331 -1267 -1331
		mu 0 4 624 626 629 627
		f 4 -990 1332 -1271 -1332
		mu 0 4 626 628 631 629
		f 4 -994 1333 -1275 -1333
		mu 0 4 628 630 633 631
		f 4 -998 1334 -1279 -1334
		mu 0 4 630 632 635 633
		f 4 -1002 1335 -1283 -1335
		mu 0 4 632 634 637 635
		f 4 -1006 1336 -1287 -1336
		mu 0 4 634 636 639 637
		f 4 -1010 1337 -1291 -1337
		mu 0 4 636 638 641 639
		f 4 -1014 1338 -1295 -1338
		mu 0 4 638 640 643 641
		f 4 -1018 1339 -1299 -1339
		mu 0 4 640 642 645 643
		f 4 -948 -1322 -1226 -1340
		mu 0 4 642 644 646 645
		f 4 -1227 1340 1220 1221
		mu 0 4 604 647 651 566
		f 4 -1225 1222 1223 -1341
		mu 0 4 649 607 609 650
		f 4 -1221 1341 1228 1229
		mu 0 4 566 651 653 568
		f 4 -1224 1230 1231 -1342
		mu 0 4 650 609 611 652
		f 4 -1229 1342 1232 1233
		mu 0 4 568 653 655 570
		f 4 -1232 1234 1235 -1343
		mu 0 4 652 611 613 654
		f 4 -1233 1343 1236 1237
		mu 0 4 570 655 657 572
		f 4 -1236 1238 1239 -1344
		mu 0 4 654 613 615 656
		f 4 -1237 1344 1240 1241
		mu 0 4 572 657 659 574
		f 4 -1240 1242 1243 -1345
		mu 0 4 656 615 617 658
		f 4 -1241 1345 1244 1245
		mu 0 4 574 659 661 576
		f 4 -1244 1246 1247 -1346
		mu 0 4 658 617 619 660
		f 4 -1245 1346 1248 1249
		mu 0 4 576 661 663 578
		f 4 -1248 1250 1251 -1347
		mu 0 4 660 619 621 662
		f 4 -1249 1347 1252 1253
		mu 0 4 578 663 665 580
		f 4 -1252 1254 1255 -1348
		mu 0 4 662 621 623 664
		f 4 -1253 1348 1256 1257
		mu 0 4 580 665 667 582
		f 4 -1256 1258 1259 -1349
		mu 0 4 664 623 625 666
		f 4 -1257 1349 1260 1261
		mu 0 4 582 667 669 584
		f 4 -1260 1262 1263 -1350
		mu 0 4 666 625 627 668
		f 4 -1261 1350 1264 1265
		mu 0 4 584 669 671 586
		f 4 -1264 1266 1267 -1351
		mu 0 4 668 627 629 670
		f 4 -1265 1351 1268 1269
		mu 0 4 586 671 673 588
		f 4 -1268 1270 1271 -1352
		mu 0 4 670 629 631 672
		f 4 -1269 1352 1272 1273
		mu 0 4 588 673 675 590
		f 4 -1272 1274 1275 -1353
		mu 0 4 672 631 633 674
		f 4 -1273 1353 1276 1277
		mu 0 4 590 675 677 592
		f 4 -1276 1278 1279 -1354
		mu 0 4 674 633 635 676
		f 4 -1277 1354 1280 1281
		mu 0 4 592 677 679 594
		f 4 -1280 1282 1283 -1355
		mu 0 4 676 635 637 678
		f 4 -1281 1355 1284 1285
		mu 0 4 594 679 681 596
		f 4 -1284 1286 1287 -1356
		mu 0 4 678 637 639 680
		f 4 -1285 1356 1288 1289
		mu 0 4 596 681 683 598
		f 4 -1288 1290 1291 -1357
		mu 0 4 680 639 641 682
		f 4 -1289 1357 1292 1293
		mu 0 4 598 683 685 600
		f 4 -1292 1294 1295 -1358
		mu 0 4 682 641 643 684
		f 4 -1293 1358 1296 1297
		mu 0 4 600 685 687 602
		f 4 -1296 1298 1299 -1359
		mu 0 4 684 643 645 686
		f 4 1224 1359 -1300 1225
		mu 0 4 646 648 686 645
		f 4 1226 1227 -1297 -1360
		mu 0 4 647 604 602 687
		f 4 -1366 1440 694 1441
		mu 0 4 728 688 691 689
		f 4 -1370 1442 692 -1441
		mu 0 4 688 690 693 691
		f 4 -1374 1443 690 -1443
		mu 0 4 690 692 695 693
		f 4 -1378 1444 688 -1444
		mu 0 4 692 694 697 695
		f 4 -1382 1445 686 -1445
		mu 0 4 694 696 699 697
		f 4 -1386 1446 684 -1446
		mu 0 4 696 698 701 699
		f 4 -1390 1447 682 -1447
		mu 0 4 698 700 703 701
		f 4 -1394 1448 680 -1448
		mu 0 4 700 702 705 703
		f 4 -1398 1449 678 -1449
		mu 0 4 702 704 707 705
		f 4 -1402 1450 676 -1450
		mu 0 4 704 706 709 707
		f 4 -1406 1451 674 -1451
		mu 0 4 706 708 711 709
		f 4 -1410 1452 672 -1452
		mu 0 4 708 710 713 711
		f 4 -1414 1453 670 -1453
		mu 0 4 710 712 715 713
		f 4 -1418 1454 668 -1454
		mu 0 4 712 714 717 715
		f 4 -1422 1455 666 -1455
		mu 0 4 714 716 719 717
		f 4 -1426 1456 664 -1456
		mu 0 4 716 718 721 719
		f 4 -1430 1457 662 -1457
		mu 0 4 718 720 723 721
		f 4 -1434 1458 699 -1458
		mu 0 4 720 722 725 723
		f 4 -1438 1459 698 -1459
		mu 0 4 722 724 727 725
		f 4 -1363 -1442 696 -1460
		mu 0 4 724 726 233 727
		f 4 -1367 1460 1360 1361
		mu 0 4 811 729 769 849
		f 4 -1365 1362 1363 -1461
		mu 0 4 731 726 724 768
		f 4 1364 1461 -1369 1365
		mu 0 4 728 730 733 688
		f 4 1366 1367 -1371 -1462
		mu 0 4 729 811 813 732
		f 4 1368 1462 -1373 1369
		mu 0 4 688 733 735 690
		f 4 1370 1371 -1375 -1463
		mu 0 4 732 813 815 734
		f 4 1372 1463 -1377 1373
		mu 0 4 690 735 737 692
		f 4 1374 1375 -1379 -1464
		mu 0 4 734 815 817 736
		f 4 1376 1464 -1381 1377
		mu 0 4 692 737 739 694
		f 4 1378 1379 -1383 -1465
		mu 0 4 736 817 819 738
		f 4 1380 1465 -1385 1381
		mu 0 4 694 739 741 696
		f 4 1382 1383 -1387 -1466
		mu 0 4 738 819 821 740
		f 4 1384 1466 -1389 1385
		mu 0 4 696 741 743 698
		f 4 1386 1387 -1391 -1467
		mu 0 4 740 821 823 742
		f 4 1388 1467 -1393 1389
		mu 0 4 698 743 745 700
		f 4 1390 1391 -1395 -1468
		mu 0 4 742 823 825 744
		f 4 1392 1468 -1397 1393
		mu 0 4 700 745 747 702
		f 4 1394 1395 -1399 -1469
		mu 0 4 744 825 827 746
		f 4 1396 1469 -1401 1397
		mu 0 4 702 747 749 704
		f 4 1398 1399 -1403 -1470
		mu 0 4 746 827 829 748
		f 4 1400 1470 -1405 1401
		mu 0 4 704 749 751 706
		f 4 1402 1403 -1407 -1471
		mu 0 4 748 829 831 750
		f 4 1404 1471 -1409 1405
		mu 0 4 706 751 753 708
		f 4 1406 1407 -1411 -1472
		mu 0 4 750 831 833 752
		f 4 1408 1472 -1413 1409
		mu 0 4 708 753 755 710
		f 4 1410 1411 -1415 -1473
		mu 0 4 752 833 835 754
		f 4 1412 1473 -1417 1413
		mu 0 4 710 755 757 712
		f 4 1414 1415 -1419 -1474
		mu 0 4 754 835 837 756
		f 4 1416 1474 -1421 1417
		mu 0 4 712 757 759 714
		f 4 1418 1419 -1423 -1475
		mu 0 4 756 837 839 758
		f 4 1420 1475 -1425 1421
		mu 0 4 714 759 761 716
		f 4 1422 1423 -1427 -1476
		mu 0 4 758 839 841 760
		f 4 1424 1476 -1429 1425
		mu 0 4 716 761 763 718
		f 4 1426 1427 -1431 -1477
		mu 0 4 760 841 843 762
		f 4 1428 1477 -1433 1429
		mu 0 4 718 763 765 720
		f 4 1430 1431 -1435 -1478
		mu 0 4 762 843 845 764
		f 4 1432 1478 -1437 1433
		mu 0 4 720 765 767 722
		f 4 1434 1435 -1439 -1479
		mu 0 4 764 845 847 766
		f 4 1436 1479 -1364 1437
		mu 0 4 722 767 768 724
		f 4 1438 1439 -1361 -1480
		mu 0 4 766 847 849 769
		f 4 40 1600 -1492 1601
		mu 0 4 808 770 773 771
		f 4 41 1602 -1498 -1601
		mu 0 4 770 772 775 773
		f 4 42 1603 -1504 -1603
		mu 0 4 772 774 777 775
		f 4 43 1604 -1510 -1604
		mu 0 4 774 776 779 777
		f 4 44 1605 -1516 -1605
		mu 0 4 776 778 781 779
		f 4 45 1606 -1522 -1606
		mu 0 4 778 780 783 781
		f 4 46 1607 -1528 -1607
		mu 0 4 780 782 785 783
		f 4 47 1608 -1534 -1608
		mu 0 4 782 784 787 785
		f 4 48 1609 -1540 -1609
		mu 0 4 784 786 789 787
		f 4 49 1610 -1546 -1610
		mu 0 4 786 788 791 789
		f 4 50 1611 -1552 -1611
		mu 0 4 788 790 793 791
		f 4 51 1612 -1558 -1612
		mu 0 4 790 792 795 793
		f 4 52 1613 -1564 -1613
		mu 0 4 792 794 797 795
		f 4 53 1614 -1570 -1614
		mu 0 4 794 796 799 797
		f 4 54 1615 -1576 -1615
		mu 0 4 796 798 801 799
		f 4 55 1616 -1582 -1616
		mu 0 4 798 800 803 801
		f 4 56 1617 -1588 -1617
		mu 0 4 800 802 805 803
		f 4 57 1618 -1594 -1618
		mu 0 4 802 804 807 805
		f 4 58 1619 -1600 -1619
		mu 0 4 804 806 809 807
		f 4 59 -1602 -1482 -1620
		mu 0 4 806 808 771 809
		f 4 -1488 1620 -1368 1621
		mu 0 4 848 810 813 811
		f 4 -1494 1622 -1372 -1621
		mu 0 4 810 812 815 813
		f 4 -1500 1623 -1376 -1623
		mu 0 4 812 814 817 815
		f 4 -1506 1624 -1380 -1624
		mu 0 4 814 816 819 817
		f 4 -1512 1625 -1384 -1625
		mu 0 4 816 818 821 819
		f 4 -1518 1626 -1388 -1626
		mu 0 4 818 820 823 821
		f 4 -1524 1627 -1392 -1627
		mu 0 4 820 822 825 823
		f 4 -1530 1628 -1396 -1628
		mu 0 4 822 824 827 825
		f 4 -1536 1629 -1400 -1629
		mu 0 4 824 826 829 827
		f 4 -1542 1630 -1404 -1630
		mu 0 4 826 828 831 829
		f 4 -1548 1631 -1408 -1631
		mu 0 4 828 830 833 831
		f 4 -1554 1632 -1412 -1632
		mu 0 4 830 832 835 833
		f 4 -1560 1633 -1416 -1633
		mu 0 4 832 834 837 835
		f 4 -1566 1634 -1420 -1634
		mu 0 4 834 836 839 837
		f 4 -1572 1635 -1424 -1635
		mu 0 4 836 838 841 839
		f 4 -1578 1636 -1428 -1636
		mu 0 4 838 840 843 841
		f 4 -1584 1637 -1432 -1637
		mu 0 4 840 842 845 843
		f 4 -1590 1638 -1436 -1638
		mu 0 4 842 844 847 845
		f 4 -1596 1639 -1440 -1639
		mu 0 4 844 846 849 847
		f 4 -1485 -1622 -1362 -1640
		mu 0 4 846 848 811 849
		f 4 -1487 1484 1485 -1641
		mu 0 4 852 848 846 909
		f 4 -1489 1640 1483 -1642
		mu 0 4 851 852 909 908
		f 4 -1491 1642 1480 1481
		mu 0 4 771 850 907 809
		f 4 -1490 1641 1482 -1643
		mu 0 4 850 851 908 907
		f 4 1486 1643 -1493 1487
		mu 0 4 848 852 855 810
		f 4 1488 1644 -1495 -1644
		mu 0 4 852 851 854 855
		f 4 1489 1645 -1496 -1645
		mu 0 4 851 850 853 854
		f 4 1490 1491 -1497 -1646
		mu 0 4 850 771 773 853
		f 4 1492 1646 -1499 1493
		mu 0 4 810 855 858 812
		f 4 1494 1647 -1501 -1647
		mu 0 4 855 854 857 858
		f 4 1495 1648 -1502 -1648
		mu 0 4 854 853 856 857
		f 4 1496 1497 -1503 -1649
		mu 0 4 853 773 775 856
		f 4 1498 1649 -1505 1499
		mu 0 4 812 858 861 814
		f 4 1500 1650 -1507 -1650
		mu 0 4 858 857 860 861
		f 4 1501 1651 -1508 -1651
		mu 0 4 857 856 859 860
		f 4 1502 1503 -1509 -1652
		mu 0 4 856 775 777 859
		f 4 1504 1652 -1511 1505
		mu 0 4 814 861 864 816
		f 4 1506 1653 -1513 -1653
		mu 0 4 861 860 863 864
		f 4 1507 1654 -1514 -1654
		mu 0 4 860 859 862 863
		f 4 1508 1509 -1515 -1655
		mu 0 4 859 777 779 862
		f 4 1510 1655 -1517 1511
		mu 0 4 816 864 867 818
		f 4 1512 1656 -1519 -1656
		mu 0 4 864 863 866 867
		f 4 1513 1657 -1520 -1657
		mu 0 4 863 862 865 866
		f 4 1514 1515 -1521 -1658
		mu 0 4 862 779 781 865
		f 4 1516 1658 -1523 1517
		mu 0 4 818 867 870 820
		f 4 1518 1659 -1525 -1659
		mu 0 4 867 866 869 870
		f 4 1519 1660 -1526 -1660
		mu 0 4 866 865 868 869
		f 4 1520 1521 -1527 -1661
		mu 0 4 865 781 783 868
		f 4 1522 1661 -1529 1523
		mu 0 4 820 870 873 822
		f 4 1524 1662 -1531 -1662
		mu 0 4 870 869 872 873
		f 4 1525 1663 -1532 -1663
		mu 0 4 869 868 871 872
		f 4 1526 1527 -1533 -1664
		mu 0 4 868 783 785 871
		f 4 1528 1664 -1535 1529
		mu 0 4 822 873 876 824
		f 4 1530 1665 -1537 -1665
		mu 0 4 873 872 875 876
		f 4 1531 1666 -1538 -1666
		mu 0 4 872 871 874 875
		f 4 1532 1533 -1539 -1667
		mu 0 4 871 785 787 874
		f 4 1534 1667 -1541 1535
		mu 0 4 824 876 879 826
		f 4 1536 1668 -1543 -1668
		mu 0 4 876 875 878 879
		f 4 1537 1669 -1544 -1669
		mu 0 4 875 874 877 878
		f 4 1538 1539 -1545 -1670
		mu 0 4 874 787 789 877
		f 4 1540 1670 -1547 1541
		mu 0 4 826 879 882 828
		f 4 1542 1671 -1549 -1671
		mu 0 4 879 878 881 882
		f 4 1543 1672 -1550 -1672
		mu 0 4 878 877 880 881
		f 4 1544 1545 -1551 -1673
		mu 0 4 877 789 791 880
		f 4 1546 1673 -1553 1547
		mu 0 4 828 882 885 830
		f 4 1548 1674 -1555 -1674
		mu 0 4 882 881 884 885
		f 4 1549 1675 -1556 -1675
		mu 0 4 881 880 883 884
		f 4 1550 1551 -1557 -1676
		mu 0 4 880 791 793 883
		f 4 1552 1676 -1559 1553
		mu 0 4 830 885 888 832
		f 4 1554 1677 -1561 -1677
		mu 0 4 885 884 887 888
		f 4 1555 1678 -1562 -1678
		mu 0 4 884 883 886 887
		f 4 1556 1557 -1563 -1679
		mu 0 4 883 793 795 886
		f 4 1558 1679 -1565 1559
		mu 0 4 832 888 891 834
		f 4 1560 1680 -1567 -1680
		mu 0 4 888 887 890 891
		f 4 1561 1681 -1568 -1681
		mu 0 4 887 886 889 890
		f 4 1562 1563 -1569 -1682
		mu 0 4 886 795 797 889
		f 4 1564 1682 -1571 1565
		mu 0 4 834 891 894 836
		f 4 1566 1683 -1573 -1683
		mu 0 4 891 890 893 894
		f 4 1567 1684 -1574 -1684
		mu 0 4 890 889 892 893
		f 4 1568 1569 -1575 -1685
		mu 0 4 889 797 799 892
		f 4 1570 1685 -1577 1571
		mu 0 4 836 894 897 838
		f 4 1572 1686 -1579 -1686
		mu 0 4 894 893 896 897
		f 4 1573 1687 -1580 -1687
		mu 0 4 893 892 895 896
		f 4 1574 1575 -1581 -1688
		mu 0 4 892 799 801 895
		f 4 1576 1688 -1583 1577
		mu 0 4 838 897 900 840
		f 4 1578 1689 -1585 -1689
		mu 0 4 897 896 899 900
		f 4 1579 1690 -1586 -1690
		mu 0 4 896 895 898 899
		f 4 1580 1581 -1587 -1691
		mu 0 4 895 801 803 898
		f 4 1582 1691 -1589 1583
		mu 0 4 840 900 903 842
		f 4 1584 1692 -1591 -1692
		mu 0 4 900 899 902 903
		f 4 1585 1693 -1592 -1693
		mu 0 4 899 898 901 902
		f 4 1586 1587 -1593 -1694
		mu 0 4 898 803 805 901
		f 4 1588 1694 -1595 1589
		mu 0 4 842 903 906 844
		f 4 1590 1695 -1597 -1695
		mu 0 4 903 902 905 906
		f 4 1591 1696 -1598 -1696
		mu 0 4 902 901 904 905
		f 4 1592 1593 -1599 -1697
		mu 0 4 901 805 807 904
		f 4 1594 1697 -1486 1595
		mu 0 4 844 906 909 846
		f 4 1596 1698 -1484 -1698
		mu 0 4 906 905 908 909
		f 4 1597 1699 -1483 -1699
		mu 0 4 905 904 907 908
		f 4 1598 1599 -1481 -1700
		mu 0 4 904 807 809 907;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SwitchEdge" -p "Flashlight";
	rename -uid "DB347514-432F-DD97-0D4D-2292CBDD8742";
	setAttr ".rp" -type "double3" -0.20643376344481629 0.36075508694084985 1.1420334003503552 ;
	setAttr ".sp" -type "double3" -0.20643376344481629 0.36075508694084985 1.1420334003503552 ;
createNode mesh -n "SwitchEdgeShape" -p "SwitchEdge";
	rename -uid "20BA2541-4788-0A20-B53B-0F9A77BDE977";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[0:43]" "f[110:131]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[44:65]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:65]" "vtx[132]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[44:65]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[44:87]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[66:131]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[66:87]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[44:65]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[66:109]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[66:87]";
	setAttr ".pv" -type "double2" 0.48517554998397827 0.74064362049102783 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 179 ".uvst[0].uvsp[0:178]" -type "float2" 0.54997361 0.14157644
		 0.54381526 0.12809163 0.53410733 0.11688805 0.52163619 0.10887334 0.50741225 0.10469681
		 0.49258777 0.10469681 0.47836381 0.10887334 0.46589267 0.11688805 0.45618472 0.12809163
		 0.45002642 0.14157644 0.44791669 0.15625 0.45002642 0.17092356 0.45618472 0.18440837
		 0.46589267 0.19561195 0.47836381 0.20362666 0.49258777 0.20780319 0.50741225 0.20780319
		 0.52163619 0.20362666 0.53410733 0.19561195 0.54381526 0.18440837 0.54997361 0.17092356
		 0.55208331 0.15625 0.59994715 0.12690288 0.58763057 0.099933267 0.56821465 0.077526093
		 0.54327238 0.061496675 0.51482445 0.05314362 0.48517555 0.05314362 0.45672759 0.061496675
		 0.43178535 0.077526093 0.41236943 0.099933267 0.40005282 0.12690288 0.39583334 0.15625
		 0.40005282 0.18559715 0.41236943 0.21256676 0.43178535 0.23497391 0.45672759 0.25100332
		 0.48517555 0.25935638 0.51482445 0.25935638 0.54327238 0.25100332 0.56821465 0.23497391
		 0.58763057 0.21256676 0.59994721 0.18559715 0.60416669 0.15625 0.64992076 0.11222929
		 0.63144583 0.071774885 0.60232198 0.038164139 0.56490856 0.014120027 0.5222367 0.0015904158
		 0.4777633 0.0015904158 0.43509141 0.014120027 0.39767802 0.038164139 0.36855415 0.071774885
		 0.35007924 0.11222929 0.34375 0.15625 0.35007924 0.20027071 0.36855415 0.24072513
		 0.39767802 0.27433586 0.43509141 0.29837999 0.4777633 0.3109096 0.5222367 0.3109096
		 0.56490862 0.29837999 0.60232198 0.27433586 0.63144588 0.24072513 0.64992076 0.20027071
		 0.65625 0.15625 0.375 0.3125 0.38636363 0.3125 0.39772725 0.3125 0.40909088 0.3125
		 0.4204545 0.3125 0.43181813 0.3125 0.44318175 0.3125 0.45454538 0.3125 0.465909 0.3125
		 0.47727263 0.3125 0.48863626 0.3125 0.49999988 0.3125 0.51136351 0.3125 0.52272713
		 0.3125 0.53409076 0.3125 0.54545438 0.3125 0.55681801 0.3125 0.56818163 0.3125 0.57954526
		 0.3125 0.59090889 0.3125 0.60227251 0.3125 0.61363614 0.3125 0.62499976 0.3125 0.375
		 0.6875 0.38636363 0.6875 0.39772725 0.6875 0.40909088 0.6875 0.4204545 0.6875 0.43181813
		 0.6875 0.44318175 0.6875 0.45454538 0.6875 0.465909 0.6875 0.47727263 0.6875 0.48863626
		 0.6875 0.49999988 0.6875 0.51136351 0.6875 0.52272713 0.6875 0.53409076 0.6875 0.54545438
		 0.6875 0.55681801 0.6875 0.56818163 0.6875 0.57954526 0.6875 0.59090889 0.6875 0.60227251
		 0.6875 0.61363614 0.6875 0.62499976 0.6875 0.64992076 0.79972929 0.63144583 0.7592749
		 0.60232198 0.72566414 0.56490856 0.70162004 0.5222367 0.68909043 0.4777633 0.68909043
		 0.43509141 0.70162004 0.39767802 0.72566414 0.36855415 0.7592749 0.35007924 0.79972929
		 0.34375 0.84375 0.35007924 0.88777071 0.36855415 0.92822516 0.39767802 0.96183586
		 0.43509141 0.98588002 0.4777633 0.99840963 0.5222367 0.99840963 0.56490862 0.98588002
		 0.60232198 0.96183586 0.63144588 0.92822516 0.64992076 0.88777071 0.65625 0.84375
		 0.59994715 0.81440288 0.58763057 0.78743327 0.56821465 0.76502609 0.54327238 0.74899668
		 0.51482445 0.74064362 0.48517555 0.74064362 0.45672759 0.74899668 0.43178535 0.76502609
		 0.41236943 0.78743327 0.40005282 0.81440288 0.39583334 0.84375 0.40005282 0.87309718
		 0.41236943 0.90006673 0.43178535 0.92247391 0.45672759 0.93850332 0.48517555 0.94685638
		 0.51482445 0.94685638 0.54327238 0.93850332 0.56821465 0.92247391 0.58763057 0.90006673
		 0.59994721 0.87309718 0.60416669 0.84375 0.54997361 0.82907641 0.54381526 0.81559163
		 0.53410733 0.80438805 0.52163619 0.79637337 0.50741225 0.79219681 0.49258777 0.79219681
		 0.47836381 0.79637337 0.46589267 0.80438805 0.45618472 0.81559163 0.45002642 0.82907641
		 0.44791669 0.84375 0.45002642 0.85842359 0.45618472 0.87190837 0.46589267 0.88311195
		 0.47836381 0.89112663 0.49258777 0.89530319 0.50741225 0.89530319 0.52163619 0.89112663
		 0.53410733 0.88311195 0.54381526 0.87190837 0.54997361 0.85842359 0.55208331 0.84375
		 0.5 0.15625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 133 ".pt[0:132]" -type "float3"  -0.37329412 1.3754078 1.1817752 
		-0.3358407 1.379181 1.2685895 -0.27661896 1.3822308 1.3410516 -0.20042634 1.38431 
		1.3932912 -0.11343551 1.3852501 1.4210762 -0.1654696 1.3754797 1.459417 -0.078328893 
		1.3740118 1.4337032 -0.0018484831 1.3714699 1.3832794 0.057775639 1.3680599 1.3122307 
		0.095713086 1.3640583 1.2263131 0.10889035 1.3597889 1.1324871 0.096239932 1.3555979 
		1.0383538 0.058786653 1.3518245 0.95153958 -0.00043519723 1.3487748 0.87907737 -0.076627828 
		1.3466957 0.82683784 -0.16361859 1.3457555 0.79905295 -0.11158442 1.355526 0.76071215 
		-0.19872522 1.3569939 0.78642607 -0.27520585 1.3595358 0.83684987 -0.33482981 1.3629457 
		0.90789855 -0.37276721 1.3669474 0.99381614 -0.38594437 1.3712168 1.0876422 -0.67944884 
		1.380565 1.2721165 -0.60454226 1.3881116 1.4457451 -0.48609853 1.3942111 1.5906694 
		-0.33371329 1.3983694 1.6951487 -0.15973186 1.4002497 1.7507186 -0.12102447 1.3902042 
		1.7901387 0.053256948 1.3872684 1.738711 0.20621777 1.3821846 1.6378634 0.32546601 
		1.3753648 1.495766 0.4013409 1.3673613 1.3239309 0.42769542 1.3588227 1.1362787 0.40239459 
		1.3504405 0.94801235 0.32748803 1.3428941 0.77438378 0.20904434 1.3367946 0.62945944 
		0.056659069 1.3326362 0.52498031 -0.11732246 1.3307559 0.46941054 -0.15602994 1.3408014 
		0.4299905 -0.33031106 1.3437372 0.48141831 -0.48327184 1.348821 0.58226591 -0.60251999 
		1.3556409 0.72436327 -0.67839503 1.3636444 0.89619851 -0.70474958 1.372183 1.0838506 
		-0.98560357 1.3857224 1.362458 -0.87324357 1.397042 1.6229007 -0.6955781 1.4061913 
		1.8402873 -0.46700025 1.4124289 1.9970062 -0.20602798 1.4152493 2.0803609 -0.076579347 
		1.4049288 2.1208603 0.18484277 1.4005251 2.0437188 0.41428402 1.3928994 1.8924475 
		0.5931564 1.3826696 1.6793014 0.70696867 1.3706645 1.4215486 0.74650049 1.3578564 
		1.1400706 0.7085492 1.3452833 0.8576709 0.59618944 1.3339635 0.59722805 0.41852388 
		1.3248143 0.37984154 0.18994594 1.3185768 0.22312282 -0.071026318 1.3157563 0.13976814 
		-0.20047498 1.3260769 0.099268891 -0.46189737 1.3304806 0.1764106 -0.6913383 1.3381063 
		0.32768202 -0.87021041 1.3483361 0.54082805 -0.98402286 1.3603412 0.79858094 -1.0235541 
		1.3731493 1.0800589 -0.97983336 -0.61427766 1.3845668 -0.86747384 -0.60295796 1.6450096 
		-0.68980813 -0.59380865 1.8623961 -0.46123028 -0.58757114 2.019115 -0.20025802 -0.58475065 
		2.1024697 -0.070809379 -0.5950712 2.1429691 0.19061275 -0.59947491 2.0658276 0.42005399 
		-0.60710061 1.9145563 0.59892637 -0.61733037 1.7014103 0.71273863 -0.62933558 1.4436574 
		0.75227046 -0.64214361 1.1621794 0.71431917 -0.65471673 0.87977976 0.60195941 -0.66603649 
		0.6193369 0.42429385 -0.67518568 0.40195039 0.19571592 -0.68142319 0.24523166 -0.06525635 
		-0.68424368 0.16187698 -0.19470501 -0.67392313 0.12137774 -0.45612741 -0.66951942 
		0.19851944 -0.68556833 -0.66189373 0.34979087 -0.86444068 -0.65166396 0.5629369 -0.97825265 
		-0.63965875 0.8206898 -1.0177844 -0.62685078 1.1021678 -0.69798446 -0.61902547 1.3013977 
		-0.62010455 -0.61117947 1.4819183 -0.49695921 -0.60483783 1.6325954 -0.33852482 -0.60051441 
		1.741222 -0.15763736 -0.59855944 1.7989978 -0.111726 -0.60862678 1.8385035 0.069473512 
		-0.61167914 1.7850344 0.22850612 -0.6169647 1.6801838 0.35248789 -0.62405527 1.5324458 
		0.4313747 -0.63237643 1.3537896 0.45877525 -0.64125407 1.1586887 0.4324702 -0.64996886 
		0.96294898 0.35459018 -0.65781492 0.78242826 0.2314449 -0.66415656 0.63175112 0.073010691 
		-0.66847992 0.52312469 -0.10787703 -0.67043495 0.46534914 -0.15378833 -0.66036761 
		0.42584336 -0.33498764 -0.65731525 0.47931254 -0.49402046 -0.65202963 0.58416331 
		-0.61800218 -0.64493906 0.73190129 -0.69688869 -0.6366179 0.91055751 -0.72428918 
		-0.62774026 1.1056584 -0.68698335 0.37211493 1.2888292 -0.61072564 0.37979752 1.4655899 
		-0.49014521 0.38600704 1.6131285 -0.33501124 0.3902404 1.7194924 -0.15789104 0.39215466 
		1.7760649 -0.11590993 0.38209924 1.8155239 0.061515406 0.37911046 1.7631685 0.21723549 
		0.37393498 1.6605016 0.33863491 0.36699209 1.515841 0.41587859 0.35884425 1.3409059 
		0.44270849 0.35015157 1.1498688 0.41695118 0.34161824 0.95820618 0.34069341 0.33393562 
		0.7814455 0.22011311 0.3277261 0.63390684 0.06497889 0.32349274 0.52754301 -0.11214115 
		0.3215785 0.47097078 -0.15412235 0.33163393 0.43151179 -0.33154774 0.33462271 0.48386729 
		-0.48726749 0.33979821 0.5865342 -0.6086669 0.34674111 0.73119485 -0.68591046 0.35488895 
		0.90612984 -0.71274066 0.36358163 1.097167 -0.067139387 1.3702506 1.0914338;
	setAttr -s 133 ".vt[0:132]"  0.3198311 -1 -0.093910679 0.28041798 -1 -0.18021345
		 0.21828708 -1 -0.25191641 0.13847187 -1 -0.30321062 0.047438473 -1 -0.3299405 -0.047438107 -1 -0.32994056
		 -0.13847153 -1 -0.30321079 -0.21828681 -1 -0.25191668 -0.2804178 -1 -0.18021375 -0.31983101 -1 -0.093910992
		 -0.33333337 -1 -1.1920929e-07 -0.31983107 -1 0.093910769 -0.28041792 -1 0.18021356
		 -0.21828699 -1 0.25191653 -0.13847175 -1 0.30321068 -0.047438338 -1 0.3299405 0.047438234 -1 0.32994053
		 0.13847165 -1 0.30321071 0.2182869 -1 0.25191656 0.28041786 -1 0.18021363 0.31983101 -1 0.093910865
		 0.33333334 -1 0 0.63966221 -1 -0.18782136 0.56083596 -1 -0.3604269 0.43657416 -1 -0.50383282
		 0.27694374 -1 -0.60642123 0.094876945 -1 -0.659881 -0.094876215 -1 -0.65988111 -0.27694306 -1 -0.60642159
		 -0.43657362 -1 -0.50383335 -0.5608356 -1 -0.3604275 -0.63966203 -1 -0.18782198 -0.66666675 -1 -2.3841858e-07
		 -0.63966215 -1 0.18782154 -0.56083584 -1 0.36042711 -0.43657398 -1 0.50383306 -0.2769435 -1 0.60642135
		 -0.094876677 -1 0.659881 0.094876468 -1 0.65988106 0.2769433 -1 0.60642141 0.4365738 -1 0.50383312
		 0.56083572 -1 0.36042726 0.63966203 -1 0.18782173 0.66666669 -1 0 0.95949328 -1 -0.28173202
		 0.84125394 -1 -0.54064035 0.65486121 -1 -0.75574923 0.41541559 -1 -0.90963179 0.14231542 -1 -0.98982143
		 -0.14231431 -1 -0.98982161 -0.41541457 -1 -0.90963233 -0.65486044 -1 -0.75575 -0.8412534 -1 -0.54064125
		 -0.95949298 -1 -0.28173298 -1.000000119209 -1 -3.5762787e-07 -0.95949316 -1 0.28173229
		 -0.84125376 -1 0.54064065 -0.65486097 -1 0.75574952 -0.41541523 -1 0.90963197 -0.14231502 -1 0.98982149
		 0.1423147 -1 0.98982155 0.41541493 -1 0.90963209 0.65486068 -1 0.75574964 0.84125352 -1 0.54064089
		 0.95949298 -1 0.28173259 1 -1 0 0.95949328 1 -0.28173202 0.84125394 1 -0.54064035
		 0.65486121 1 -0.75574923 0.41541559 1 -0.90963179 0.14231542 1 -0.98982143 -0.14231431 1 -0.98982161
		 -0.41541457 1 -0.90963233 -0.65486044 1 -0.75575 -0.8412534 1 -0.54064125 -0.95949298 1 -0.28173298
		 -1.000000119209 1 -3.5762787e-07 -0.95949316 1 0.28173229 -0.84125376 1 0.54064065
		 -0.65486097 1 0.75574952 -0.41541523 1 0.90963197 -0.14231502 1 0.98982149 0.1423147 1 0.98982155
		 0.41541493 1 0.90963209 0.65486068 1 0.75574964 0.84125352 1 0.54064089 0.95949298 1 0.28173259
		 1 1 0 0.66505361 1 -0.19527693 0.58309835 1 -0.37473404 0.45390397 1 -0.52383244
		 0.28793702 1 -0.6304931 0.098643087 1 -0.68607497 -0.098642327 1 -0.68607509 -0.2879363 1 -0.63049346
		 -0.45390341 1 -0.52383304 -0.58309793 1 -0.37473467 -0.66505343 1 -0.19527757 -0.69313002 1 -2.4669961e-07
		 -0.66505355 1 0.19527711 -0.58309817 1 0.37473425 -0.45390379 1 0.52383268 -0.28793678 1 0.63049322
		 -0.098642811 1 0.68607491 0.098642588 1 0.68607503 0.28793657 1 0.63049334 0.45390359 1 0.5238328
		 0.58309811 1 0.3747344 0.66505343 1 0.19527732 0.69312996 1 1.1830038e-09 0.65120125 0.0086362362 -0.19120951
		 0.57095301 0.0086362362 -0.36692873 0.44444963 0.0086362362 -0.51292157 0.28193963 0.0086362362 -0.61736059
		 0.096588477 0.0086362362 -0.67178476 -0.096587703 0.0086362362 -0.67178488 -0.28193891 0.0086362362 -0.61736095
		 -0.44444907 0.0086362362 -0.51292205 -0.57095265 0.0086362362 -0.36692935 -0.65120113 0.0086362362 -0.19121012
		 -0.67869294 0.0086362362 -2.2728071e-07 -0.65120113 0.0086362362 0.19120973 -0.57095289 0.0086362362 0.36692899
		 -0.44444948 0.0086362362 0.51292181 -0.28193936 0.0086362362 0.61736071 -0.096588165 0.0086362362 0.67178476
		 0.096587978 0.0086362362 0.67178482 0.28193918 0.0086362362 0.61736083 0.44444931 0.0086362362 0.51292187
		 0.57095277 0.0086362362 0.36692911 0.65120113 0.0086362362 0.19120991 0.67869294 0.0086362362 1.5438774e-08
		 0 -1 0;
	setAttr -s 264 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 0 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 42 1
		 42 43 1 43 22 1 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 60 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 44 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 84 0 84 85 0 85 86 0
		 86 87 0 87 66 0 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 88 1 110 111 0 111 112 0 112 113 0 113 114 0 114 115 0
		 115 116 0 116 117 0 117 118 0 118 119 0 119 120 0 120 121 0 121 122 0 122 123 0 123 124 0
		 124 125 0 125 126 0 126 127 0 127 128 0 128 129 0 129 130 0 130 131 0 131 110 0 0 22 1
		 1 23 1 2 24 1 3 25 1 4 26 1 5 27 1 6 28 1 7 29 1 8 30 1 9 31 1 10 32 1 11 33 1 12 34 1
		 13 35 1 14 36 1 15 37 1 16 38 1 17 39 1 18 40 1 19 41 1 20 42 1 21 43 1 22 44 1 23 45 1
		 24 46 1 25 47 1 26 48 1 27 49 1 28 50 1 29 51 1 30 52 1 31 53 1 32 54 1 33 55 1;
	setAttr ".ed[166:263]" 34 56 1 35 57 1 36 58 1 37 59 1 38 60 1 39 61 1 40 62 1
		 41 63 1 42 64 1 43 65 1 44 66 1 45 67 1 46 68 1 47 69 1 48 70 1 49 71 1 50 72 1 51 73 1
		 52 74 1 53 75 1 54 76 1 55 77 1 56 78 1 57 79 1 58 80 1 59 81 1 60 82 1 61 83 1 62 84 1
		 63 85 1 64 86 1 65 87 1 66 88 1 67 89 1 68 90 1 69 91 1 70 92 1 71 93 1 72 94 1 73 95 1
		 74 96 1 75 97 1 76 98 1 77 99 1 78 100 1 79 101 1 80 102 1 81 103 1 82 104 1 83 105 1
		 84 106 1 85 107 1 86 108 1 87 109 1 88 110 1 89 111 1 90 112 1 91 113 1 92 114 1
		 93 115 1 94 116 1 95 117 1 96 118 1 97 119 1 98 120 1 99 121 1 100 122 1 101 123 1
		 102 124 1 103 125 1 104 126 1 105 127 1 106 128 1 107 129 1 108 130 1 109 131 1 132 0 1
		 132 1 1 132 2 1 132 3 1 132 4 1 132 5 1 132 6 1 132 7 1 132 8 1 132 9 1 132 10 1
		 132 11 1 132 12 1 132 13 1 132 14 1 132 15 1 132 16 1 132 17 1 132 18 1 132 19 1
		 132 20 1 132 21 1;
	setAttr -s 132 -ch 506 ".fc[0:131]" -type "polyFaces" 
		f 4 0 133 -23 -133
		mu 0 4 0 1 23 22
		f 4 1 134 -24 -134
		mu 0 4 1 2 24 23
		f 4 2 135 -25 -135
		mu 0 4 2 3 25 24
		f 4 3 136 -26 -136
		mu 0 4 3 4 26 25
		f 4 4 137 -27 -137
		mu 0 4 4 5 27 26
		f 4 5 138 -28 -138
		mu 0 4 5 6 28 27
		f 4 6 139 -29 -139
		mu 0 4 6 7 29 28
		f 4 7 140 -30 -140
		mu 0 4 7 8 30 29
		f 4 8 141 -31 -141
		mu 0 4 8 9 31 30
		f 4 9 142 -32 -142
		mu 0 4 9 10 32 31
		f 4 10 143 -33 -143
		mu 0 4 10 11 33 32
		f 4 11 144 -34 -144
		mu 0 4 11 12 34 33
		f 4 12 145 -35 -145
		mu 0 4 12 13 35 34
		f 4 13 146 -36 -146
		mu 0 4 13 14 36 35
		f 4 14 147 -37 -147
		mu 0 4 14 15 37 36
		f 4 15 148 -38 -148
		mu 0 4 15 16 38 37
		f 4 16 149 -39 -149
		mu 0 4 16 17 39 38
		f 4 17 150 -40 -150
		mu 0 4 17 18 40 39
		f 4 18 151 -41 -151
		mu 0 4 18 19 41 40
		f 4 19 152 -42 -152
		mu 0 4 19 20 42 41
		f 4 20 153 -43 -153
		mu 0 4 20 21 43 42
		f 4 21 132 -44 -154
		mu 0 4 21 0 22 43
		f 4 22 155 -45 -155
		mu 0 4 22 23 45 44
		f 4 23 156 -46 -156
		mu 0 4 23 24 46 45
		f 4 24 157 -47 -157
		mu 0 4 24 25 47 46
		f 4 25 158 -48 -158
		mu 0 4 25 26 48 47
		f 4 26 159 -49 -159
		mu 0 4 26 27 49 48
		f 4 27 160 -50 -160
		mu 0 4 27 28 50 49
		f 4 28 161 -51 -161
		mu 0 4 28 29 51 50
		f 4 29 162 -52 -162
		mu 0 4 29 30 52 51
		f 4 30 163 -53 -163
		mu 0 4 30 31 53 52
		f 4 31 164 -54 -164
		mu 0 4 31 32 54 53
		f 4 32 165 -55 -165
		mu 0 4 32 33 55 54
		f 4 33 166 -56 -166
		mu 0 4 33 34 56 55
		f 4 34 167 -57 -167
		mu 0 4 34 35 57 56
		f 4 35 168 -58 -168
		mu 0 4 35 36 58 57
		f 4 36 169 -59 -169
		mu 0 4 36 37 59 58
		f 4 37 170 -60 -170
		mu 0 4 37 38 60 59
		f 4 38 171 -61 -171
		mu 0 4 38 39 61 60
		f 4 39 172 -62 -172
		mu 0 4 39 40 62 61
		f 4 40 173 -63 -173
		mu 0 4 40 41 63 62
		f 4 41 174 -64 -174
		mu 0 4 41 42 64 63
		f 4 42 175 -65 -175
		mu 0 4 42 43 65 64
		f 4 43 154 -66 -176
		mu 0 4 43 22 44 65
		f 4 44 177 -67 -177
		mu 0 4 66 67 90 89
		f 4 45 178 -68 -178
		mu 0 4 67 68 91 90
		f 4 46 179 -69 -179
		mu 0 4 68 69 92 91
		f 4 47 180 -70 -180
		mu 0 4 69 70 93 92
		f 4 48 181 -71 -181
		mu 0 4 70 71 94 93
		f 4 49 182 -72 -182
		mu 0 4 71 72 95 94
		f 4 50 183 -73 -183
		mu 0 4 72 73 96 95
		f 4 51 184 -74 -184
		mu 0 4 73 74 97 96
		f 4 52 185 -75 -185
		mu 0 4 74 75 98 97
		f 4 53 186 -76 -186
		mu 0 4 75 76 99 98
		f 4 54 187 -77 -187
		mu 0 4 76 77 100 99
		f 4 55 188 -78 -188
		mu 0 4 77 78 101 100
		f 4 56 189 -79 -189
		mu 0 4 78 79 102 101
		f 4 57 190 -80 -190
		mu 0 4 79 80 103 102
		f 4 58 191 -81 -191
		mu 0 4 80 81 104 103
		f 4 59 192 -82 -192
		mu 0 4 81 82 105 104
		f 4 60 193 -83 -193
		mu 0 4 82 83 106 105
		f 4 61 194 -84 -194
		mu 0 4 83 84 107 106
		f 4 62 195 -85 -195
		mu 0 4 84 85 108 107
		f 4 63 196 -86 -196
		mu 0 4 85 86 109 108
		f 4 64 197 -87 -197
		mu 0 4 86 87 110 109
		f 4 65 176 -88 -198
		mu 0 4 87 88 111 110
		f 4 66 199 -89 -199
		mu 0 4 132 131 153 154
		f 4 67 200 -90 -200
		mu 0 4 131 130 152 153
		f 4 68 201 -91 -201
		mu 0 4 130 129 151 152
		f 4 69 202 -92 -202
		mu 0 4 129 128 150 151
		f 4 70 203 -93 -203
		mu 0 4 128 127 149 150
		f 4 71 204 -94 -204
		mu 0 4 127 126 148 149
		f 4 72 205 -95 -205
		mu 0 4 126 125 147 148
		f 4 73 206 -96 -206
		mu 0 4 125 124 146 147
		f 4 74 207 -97 -207
		mu 0 4 124 123 145 146
		f 4 75 208 -98 -208
		mu 0 4 123 122 144 145
		f 4 76 209 -99 -209
		mu 0 4 122 121 143 144
		f 4 77 210 -100 -210
		mu 0 4 121 120 142 143
		f 4 78 211 -101 -211
		mu 0 4 120 119 141 142
		f 4 79 212 -102 -212
		mu 0 4 119 118 140 141
		f 4 80 213 -103 -213
		mu 0 4 118 117 139 140
		f 4 81 214 -104 -214
		mu 0 4 117 116 138 139
		f 4 82 215 -105 -215
		mu 0 4 116 115 137 138
		f 4 83 216 -106 -216
		mu 0 4 115 114 136 137
		f 4 84 217 -107 -217
		mu 0 4 114 113 135 136
		f 4 85 218 -108 -218
		mu 0 4 113 112 134 135
		f 4 86 219 -109 -219
		mu 0 4 112 133 155 134
		f 4 87 198 -110 -220
		mu 0 4 133 132 154 155
		f 4 88 221 -111 -221
		mu 0 4 154 153 175 176
		f 4 89 222 -112 -222
		mu 0 4 153 152 174 175
		f 4 90 223 -113 -223
		mu 0 4 152 151 173 174
		f 4 91 224 -114 -224
		mu 0 4 151 150 172 173
		f 4 92 225 -115 -225
		mu 0 4 150 149 171 172
		f 4 93 226 -116 -226
		mu 0 4 149 148 170 171
		f 4 94 227 -117 -227
		mu 0 4 148 147 169 170
		f 4 95 228 -118 -228
		mu 0 4 147 146 168 169
		f 4 96 229 -119 -229
		mu 0 4 146 145 167 168
		f 4 97 230 -120 -230
		mu 0 4 145 144 166 167
		f 4 98 231 -121 -231
		mu 0 4 144 143 165 166
		f 4 99 232 -122 -232
		mu 0 4 143 142 164 165
		f 4 100 233 -123 -233
		mu 0 4 142 141 163 164
		f 4 101 234 -124 -234
		mu 0 4 141 140 162 163
		f 4 102 235 -125 -235
		mu 0 4 140 139 161 162
		f 4 103 236 -126 -236
		mu 0 4 139 138 160 161
		f 4 104 237 -127 -237
		mu 0 4 138 137 159 160
		f 4 105 238 -128 -238
		mu 0 4 137 136 158 159
		f 4 106 239 -129 -239
		mu 0 4 136 135 157 158
		f 4 107 240 -130 -240
		mu 0 4 135 134 156 157
		f 4 108 241 -131 -241
		mu 0 4 134 155 177 156
		f 4 109 220 -132 -242
		mu 0 4 155 154 176 177
		f 3 -1 -243 243
		mu 0 3 1 0 178
		f 3 -2 -244 244
		mu 0 3 2 1 178
		f 3 -3 -245 245
		mu 0 3 3 2 178
		f 3 -4 -246 246
		mu 0 3 4 3 178
		f 3 -5 -247 247
		mu 0 3 5 4 178
		f 3 -6 -248 248
		mu 0 3 6 5 178
		f 3 -7 -249 249
		mu 0 3 7 6 178
		f 3 -8 -250 250
		mu 0 3 8 7 178
		f 3 -9 -251 251
		mu 0 3 9 8 178
		f 3 -10 -252 252
		mu 0 3 10 9 178
		f 3 -11 -253 253
		mu 0 3 11 10 178
		f 3 -12 -254 254
		mu 0 3 12 11 178
		f 3 -13 -255 255
		mu 0 3 13 12 178
		f 3 -14 -256 256
		mu 0 3 14 13 178
		f 3 -15 -257 257
		mu 0 3 15 14 178
		f 3 -16 -258 258
		mu 0 3 16 15 178
		f 3 -17 -259 259
		mu 0 3 17 16 178
		f 3 -18 -260 260
		mu 0 3 18 17 178
		f 3 -19 -261 261
		mu 0 3 19 18 178
		f 3 -20 -262 262
		mu 0 3 20 19 178
		f 3 -21 -263 263
		mu 0 3 21 20 178
		f 3 -22 -264 242
		mu 0 3 0 21 178;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SwitchButton" -p "Flashlight";
	rename -uid "A5198521-4AA6-9A4C-9311-3D9A75F3A5F2";
	setAttr ".rp" -type "double3" -0.2082818280553736 0.36009093816545173 1.1331418874729497 ;
	setAttr ".sp" -type "double3" -0.2082818280553736 0.36009093816545173 1.1331418874729497 ;
createNode mesh -n "SwitchButtonShape" -p "SwitchButton";
	rename -uid "DAD94B75-4A69-A474-BFF8-8581971FD4BA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.62500008940696716 0.4750000536441803 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 230 ".uvst[0].uvsp[0:229]" -type "float2" 0 0.50000006 0.050000001
		 0.50000006 0.1 0.50000006 0.15000001 0.50000006 0.2 0.50000006 0.25 0.50000006 0.30000001
		 0.50000006 0.35000002 0.50000006 0.40000004 0.50000006 0.45000005 0.50000006 0.50000006
		 0.50000006 0.55000007 0.50000006 0.60000008 0.50000006 0.6500001 0.50000006 0.70000011
		 0.50000006 0.75000012 0.50000006 0.80000013 0.50000006 0.85000014 0.50000006 0.90000015
		 0.50000006 0.95000017 0.50000006 1.000000119209 0.50000006 0 0.55000007 0.050000001
		 0.55000007 0.1 0.55000007 0.15000001 0.55000007 0.2 0.55000007 0.25 0.55000007 0.30000001
		 0.55000007 0.35000002 0.55000007 0.40000004 0.55000007 0.45000005 0.55000007 0.50000006
		 0.55000007 0.55000007 0.55000007 0.60000008 0.55000007 0.6500001 0.55000007 0.70000011
		 0.55000007 0.75000012 0.55000007 0.80000013 0.55000007 0.85000014 0.55000007 0.90000015
		 0.55000007 0.95000017 0.55000007 1.000000119209 0.55000007 0 0.60000008 0.050000001
		 0.60000008 0.1 0.60000008 0.15000001 0.60000008 0.2 0.60000008 0.25 0.60000008 0.30000001
		 0.60000008 0.35000002 0.60000008 0.40000004 0.60000008 0.45000005 0.60000008 0.50000006
		 0.60000008 0.55000007 0.60000008 0.60000008 0.60000008 0.6500001 0.60000008 0.70000011
		 0.60000008 0.75000012 0.60000008 0.80000013 0.60000008 0.85000014 0.60000008 0.90000015
		 0.60000008 0.95000017 0.60000008 1.000000119209 0.60000008 0 0.6500001 0.050000001
		 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001 0.25 0.6500001 0.30000001
		 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005 0.6500001 0.50000006
		 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001 0.6500001 0.70000011
		 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014 0.6500001 0.90000015
		 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011 0.050000001
		 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011 0.30000001
		 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011 0.50000006
		 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011 0.70000011
		 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011 0.90000015
		 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012 0.050000001
		 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012 0.30000001
		 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012 0.50000006
		 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012 0.70000011
		 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012 0.90000015
		 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013 0.050000001
		 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013 0.30000001
		 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013 0.50000006
		 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013 0.70000011
		 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013 0.90000015
		 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014 0.050000001
		 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014 0.30000001
		 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014 0.50000006
		 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014 0.70000011
		 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014 0.90000015
		 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015 0.050000001
		 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015 0.30000001
		 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015 0.50000006
		 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015 0.70000011
		 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015 0.90000015
		 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017 0.050000001
		 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017 0.30000001
		 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017 0.50000006
		 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017 0.70000011
		 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017 0.90000015
		 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 1 0.075000003 1
		 0.125 1 0.17500001 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1
		 0.47500002 1 0.52499998 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998
		 1 0.82499999 1 0.875 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 201 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -1.1290696 0.37252864 1.4342593 -0.99223036 
		0.38158697 1.7143849 -0.77865273 0.3885411 1.9376144 -0.50924331 0.39271033 2.0820966 
		-0.21037367 0.39368656 2.1336882 0.088700704 0.3913742 2.0873396 0.3587043 0.38599962 
		1.9475874 0.57320732 0.37808892 1.7281116 0.71121269 0.36841646 1.4503961 0.7592116 
		0.35792902 1.1416255 0.71250558 0.34765324 0.83202451 0.57566637 0.33859491 0.55189902 
		0.36208886 0.33164078 0.32866967 0.092679538 0.32747155 0.18418761 -0.20618996 0.32649535 
		0.13259584 -0.50526416 0.32880768 0.17894448 -0.77526772 0.33418226 0.31869659 -0.98977071 
		0.34209296 0.5381723 -1.1277761 0.35176542 0.81588775 -1.1757751 0.36225283 1.1246582 
		-1.1168321 0.21594115 1.4340044 -0.98167765 0.22488795 1.7106812 -0.77072954 0.23175646 
		1.9311624 -0.50463694 0.23587437 2.0738657 -0.20944692 0.23683856 2.1248224 0.08594536 
		0.23455468 2.0790443 0.35262477 0.22924627 1.9410126 0.56448686 0.22143297 1.7242389 
		0.70079321 0.21187958 1.4499425 0.74820119 0.20152128 1.1449734 0.70207012 0.19137198 
		0.83918411 0.56691563 0.1824252 0.56250745 0.35596764 0.17555669 0.34202638 0.089875206 
		0.17143878 0.19932316 -0.20531471 0.17047457 0.14836654 -0.50070685 0.17275846 0.19414453 
		-0.7673862 0.17806686 0.33217612 -0.97924829 0.18588017 0.54894966 -1.1155547 0.19543356 
		0.823246 -1.1629626 0.20579186 1.1282151 -1.0822232 0.062902935 1.4263413 -0.95208138 
		0.071517907 1.6927567 -0.74895704 0.078131683 1.9050604 -0.49273336 0.082096852 2.0424712 
		-0.20849149 0.083025292 2.0915377 0.075945139 0.080826119 2.0474577 0.33273384 0.075714588 
		1.9145453 0.53673834 0.068191066 1.7058114 0.66798925 0.058992002 1.4416883 0.71363896 
		0.049017869 1.14803 0.66921884 0.039244998 0.85358191 0.53907704 0.030630033 0.58716673 
		0.33595276 0.024016261 0.37486297 0.079729266 0.020051088 0.2374524 -0.20451254 0.019122647 
		0.1883857 -0.48894906 0.021321828 0.23246589 -0.74573767 0.026433351 0.36537802 -0.94974214 
		0.03395687 0.57411182 -1.0809931 0.043155931 0.83823496 -1.1266427 0.05313006 1.1318932 
		-1.0260949 -0.082817495 1.4114586 -0.90417027 -0.074746475 1.6610523 -0.71387124 
		-0.068550296 1.8599513 -0.47382566 -0.064835489 1.9886857 -0.20753089 -0.063965671 
		2.0346544 0.058946326 -0.066025987 1.9933574 0.29952127 -0.070814773 1.8688372 0.49064484 
		-0.077863261 1.6732829 0.6136086 -0.086481489 1.4258366 0.65637594 -0.095825858 1.15072 
		0.61476052 -0.10498166 0.87486345 0.49283594 -0.11305267 0.62526977 0.30253699 -0.11924885 
		0.42637095 0.062491488 -0.12296367 0.29763654 -0.20380317 -0.12383348 0.25166792 
		-0.47028026 -0.12177316 0.29296488 -0.71085519 -0.11698438 0.41748491 -0.90197873 
		-0.10993589 0.61303914 -1.0249425 -0.10131767 0.86048549 -1.0677098 -0.091973305 
		1.135602 -0.9498294 -0.21763198 1.3897228 -0.83912414 -0.21030365 1.6163492 -0.66633618 
		-0.20467764 1.7969457 -0.44837937 -0.20130466 1.9138341 -0.20658877 -0.20051488 1.9555727 
		0.035367463 -0.20238562 1.9180759 0.25380498 -0.20673373 1.805014 0.42734155 -0.21313363 
		1.6274543 0.53899026 -0.22095883 1.4027777 0.57782215 -0.22944333 1.1529771 0.5400362 
		-0.23775662 0.90250462 0.42933095 -0.24508496 0.67587835 0.25654313 -0.25071096 0.49528199 
		0.038586423 -0.25408393 0.37839356 -0.20320408 -0.25487372 0.3366549 -0.44516021 
		-0.253003 0.37415174 -0.6635977 -0.24865486 0.48721364 -0.83713424 -0.24225497 0.66477317 
		-0.94878298 -0.23442979 0.88944972 -0.98761487 -0.22594528 1.1392503 -0.85530442 
		-0.33822104 1.3616692 -0.7585445 -0.33181584 1.5597479 -0.60752231 -0.32689852 1.717595 
		-0.4170211 -0.32395044 1.8197592 -0.20568836 -0.32326016 1.8562402 0.0057891584 -0.32489523 
		1.8234667 0.19671051 -0.32869563 1.7246469 0.348387 -0.33428934 1.5694541 0.44597164 
		-0.3411288 1.3730795 0.47991195 -0.34854454 1.1547458 0.44688579 -0.35581061 0.93582487 
		0.35012588 -0.36221582 0.73774624 0.19910376 -0.36713314 0.57989925 0.0086026089 
		-0.37008122 0.47773501 -0.20273003 -0.3707715 0.44125414 -0.41420743 -0.36913642 
		0.47402751 -0.60512877 -0.36533603 0.57284725 -0.7568053 -0.35974231 0.72803992 -0.85438985 
		-0.35290286 0.92441446 -0.88833022 -0.34548712 1.1427481 -0.74484771 -0.44161537 
		1.3279884 -0.6644156 -0.43629101 1.4926422 -0.53887784 -0.43220347 1.6238532 -0.38052294 
		-0.42975286 1.7087775 -0.20485181 -0.42917907 1.7391025 -0.029060295 -0.43053824 
		1.7118593 0.12964384 -0.43369731 1.6297151 0.25572553 -0.43834713 1.5007105 0.33684307 
		-0.44403246 1.3374734 0.3650561 -0.4501968 1.1559826 0.33760297 -0.45623678 0.97400373 
		0.25717092 -0.46156111 0.80935007 0.13163322 -0.46564865 0.67813915 -0.026721602 
		-0.46809927 0.59321475 -0.20239267 -0.46867305 0.56288981 -0.37818411 -0.46731389 
		0.59013283 -0.53688818 -0.46415481 0.67227709 -0.66296989 -0.45950502 0.80128169 
		-0.74408746 -0.45381969 0.96451873 -0.77230048 -0.44765532 1.1460094 -0.62117893 
		-0.52526897 1.2895099 -0.55905521 -0.52115661 1.4166843 -0.46209303 -0.51799947 1.5180284 
		-0.33978367 -0.51610667 1.5836219 -0.2040997 -0.5156635 1.607044 -0.06832277 -0.51671326 
		1.5860022 0.054256305 -0.5191533 1.5225559 0.15163863 -0.52274466 1.4229161 0.2142918 
		-0.52713591 1.2968359 0.23608284 -0.53189707 1.156657 0.21487872 -0.5365622 1.016101 
		0.15275501 -0.54067457 0.88892674 0.055792857 -0.54383171 0.7875827 -0.066516422 
		-0.54572451 0.72198921 -0.20220034 -0.54616767 0.69856703 -0.3379772 -0.54511791 
		0.7196089 -0.46055624 -0.54267788 0.78305501 -0.55793858 -0.53908652 0.8826949 -0.6205917 
		-0.53469527 1.0087751 -0.64238274 -0.52993411 1.1489539 -0.48734322 -0.58712214 1.2471811 
		-0.4450576 -0.58432299 1.3337446 -0.37905845 -0.582174 1.4027264 -0.29580638 -0.58088565 
		1.4473739 -0.20345058 -0.58058399 1.4633166 -0.11103151 -0.58129853 1.448994;
	setAttr ".pt[166:200]" -0.027595809 -0.58295935 1.4058082 0.038689271 -0.58540392 
		1.3379865 0.081335284 -0.58839285 1.2521676 0.096167743 -0.59163368 1.1567522 0.081734791 
		-0.59480906 1.0610803 0.039449152 -0.59760821 0.97451675 -0.026549917 -0.59975719 
		0.9055351 -0.10980198 -0.60104555 0.86088771 -0.20215774 -0.60134721 0.84494495 -0.29457676 
		-0.60063267 0.85926747 -0.37801245 -0.59897184 0.90245324 -0.44429749 -0.59652728 
		0.97027498 -0.48694354 -0.59353834 1.0560938 -0.50177598 -0.59029752 1.1515092 -0.34663612 
		-0.62565172 1.2020442 -0.32522973 -0.62423468 1.2458656 -0.29181886 -0.62314683 1.2807864 
		-0.24967392 -0.62249464 1.3033884 -0.20292041 -0.62234193 1.3114591 -0.15613487 -0.62270367 
		1.3042085 -0.113897 -0.62354439 1.2823465 -0.080341339 -0.62478191 1.2480129 -0.058752533 
		-0.62629503 1.2045686 -0.051243842 -0.62793565 1.1562662 -0.058550287 -0.62954313 
		1.107834 -0.079956651 -0.63096017 1.0640126 -0.11336754 -0.63204801 1.029092 -0.15551244 
		-0.6327002 1.00649 -0.20226593 -0.63285291 0.99841923 -0.24905145 -0.63249123 1.0056697 
		-0.29128933 -0.63165045 1.0275319 -0.32484499 -0.63041294 1.0618653 -0.34643379 -0.62889981 
		1.1053096 -0.35394248 -0.62725925 1.153612 -0.20252226 -0.63990909 1.1552109;
	setAttr -s 201 ".vt";
	setAttr ".vt[0:165]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748
		 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173
		 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706
		 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898
		 -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071 -1.3529972e-08 0.89100653 0.45399058
		 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609 0.36728606 0.89100653 0.26684895
		 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0 0.29389283 0.95105654 -0.095491566
		 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015 0.095491551 0.95105654 -0.2938928
		 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277;
	setAttr ".vt[166:200]" -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569
		 -0.29389271 0.95105654 -0.095491529 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529
		 -0.25000006 0.95105654 0.18163568 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268
		 -9.2094243e-09 0.95105654 0.30901703 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003
		 0.25 0.95105654 0.18163565 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0
		 0.14877813 0.98768836 -0.048340943 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823
		 0.048340935 0.98768836 -0.14877811 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781
		 -0.091949917 0.98768836 -0.1265582 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924
		 -0.15643452 0.98768836 0 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895
		 -0.091949895 0.98768836 0.12655817 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449
		 0.048340909 0.98768836 0.14877804 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888
		 0.14877804 0.98768836 0.048340913 0.15643448 0.98768836 0 0 1 0;
	setAttr -s 400 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1
		 11 31 1 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1
		 22 42 1 23 43 1 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1
		 33 53 1 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1
		 44 64 1 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1
		 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1
		 66 86 1 67 87 1 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1
		 77 97 1 78 98 1 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1
		 87 107 1 88 108 1 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1
		 96 116 1 97 117 1 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1
		 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1
		 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1
		 123 143 1 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1;
	setAttr ".ed[332:399]" 132 152 1 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1
		 138 158 1 139 159 1 140 160 1 141 161 1 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1
		 147 167 1 148 168 1 149 169 1 150 170 1 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1
		 156 176 1 157 177 1 158 178 1 159 179 1 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1
		 165 185 1 166 186 1 167 187 1 168 188 1 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1
		 174 194 1 175 195 1 176 196 1 177 197 1 178 198 1 179 199 1 180 200 1 181 200 1 182 200 1
		 183 200 1 184 200 1 185 200 1 186 200 1 187 200 1 188 200 1 189 200 1 190 200 1 191 200 1
		 192 200 1 193 200 1 194 200 1 195 200 1 196 200 1 197 200 1 198 200 1 199 200 1;
	setAttr -s 200 -ch 780 ".fc[0:199]" -type "polyFaces" 
		f 4 0 201 -21 -201
		mu 0 4 0 1 22 21
		f 4 1 202 -22 -202
		mu 0 4 1 2 23 22
		f 4 2 203 -23 -203
		mu 0 4 2 3 24 23
		f 4 3 204 -24 -204
		mu 0 4 3 4 25 24
		f 4 4 205 -25 -205
		mu 0 4 4 5 26 25
		f 4 5 206 -26 -206
		mu 0 4 5 6 27 26
		f 4 6 207 -27 -207
		mu 0 4 6 7 28 27
		f 4 7 208 -28 -208
		mu 0 4 7 8 29 28
		f 4 8 209 -29 -209
		mu 0 4 8 9 30 29
		f 4 9 210 -30 -210
		mu 0 4 9 10 31 30
		f 4 10 211 -31 -211
		mu 0 4 10 11 32 31
		f 4 11 212 -32 -212
		mu 0 4 11 12 33 32
		f 4 12 213 -33 -213
		mu 0 4 12 13 34 33
		f 4 13 214 -34 -214
		mu 0 4 13 14 35 34
		f 4 14 215 -35 -215
		mu 0 4 14 15 36 35
		f 4 15 216 -36 -216
		mu 0 4 15 16 37 36
		f 4 16 217 -37 -217
		mu 0 4 16 17 38 37
		f 4 17 218 -38 -218
		mu 0 4 17 18 39 38
		f 4 18 219 -39 -219
		mu 0 4 18 19 40 39
		f 4 19 200 -40 -220
		mu 0 4 19 20 41 40
		f 4 20 221 -41 -221
		mu 0 4 21 22 43 42
		f 4 21 222 -42 -222
		mu 0 4 22 23 44 43
		f 4 22 223 -43 -223
		mu 0 4 23 24 45 44
		f 4 23 224 -44 -224
		mu 0 4 24 25 46 45
		f 4 24 225 -45 -225
		mu 0 4 25 26 47 46
		f 4 25 226 -46 -226
		mu 0 4 26 27 48 47
		f 4 26 227 -47 -227
		mu 0 4 27 28 49 48
		f 4 27 228 -48 -228
		mu 0 4 28 29 50 49
		f 4 28 229 -49 -229
		mu 0 4 29 30 51 50
		f 4 29 230 -50 -230
		mu 0 4 30 31 52 51
		f 4 30 231 -51 -231
		mu 0 4 31 32 53 52
		f 4 31 232 -52 -232
		mu 0 4 32 33 54 53
		f 4 32 233 -53 -233
		mu 0 4 33 34 55 54
		f 4 33 234 -54 -234
		mu 0 4 34 35 56 55
		f 4 34 235 -55 -235
		mu 0 4 35 36 57 56
		f 4 35 236 -56 -236
		mu 0 4 36 37 58 57
		f 4 36 237 -57 -237
		mu 0 4 37 38 59 58
		f 4 37 238 -58 -238
		mu 0 4 38 39 60 59
		f 4 38 239 -59 -239
		mu 0 4 39 40 61 60
		f 4 39 220 -60 -240
		mu 0 4 40 41 62 61
		f 4 40 241 -61 -241
		mu 0 4 42 43 64 63
		f 4 41 242 -62 -242
		mu 0 4 43 44 65 64
		f 4 42 243 -63 -243
		mu 0 4 44 45 66 65
		f 4 43 244 -64 -244
		mu 0 4 45 46 67 66
		f 4 44 245 -65 -245
		mu 0 4 46 47 68 67
		f 4 45 246 -66 -246
		mu 0 4 47 48 69 68
		f 4 46 247 -67 -247
		mu 0 4 48 49 70 69
		f 4 47 248 -68 -248
		mu 0 4 49 50 71 70
		f 4 48 249 -69 -249
		mu 0 4 50 51 72 71
		f 4 49 250 -70 -250
		mu 0 4 51 52 73 72
		f 4 50 251 -71 -251
		mu 0 4 52 53 74 73
		f 4 51 252 -72 -252
		mu 0 4 53 54 75 74
		f 4 52 253 -73 -253
		mu 0 4 54 55 76 75
		f 4 53 254 -74 -254
		mu 0 4 55 56 77 76
		f 4 54 255 -75 -255
		mu 0 4 56 57 78 77
		f 4 55 256 -76 -256
		mu 0 4 57 58 79 78
		f 4 56 257 -77 -257
		mu 0 4 58 59 80 79
		f 4 57 258 -78 -258
		mu 0 4 59 60 81 80
		f 4 58 259 -79 -259
		mu 0 4 60 61 82 81
		f 4 59 240 -80 -260
		mu 0 4 61 62 83 82
		f 4 60 261 -81 -261
		mu 0 4 63 64 85 84
		f 4 61 262 -82 -262
		mu 0 4 64 65 86 85
		f 4 62 263 -83 -263
		mu 0 4 65 66 87 86
		f 4 63 264 -84 -264
		mu 0 4 66 67 88 87
		f 4 64 265 -85 -265
		mu 0 4 67 68 89 88
		f 4 65 266 -86 -266
		mu 0 4 68 69 90 89
		f 4 66 267 -87 -267
		mu 0 4 69 70 91 90
		f 4 67 268 -88 -268
		mu 0 4 70 71 92 91
		f 4 68 269 -89 -269
		mu 0 4 71 72 93 92
		f 4 69 270 -90 -270
		mu 0 4 72 73 94 93
		f 4 70 271 -91 -271
		mu 0 4 73 74 95 94
		f 4 71 272 -92 -272
		mu 0 4 74 75 96 95
		f 4 72 273 -93 -273
		mu 0 4 75 76 97 96
		f 4 73 274 -94 -274
		mu 0 4 76 77 98 97
		f 4 74 275 -95 -275
		mu 0 4 77 78 99 98
		f 4 75 276 -96 -276
		mu 0 4 78 79 100 99
		f 4 76 277 -97 -277
		mu 0 4 79 80 101 100
		f 4 77 278 -98 -278
		mu 0 4 80 81 102 101
		f 4 78 279 -99 -279
		mu 0 4 81 82 103 102
		f 4 79 260 -100 -280
		mu 0 4 82 83 104 103
		f 4 80 281 -101 -281
		mu 0 4 84 85 106 105
		f 4 81 282 -102 -282
		mu 0 4 85 86 107 106
		f 4 82 283 -103 -283
		mu 0 4 86 87 108 107
		f 4 83 284 -104 -284
		mu 0 4 87 88 109 108
		f 4 84 285 -105 -285
		mu 0 4 88 89 110 109
		f 4 85 286 -106 -286
		mu 0 4 89 90 111 110
		f 4 86 287 -107 -287
		mu 0 4 90 91 112 111
		f 4 87 288 -108 -288
		mu 0 4 91 92 113 112
		f 4 88 289 -109 -289
		mu 0 4 92 93 114 113
		f 4 89 290 -110 -290
		mu 0 4 93 94 115 114
		f 4 90 291 -111 -291
		mu 0 4 94 95 116 115
		f 4 91 292 -112 -292
		mu 0 4 95 96 117 116
		f 4 92 293 -113 -293
		mu 0 4 96 97 118 117
		f 4 93 294 -114 -294
		mu 0 4 97 98 119 118
		f 4 94 295 -115 -295
		mu 0 4 98 99 120 119
		f 4 95 296 -116 -296
		mu 0 4 99 100 121 120
		f 4 96 297 -117 -297
		mu 0 4 100 101 122 121
		f 4 97 298 -118 -298
		mu 0 4 101 102 123 122
		f 4 98 299 -119 -299
		mu 0 4 102 103 124 123
		f 4 99 280 -120 -300
		mu 0 4 103 104 125 124
		f 4 100 301 -121 -301
		mu 0 4 105 106 127 126
		f 4 101 302 -122 -302
		mu 0 4 106 107 128 127
		f 4 102 303 -123 -303
		mu 0 4 107 108 129 128
		f 4 103 304 -124 -304
		mu 0 4 108 109 130 129
		f 4 104 305 -125 -305
		mu 0 4 109 110 131 130
		f 4 105 306 -126 -306
		mu 0 4 110 111 132 131
		f 4 106 307 -127 -307
		mu 0 4 111 112 133 132
		f 4 107 308 -128 -308
		mu 0 4 112 113 134 133
		f 4 108 309 -129 -309
		mu 0 4 113 114 135 134
		f 4 109 310 -130 -310
		mu 0 4 114 115 136 135
		f 4 110 311 -131 -311
		mu 0 4 115 116 137 136
		f 4 111 312 -132 -312
		mu 0 4 116 117 138 137
		f 4 112 313 -133 -313
		mu 0 4 117 118 139 138
		f 4 113 314 -134 -314
		mu 0 4 118 119 140 139
		f 4 114 315 -135 -315
		mu 0 4 119 120 141 140
		f 4 115 316 -136 -316
		mu 0 4 120 121 142 141
		f 4 116 317 -137 -317
		mu 0 4 121 122 143 142
		f 4 117 318 -138 -318
		mu 0 4 122 123 144 143
		f 4 118 319 -139 -319
		mu 0 4 123 124 145 144
		f 4 119 300 -140 -320
		mu 0 4 124 125 146 145
		f 4 120 321 -141 -321
		mu 0 4 126 127 148 147
		f 4 121 322 -142 -322
		mu 0 4 127 128 149 148
		f 4 122 323 -143 -323
		mu 0 4 128 129 150 149
		f 4 123 324 -144 -324
		mu 0 4 129 130 151 150
		f 4 124 325 -145 -325
		mu 0 4 130 131 152 151
		f 4 125 326 -146 -326
		mu 0 4 131 132 153 152
		f 4 126 327 -147 -327
		mu 0 4 132 133 154 153
		f 4 127 328 -148 -328
		mu 0 4 133 134 155 154
		f 4 128 329 -149 -329
		mu 0 4 134 135 156 155
		f 4 129 330 -150 -330
		mu 0 4 135 136 157 156
		f 4 130 331 -151 -331
		mu 0 4 136 137 158 157
		f 4 131 332 -152 -332
		mu 0 4 137 138 159 158
		f 4 132 333 -153 -333
		mu 0 4 138 139 160 159
		f 4 133 334 -154 -334
		mu 0 4 139 140 161 160
		f 4 134 335 -155 -335
		mu 0 4 140 141 162 161
		f 4 135 336 -156 -336
		mu 0 4 141 142 163 162
		f 4 136 337 -157 -337
		mu 0 4 142 143 164 163
		f 4 137 338 -158 -338
		mu 0 4 143 144 165 164
		f 4 138 339 -159 -339
		mu 0 4 144 145 166 165
		f 4 139 320 -160 -340
		mu 0 4 145 146 167 166
		f 4 140 341 -161 -341
		mu 0 4 147 148 169 168
		f 4 141 342 -162 -342
		mu 0 4 148 149 170 169
		f 4 142 343 -163 -343
		mu 0 4 149 150 171 170
		f 4 143 344 -164 -344
		mu 0 4 150 151 172 171
		f 4 144 345 -165 -345
		mu 0 4 151 152 173 172
		f 4 145 346 -166 -346
		mu 0 4 152 153 174 173
		f 4 146 347 -167 -347
		mu 0 4 153 154 175 174
		f 4 147 348 -168 -348
		mu 0 4 154 155 176 175
		f 4 148 349 -169 -349
		mu 0 4 155 156 177 176
		f 4 149 350 -170 -350
		mu 0 4 156 157 178 177
		f 4 150 351 -171 -351
		mu 0 4 157 158 179 178
		f 4 151 352 -172 -352
		mu 0 4 158 159 180 179
		f 4 152 353 -173 -353
		mu 0 4 159 160 181 180
		f 4 153 354 -174 -354
		mu 0 4 160 161 182 181
		f 4 154 355 -175 -355
		mu 0 4 161 162 183 182
		f 4 155 356 -176 -356
		mu 0 4 162 163 184 183
		f 4 156 357 -177 -357
		mu 0 4 163 164 185 184
		f 4 157 358 -178 -358
		mu 0 4 164 165 186 185
		f 4 158 359 -179 -359
		mu 0 4 165 166 187 186
		f 4 159 340 -180 -360
		mu 0 4 166 167 188 187
		f 4 160 361 -181 -361
		mu 0 4 168 169 190 189
		f 4 161 362 -182 -362
		mu 0 4 169 170 191 190
		f 4 162 363 -183 -363
		mu 0 4 170 171 192 191
		f 4 163 364 -184 -364
		mu 0 4 171 172 193 192
		f 4 164 365 -185 -365
		mu 0 4 172 173 194 193
		f 4 165 366 -186 -366
		mu 0 4 173 174 195 194
		f 4 166 367 -187 -367
		mu 0 4 174 175 196 195
		f 4 167 368 -188 -368
		mu 0 4 175 176 197 196
		f 4 168 369 -189 -369
		mu 0 4 176 177 198 197
		f 4 169 370 -190 -370
		mu 0 4 177 178 199 198
		f 4 170 371 -191 -371
		mu 0 4 178 179 200 199
		f 4 171 372 -192 -372
		mu 0 4 179 180 201 200
		f 4 172 373 -193 -373
		mu 0 4 180 181 202 201
		f 4 173 374 -194 -374
		mu 0 4 181 182 203 202
		f 4 174 375 -195 -375
		mu 0 4 182 183 204 203
		f 4 175 376 -196 -376
		mu 0 4 183 184 205 204
		f 4 176 377 -197 -377
		mu 0 4 184 185 206 205
		f 4 177 378 -198 -378
		mu 0 4 185 186 207 206
		f 4 178 379 -199 -379
		mu 0 4 186 187 208 207
		f 4 179 360 -200 -380
		mu 0 4 187 188 209 208
		f 3 180 381 -381
		mu 0 3 189 190 210
		f 3 181 382 -382
		mu 0 3 190 191 211
		f 3 182 383 -383
		mu 0 3 191 192 212
		f 3 183 384 -384
		mu 0 3 192 193 213
		f 3 184 385 -385
		mu 0 3 193 194 214
		f 3 185 386 -386
		mu 0 3 194 195 215
		f 3 186 387 -387
		mu 0 3 195 196 216
		f 3 187 388 -388
		mu 0 3 196 197 217
		f 3 188 389 -389
		mu 0 3 197 198 218
		f 3 189 390 -390
		mu 0 3 198 199 219
		f 3 190 391 -391
		mu 0 3 199 200 220
		f 3 191 392 -392
		mu 0 3 200 201 221
		f 3 192 393 -393
		mu 0 3 201 202 222
		f 3 193 394 -394
		mu 0 3 202 203 223
		f 3 194 395 -395
		mu 0 3 203 204 224
		f 3 195 396 -396
		mu 0 3 204 205 225
		f 3 196 397 -397
		mu 0 3 205 206 226
		f 3 197 398 -398
		mu 0 3 206 207 227
		f 3 198 399 -399
		mu 0 3 207 208 228
		f 3 199 380 -400
		mu 0 3 208 209 229;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Window";
	rename -uid "DB6A87CB-4B43-EE44-69D5-119DDA06B37D";
	setAttr ".rp" -type "double3" 12.558780398493919 0 0 ;
	setAttr ".sp" -type "double3" 12.558780398493919 0 0 ;
createNode transform -n "WindowFrame" -p "Window";
	rename -uid "0A6D61E0-4D2A-AA6D-627E-F4930CB2F682";
	setAttr ".rp" -type "double3" 1.0195988888269145 2.8396449452215902 -3.0826583465826012 ;
	setAttr ".sp" -type "double3" 1.0195988888269145 2.8396449452215902 -3.0826583465826012 ;
createNode mesh -n "WindowFrameShape" -p "WindowFrame";
	rename -uid "EAC481F8-4BFE-9067-77E5-05AEDE7CE79B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "f[0:1]" "f[26]" "f[39]" "f[52:100]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "f[2]" "f[4]" "f[6:9]" "f[27]" "f[29:30]" "f[40]" "f[42:43]" "f[101]" "f[103:104]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[3]" "f[5]" "f[22:25]" "f[28]" "f[37:38]" "f[41]" "f[50:51]" "f[102]" "f[111:112]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 4 "f[10:21]" "f[31:36]" "f[44:49]" "f[105:110]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 256 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 1 1 0 1 1 1 0 1 1 1 0 1 1 1
		 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0
		 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1
		 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1
		 1 1 1 0 1 1 1 1 1 0 0 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 1 0 1 0 0 0 0 0
		 1 1 0 1 1 1 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0;
	setAttr ".uvst[0].uvsp[250:255]" 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 118 ".pt[0:117]" -type "float3"  0.70501733 1.3038265 -3.8136466 
		1.3341807 1.3038265 -3.8136468 0.70501733 1.3038265 -2.3516648 1.3341807 1.3038265 
		-2.3516648 0.70501733 3.8109667 -3.8136468 1.3341807 3.8109667 -3.8136466 0.70501733 
		3.8109667 -2.3516648 1.3341807 3.8109667 -2.3516648 0.72041303 3.9854052 -3.8136468 
		0.72041303 3.9854052 -2.3516648 0.7650919 4.1427693 -3.8136468 0.7650919 4.1427693 
		-2.3516648 0.8346808 4.2676539 -3.8136468 0.8346808 4.2676539 -2.3516648 0.92236781 
		4.3478346 -3.8136468 0.92236781 4.3478346 -2.3516648 1.0196006 4.375463 -3.8136468 
		1.0196006 4.375463 -2.3516648 1.1168336 4.3478346 -3.8136468 1.1168336 4.3478346 
		-2.3516648 1.2045199 4.2676539 -3.8136468 1.2045199 4.2676539 -2.3516648 1.2741083 
		4.1427693 -3.8136468 1.2741083 4.1427693 -2.3516648 1.3187864 3.9854052 -3.8136468 
		1.3187864 3.9854052 -2.3516648 0.62859172 1.1497102 -3.4928021 1.410607 1.1497102 
		-3.4928021 0.62859172 1.1497102 -3.8136468 1.410607 1.1497102 -3.8136468 0.62859172 
		3.9084365 -3.4928021 0.62859172 3.9084365 -3.8136468 1.410607 3.9084365 -3.4928021 
		1.410607 3.9084365 -3.8136468 0.64772761 4.1003795 -3.4928021 0.64772761 4.1003795 
		-3.8136468 0.70326155 4.2735348 -3.4928021 0.70326155 4.2735348 -3.8136468 0.78975499 
		4.4109502 -3.4928021 0.78975499 4.4109502 -3.8136468 0.89874589 4.4991775 -3.4928021 
		0.89874589 4.4991775 -3.8136468 1.019601 4.5295782 -3.4928021 1.019601 4.5295782 
		-3.8136468 1.1404551 4.4991775 -3.4928021 1.1404551 4.4991775 -3.8136468 1.2494451 
		4.4109502 -3.4928021 1.2494451 4.4109502 -3.8136468 1.3359385 4.2735348 -3.4928021 
		1.3359385 4.2735348 -3.8136468 1.3914719 4.1003795 -3.4928021 1.3914719 4.1003795 
		-3.8136468 0.62859172 1.1497102 -2.6725161 1.410607 1.1497102 -2.6725161 1.410607 
		1.1497102 -2.3516653 0.62859172 1.1497102 -2.3516653 0.62859172 3.9084365 -2.6725161 
		0.62859172 3.9084365 -2.3516653 1.410607 3.9084365 -2.6725161 1.410607 3.9084365 
		-2.3516653 0.64772761 4.1003795 -2.6725161 0.64772761 4.1003795 -2.3516653 0.70326155 
		4.2735348 -2.6725161 0.70326155 4.2735348 -2.3516653 0.78975499 4.4109502 -2.6725161 
		0.78975499 4.4109502 -2.3516653 0.89874589 4.4991775 -2.6725161 0.89874589 4.4991775 
		-2.3516653 1.019601 4.5295782 -2.6725161 1.019601 4.5295782 -2.3516653 1.1404551 
		4.4991775 -2.6725161 1.1404551 4.4991775 -2.3516653 1.2494451 4.4109502 -2.6725161 
		1.2494451 4.4109502 -2.3516653 1.3359385 4.2735348 -2.6725161 1.3359385 4.2735348 
		-2.3516653 1.3914719 4.1003795 -2.6725161 1.3914719 4.1003795 -2.3516653 0.62859172 
		0.96477872 -3.4928021 1.410607 0.96477872 -3.4928021 0.62859172 0.96477872 -3.8136468 
		1.410607 0.96477872 -3.8136468 0.62859172 0.96477872 -2.6725161 1.410607 0.96477872 
		-2.6725161 1.410607 0.96477872 -2.3516653 0.62859172 0.96477872 -2.3516653 0.62859172 
		1.1497102 -4.3662186 1.410607 1.1497102 -4.3662186 1.410607 0.96477872 -4.3662186 
		0.62859172 0.96477872 -4.3662186 0.62859172 1.1497102 -1.8003426 1.410607 1.1497102 
		-1.8003426 0.62859172 0.96477872 -1.8003426 1.410607 0.96477872 -1.8003426 0.53607184 
		1.1497102 -3.4928021 0.53607184 1.1497102 -3.8136468 0.53607184 0.96477872 -3.8136468 
		0.53607184 0.96477872 -3.4928021 0.53607184 1.1497102 -2.6725161 0.53607184 1.1497102 
		-2.3516653 0.53607184 0.96477872 -2.6725161 0.53607184 0.96477872 -2.3516653 0.53607184 
		1.1497102 -4.3662186 0.53607184 0.96477872 -4.3662186 0.53607184 0.96477872 -1.8003426 
		0.53607184 1.1497102 -1.8003426 1.5029892 1.1497102 -3.4928021 1.5029892 1.1497102 
		-3.8136468 1.5029892 0.96477872 -3.4928021 1.5029892 0.96477872 -3.8136468 1.5029892 
		1.1497102 -2.6725161 1.5029892 1.1497102 -2.3516653 1.5029892 0.96477872 -2.3516653 
		1.5029892 0.96477872 -2.6725161 1.5029892 0.96477872 -4.3662186 1.5029892 1.1497102 
		-4.3662186 1.5029892 1.1497102 -1.8003426 1.5029892 0.96477872 -1.8003426;
	setAttr -s 118 ".vt[0:117]"  -0.5 -0.50000012 0.89113986 0.50000048 -0.50000012 0.89113998
		 -0.5 -0.50000012 -0.89114618 0.50000048 -0.50000012 -0.89114618 -0.5 0.31622291 0.89113998
		 0.50000048 0.31622291 0.89113986 -0.5 0.31622291 -0.89114618 0.50000048 0.31622291 -0.89114618
		 -0.47552991 0.37301302 0.89113998 -0.47552991 0.37301302 -0.89114618 -0.4045167 0.4242444 0.89113998
		 -0.4045167 0.4242444 -0.89114618 -0.29391122 0.46490169 0.89113998 -0.29391122 0.46490169 -0.89114618
		 -0.1545403 0.4910053 0.89113998 -0.1545403 0.4910053 -0.89114618 2.8610229e-06 0.5 0.89113998
		 2.8610229e-06 0.5 -0.89114618 0.15454602 0.4910053 0.89113998 0.15454602 0.4910053 -0.89114618
		 0.29391575 0.46490169 0.89113998 0.29391575 0.46490169 -0.89114618 0.40452051 0.4242444 0.89113998
		 0.40452051 0.4242444 -0.89114618 0.47553253 0.37301302 0.89113998 0.47553253 0.37301302 -0.89114618
		 -0.62147188 -0.55017412 0.50000191 0.62147331 -0.55017412 0.50000191 -0.62147188 -0.55017412 0.89113998
		 0.62147331 -0.55017412 0.89113998 -0.62147188 0.34795511 0.50000191 -0.62147188 0.34795511 0.89113998
		 0.62147331 0.34795511 0.50000191 0.62147331 0.34795511 0.89113998 -0.59105706 0.4104439 0.50000191
		 -0.59105706 0.4104439 0.89113998 -0.50279069 0.46681631 0.50000191 -0.50279069 0.46681631 0.89113998
		 -0.36531687 0.51155317 0.50000191 -0.36531687 0.51155317 0.89113998 -0.19208527 0.54027641 0.50000191
		 -0.19208527 0.54027641 0.89113998 3.3378601e-06 0.55017364 0.50000191 3.3378601e-06 0.55017364 0.89113998
		 0.19209051 0.54027641 0.50000191 0.19209051 0.54027641 0.89113998 0.36532044 0.51155317 0.50000191
		 0.36532044 0.51155317 0.89113998 0.50279427 0.46681631 0.50000191 0.50279427 0.46681631 0.89113998
		 0.59105968 0.4104439 0.50000191 0.59105968 0.4104439 0.89113998 -0.62147188 -0.55017412 -0.5
		 0.62147331 -0.55017412 -0.5 0.62147331 -0.55017412 -0.89114571 -0.62147188 -0.55017412 -0.89114571
		 -0.62147188 0.34795511 -0.5 -0.62147188 0.34795511 -0.89114571 0.62147331 0.34795511 -0.5
		 0.62147331 0.34795511 -0.89114571 -0.59105706 0.4104439 -0.5 -0.59105706 0.4104439 -0.89114571
		 -0.50279069 0.46681631 -0.5 -0.50279069 0.46681631 -0.89114571 -0.36531687 0.51155317 -0.5
		 -0.36531687 0.51155317 -0.89114571 -0.19208527 0.54027641 -0.5 -0.19208527 0.54027641 -0.89114571
		 3.3378601e-06 0.55017364 -0.5 3.3378601e-06 0.55017364 -0.89114571 0.19209051 0.54027641 -0.5
		 0.19209051 0.54027641 -0.89114571 0.36532044 0.51155317 -0.5 0.36532044 0.51155317 -0.89114571
		 0.50279427 0.46681631 -0.5 0.50279427 0.46681631 -0.89114571 0.59105968 0.4104439 -0.5
		 0.59105968 0.4104439 -0.89114571 -0.62147188 -0.61038029 0.50000191 0.62147331 -0.61038029 0.50000191
		 -0.62147188 -0.61038029 0.89113998 0.62147331 -0.61038029 0.89113998 -0.62147188 -0.61038029 -0.5
		 0.62147331 -0.61038029 -0.5 0.62147331 -0.61038029 -0.89114571 -0.62147188 -0.61038029 -0.89114571
		 -0.62147188 -0.55017412 1.56477451 0.62147331 -0.55017412 1.56477451 0.62147331 -0.61038029 1.56477451
		 -0.62147188 -0.61038029 1.56477451 -0.62147188 -0.55017412 -1.56325722 0.62147331 -0.55017412 -1.56325722
		 -0.62147188 -0.61038029 -1.56325722 0.62147331 -0.61038029 -1.56325722 -0.76852417 -0.55017412 0.50000191
		 -0.76852417 -0.55017412 0.89113998 -0.76852417 -0.61038029 0.89113998 -0.76852417 -0.61038029 0.50000191
		 -0.76852417 -0.55017412 -0.5 -0.76852417 -0.55017412 -0.89114571 -0.76852417 -0.61038029 -0.5
		 -0.76852417 -0.61038029 -0.89114571 -0.76852417 -0.55017412 1.56477451 -0.76852417 -0.61038029 1.56477451
		 -0.76852417 -0.61038029 -1.56325722 -0.76852417 -0.55017412 -1.56325722 0.76830685 -0.55017412 0.50000191
		 0.76830685 -0.55017412 0.89113998 0.76830685 -0.61038029 0.50000191 0.76830685 -0.61038029 0.89113998
		 0.76830685 -0.55017412 -0.5 0.76830685 -0.55017412 -0.89114571 0.76830685 -0.61038029 -0.89114571
		 0.76830685 -0.61038029 -0.5 0.76830685 -0.61038029 1.56477451 0.76830685 -0.55017412 1.56477451
		 0.76830685 -0.55017412 -1.56325722 0.76830685 -0.61038029 -1.56325722;
	setAttr -s 227 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 0 4 0 1 5 0 6 2 0 7 3 0 4 8 0 9 6 0 8 10 0
		 11 9 0 10 12 0 13 11 0 12 14 0 15 13 0 14 16 0 17 15 0 16 18 0 19 17 0 18 20 0 21 19 0
		 20 22 0 23 21 0 22 24 0 25 23 0 24 5 0 7 25 0 26 27 0 0 28 1 26 28 0 1 29 1 28 29 0
		 27 29 0 26 30 0 4 31 1 30 31 1 28 31 0 27 32 0 5 33 1 29 33 0 32 33 1 30 34 0 8 35 1
		 34 35 1 31 35 0 34 36 0 10 37 1 36 37 1 35 37 0 36 38 0 12 39 1 38 39 1 37 39 0 38 40 0
		 14 41 1 40 41 1 39 41 0 40 42 0 16 43 1 42 43 1 41 43 0 42 44 0 18 45 1 44 45 1 43 45 0
		 44 46 0 20 47 1 46 47 1 45 47 0 46 48 0 22 49 1 48 49 1 47 49 0 48 50 0 24 51 1 50 51 1
		 49 51 0 50 32 0 51 33 0 52 53 0 3 54 1 53 54 0 2 55 1 55 54 0 52 55 0 56 52 0 6 57 1
		 57 55 0 56 57 1 58 53 0 7 59 1 58 59 1 59 54 0 60 56 0 9 61 1 61 57 0 60 61 1 62 60 0
		 11 63 0 63 61 0 62 63 1 64 62 0 13 65 1 65 63 0 64 65 0 66 64 0 15 67 0 67 65 0 66 67 0
		 68 66 0 17 69 1 69 67 0 68 69 1 70 68 0 19 71 1 71 69 0 70 71 1 72 70 0 21 73 1 73 71 0
		 72 73 1 74 72 0 23 75 1 75 73 0 74 75 1 76 74 0 25 77 1 77 75 0 76 77 1 58 76 0 59 77 0
		 26 78 1 27 79 1 78 79 0 28 80 0 78 80 1 29 81 0 80 81 0 79 81 1 52 82 1 53 83 1 82 83 0
		 54 84 0 83 84 1 55 85 0 85 84 0 82 85 1 28 86 1 29 87 1 86 87 0 81 88 1 87 88 1 80 89 1
		 89 88 0 86 89 1 55 90 1 54 91 1 90 91 0 85 92 1 90 92 1 84 93 1 92 93 0 91 93 1 26 94 0
		 28 95 0 94 95 0 80 96 0;
	setAttr ".ed[166:226]" 95 96 0 78 97 0 97 96 0 94 97 0 52 98 0 55 99 0 98 99 0
		 82 100 0 98 100 0 85 101 0 100 101 0 99 101 0 86 102 0 95 102 0 89 103 0 102 103 0
		 96 103 0 92 104 0 101 104 0 90 105 0 105 104 0 99 105 0 27 106 0 29 107 0 106 107 0
		 79 108 0 106 108 0 81 109 0 108 109 0 107 109 0 53 110 0 54 111 0 110 111 0 84 112 0
		 111 112 0 83 113 0 113 112 0 110 113 0 88 114 0 109 114 0 87 115 0 115 114 0 107 115 0
		 91 116 0 111 116 0 93 117 0 116 117 0 112 117 0 0 2 0 1 3 0 4 6 1 5 7 0 8 9 1 10 11 1
		 12 13 1 14 15 1 16 17 1 18 19 1 20 21 1 22 23 1 24 25 1;
	setAttr -s 113 -ch 452 ".fc[0:112]" -type "polyFaces" 
		f 4 137 -137 -135 132
		mu 0 4 156 159 158 157
		f 4 145 144 -143 -141
		mu 0 4 160 163 162 161
		f 4 28 35 -35 -33
		mu 0 4 60 63 62 61
		f 4 39 -39 -32 36
		mu 0 4 64 67 66 65
		f 4 87 86 -84 -85
		mu 0 4 68 71 70 69
		f 4 80 -92 -91 88
		mu 0 4 72 75 74 73
		f 4 34 43 -43 -41
		mu 0 4 76 79 78 77
		f 4 95 94 -88 -93
		mu 0 4 80 83 82 81
		f 4 42 47 -47 -45
		mu 0 4 84 87 86 85
		f 4 99 98 -96 -97
		mu 0 4 88 91 90 89
		f 4 46 51 -51 -49
		mu 0 4 92 95 94 93
		f 4 103 102 -100 -101
		mu 0 4 96 99 98 97
		f 4 50 55 -55 -53
		mu 0 4 100 103 102 101
		f 4 107 106 -104 -105
		mu 0 4 104 107 106 105
		f 4 54 59 -59 -57
		mu 0 4 108 111 110 109
		f 4 111 110 -108 -109
		mu 0 4 112 115 114 113
		f 4 58 63 -63 -61
		mu 0 4 116 119 118 117
		f 4 115 114 -112 -113
		mu 0 4 120 123 122 121
		f 4 62 67 -67 -65
		mu 0 4 124 127 126 125
		f 4 119 118 -116 -117
		mu 0 4 128 131 130 129
		f 4 66 71 -71 -69
		mu 0 4 132 135 134 133
		f 4 123 122 -120 -121
		mu 0 4 136 139 138 137
		f 4 70 75 -75 -73
		mu 0 4 140 143 142 141
		f 4 127 126 -124 -125
		mu 0 4 144 147 146 145
		f 4 74 77 -40 -77
		mu 0 4 148 151 150 149
		f 4 90 129 -128 -129
		mu 0 4 152 155 154 153
		f 4 27 30 -30 -1
		mu 0 4 0 54 55 1
		f 4 33 -36 -28 2
		mu 0 4 2 58 59 3
		f 4 29 38 -38 -4
		mu 0 4 4 62 63 5
		f 4 41 -44 -34 6
		mu 0 4 6 66 67 7
		f 4 45 -48 -42 8
		mu 0 4 8 70 71 9
		f 4 49 -52 -46 10
		mu 0 4 10 74 75 11
		f 4 53 -56 -50 12
		mu 0 4 12 78 79 13
		f 4 57 -60 -54 14
		mu 0 4 14 82 83 15
		f 4 61 -64 -58 16
		mu 0 4 16 86 87 17
		f 4 65 -68 -62 18
		mu 0 4 18 90 91 19
		f 4 69 -72 -66 20
		mu 0 4 20 94 95 21
		f 4 73 -76 -70 22
		mu 0 4 22 98 99 23
		f 4 37 -78 -74 24
		mu 0 4 24 102 103 25
		f 4 79 -83 -82 1
		mu 0 4 26 106 107 27
		f 4 81 -87 -86 4
		mu 0 4 28 110 111 29
		f 4 89 91 -80 -6
		mu 0 4 30 114 115 31
		f 4 85 -95 -94 7
		mu 0 4 32 118 119 33
		f 4 93 -99 -98 9
		mu 0 4 34 122 123 35
		f 4 97 -103 -102 11
		mu 0 4 36 126 127 37
		f 4 101 -107 -106 13
		mu 0 4 38 130 131 39
		f 4 105 -111 -110 15
		mu 0 4 40 134 135 41
		f 4 109 -115 -114 17
		mu 0 4 42 138 139 43
		f 4 113 -119 -118 19
		mu 0 4 44 142 143 45
		f 4 117 -123 -122 21
		mu 0 4 46 146 147 47
		f 4 121 -127 -126 23
		mu 0 4 48 150 151 49
		f 4 125 -130 -90 25
		mu 0 4 50 154 155 51
		f 4 131 -133 -131 26
		mu 0 4 52 156 157 53
		f 4 169 168 -167 -165
		mu 0 4 172 175 174 173
		f 4 153 152 -151 -149
		mu 0 4 164 167 166 165
		f 4 195 -195 -193 190
		mu 0 4 188 191 190 189
		f 4 138 140 -140 -79
		mu 0 4 56 160 161 57
		f 4 203 202 -201 -199
		mu 0 4 192 195 194 193
		f 4 161 -161 -159 156
		mu 0 4 168 171 170 169
		f 4 177 -177 -175 172
		mu 0 4 176 179 178 177
		f 4 146 148 -148 -31
		mu 0 4 54 164 165 55
		f 4 208 207 -206 -196
		mu 0 4 196 199 198 197
		f 4 149 -153 -152 136
		mu 0 4 159 166 167 158
		f 4 182 -182 -180 166
		mu 0 4 180 183 182 181
		f 4 155 -157 -155 82
		mu 0 4 58 168 169 59
		f 4 187 186 -185 -178
		mu 0 4 184 187 186 185
		f 4 157 160 -160 -145
		mu 0 4 163 170 171 162
		f 4 213 -213 -211 200
		mu 0 4 200 203 202 201
		f 4 162 164 -164 -29
		mu 0 4 53 172 173 54
		f 4 133 165 -167 -164
		mu 0 4 54 158 174 173
		f 4 165 -169 -168 134
		mu 0 4 158 174 175 157
		f 4 167 -170 -163 130
		mu 0 4 157 175 172 53
		f 4 171 -173 -171 83
		mu 0 4 59 176 177 56
		f 4 170 174 -174 -139
		mu 0 4 56 177 178 160
		f 4 173 176 -176 -146
		mu 0 4 160 178 179 163
		f 4 -144 171 177 -176
		mu 0 4 163 59 176 179
		f 4 -134 163 166 -166
		mu 0 4 158 54 181 180
		f 4 163 179 -179 -147
		mu 0 4 54 181 182 164
		f 4 178 181 -181 -154
		mu 0 4 164 182 183 167
		f 4 180 -183 -166 151
		mu 0 4 167 183 180 158
		f 4 143 175 -178 -172
		mu 0 4 59 163 185 184
		f 4 175 184 -184 -158
		mu 0 4 163 185 186 170
		f 4 183 -187 -186 158
		mu 0 4 170 186 187 169
		f 4 185 -188 -172 154
		mu 0 4 169 187 184 59
		f 4 189 -191 -189 31
		mu 0 4 55 188 189 52
		f 4 188 192 -192 -132
		mu 0 4 52 189 190 156
		f 4 191 194 -194 -138
		mu 0 4 156 190 191 159
		f 4 -136 189 195 -194
		mu 0 4 159 55 188 191
		f 4 196 198 -198 -81
		mu 0 4 57 192 193 58
		f 4 141 199 -201 -198
		mu 0 4 58 162 194 193
		f 4 199 -203 -202 142
		mu 0 4 162 194 195 161
		f 4 201 -204 -197 139
		mu 0 4 161 195 192 57
		f 4 135 193 -196 -190
		mu 0 4 55 159 197 196
		f 4 193 205 -205 -150
		mu 0 4 159 197 198 166
		f 4 204 -208 -207 150
		mu 0 4 166 198 199 165
		f 4 206 -209 -190 147
		mu 0 4 165 199 196 55
		f 4 -142 197 200 -200
		mu 0 4 162 58 201 200
		f 4 197 210 -210 -156
		mu 0 4 58 201 202 168
		f 4 209 212 -212 -162
		mu 0 4 168 202 203 171
		f 4 211 -214 -200 159
		mu 0 4 171 203 200 162
		f 4 0 215 -2 -215
		mu 0 4 204 205 206 207
		f 4 214 -5 -217 -3
		mu 0 4 208 211 210 209
		f 4 3 217 5 -216
		mu 0 4 212 213 214 215
		f 4 216 -8 -219 -7
		mu 0 4 216 219 218 217
		f 4 218 -10 -220 -9
		mu 0 4 220 223 222 221
		f 4 219 -12 -221 -11
		mu 0 4 224 227 226 225
		f 4 220 -14 -222 -13
		mu 0 4 228 231 230 229
		f 4 221 -16 -223 -15
		mu 0 4 232 235 234 233
		f 4 222 -18 -224 -17
		mu 0 4 236 239 238 237
		f 4 223 -20 -225 -19
		mu 0 4 240 243 242 241
		f 4 224 -22 -226 -21
		mu 0 4 244 247 246 245
		f 4 225 -24 -227 -23
		mu 0 4 248 251 250 249
		f 4 226 -26 -218 -25
		mu 0 4 252 255 254 253;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WindowTruss01" -p "Window";
	rename -uid "D9916D6F-4530-EE8C-4F7A-288CA5D28DB0";
	setAttr ".rp" -type "double3" 0.21937335910916156 3.9360333416235802 -3.0239428634102632 ;
	setAttr ".sp" -type "double3" 0.21937335910916156 3.9360333416235802 -3.0239428634102632 ;
createNode mesh -n "WindowTruss01Shape" -p "WindowTruss01";
	rename -uid "00C10EB9-4657-0872-8524-2E85B92601C3";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.71937323 4.2582769 -3.5239429 
		1.3613405 4.2582769 -3.5239429 0.71937323 3.4360335 -3.5239429 1.3613405 3.4360335 
		-3.5239429 0.71937323 3.4360335 -2.6371567 1.3613405 3.4360335 -2.6371567 0.71937323 
		4.2582769 -2.6371567 1.3613405 4.2582769 -2.6371567;
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
createNode transform -n "WindowTruss02" -p "Window";
	rename -uid "3420662D-4F32-C2E2-1323-1DB73D75CF91";
	setAttr ".rp" -type "double3" 0.21937335910916156 3.1360333416235808 -3.0239428634102632 ;
	setAttr ".sp" -type "double3" 0.21937335910916156 3.1360333416235808 -3.0239428634102632 ;
createNode mesh -n "WindowTrussShape2" -p "WindowTruss02";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.71937323 3.458277 -3.5239429 
		1.3613405 3.458277 -3.5239429 0.71937323 2.6360333 -3.5239429 1.3613405 2.6360333 
		-3.5239429 0.71937323 2.6360333 -2.6371567 1.3613405 2.6360333 -2.6371567 0.71937323 
		3.458277 -2.6371567 1.3613405 3.458277 -2.6371567;
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
createNode transform -n "WindowTruss03" -p "Window";
	rename -uid "DD3DD093-44A3-5D05-C1A2-5298F1515E38";
	setAttr ".rp" -type "double3" 0.21937335910916156 2.3360333416235814 -3.0239428634102641 ;
	setAttr ".sp" -type "double3" 0.21937335910916156 2.3360333416235814 -3.0239428634102636 ;
createNode mesh -n "WindowTrussShape3" -p "WindowTruss03";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.71937323 2.658277 -3.5239429 
		1.3613405 2.658277 -3.5239429 0.71937323 1.8360333 -3.5239429 1.3613405 1.8360333 
		-3.5239429 0.71937323 1.8360333 -2.6371567 1.3613405 1.8360333 -2.6371567 0.71937323 
		2.658277 -2.6371567 1.3613405 2.658277 -2.6371567;
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
createNode transform -n "WindowTruss04" -p "Window";
	rename -uid "9DAB864E-441A-156B-A026-43916DB234B9";
	setAttr ".rp" -type "double3" 0.21937335910916156 1.5360333416235814 -3.0239428634102645 ;
	setAttr ".sp" -type "double3" 0.21937335910916156 1.5360333416235814 -3.0239428634102641 ;
createNode mesh -n "WindowTrussShape4" -p "WindowTruss04";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.71937323 1.858277 -3.5239429 
		1.3613405 1.858277 -3.5239429 0.71937323 1.0360334 -3.5239429 1.3613405 1.0360334 
		-3.5239429 0.71937323 1.0360334 -2.6371567 1.3613405 1.0360334 -2.6371567 0.71937323 
		1.858277 -2.6371567 1.3613405 1.858277 -2.6371567;
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
createNode transform -n "Window05" -p "Window";
	rename -uid "5C4373FD-40B5-183D-1C3D-DB98FB7A494C";
	setAttr ".rp" -type "double3" 1.1152641056899479 4.8754631155749308 -3.0239428634102632 ;
	setAttr ".sp" -type "double3" 1.1152641056899479 4.8754631155749308 -3.0239428634102632 ;
createNode mesh -n "WindowShape5" -p "Window05";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.4375077 5.375463 -3.5239429 
		0.43750823 1.2307814 -3.5239429 1.6152642 4.375463 -3.5239429 0.61526453 0.23078144 
		-3.5239429 1.6152642 4.375463 -2.6371567 0.61526453 0.23078144 -2.637157 1.4375077 
		5.375463 -2.6371567 0.43750823 1.2307814 -2.637157;
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
createNode transform -n "Bed";
	rename -uid "8CE4AD26-4020-CB5C-50A4-A0A60677A394";
	setAttr ".rp" -type "double3" -0.12568227352966965 0 0.10411393188296936 ;
	setAttr ".sp" -type "double3" -0.12568227352966965 0 0.10411393188296936 ;
createNode transform -n "BedLeg01" -p "Bed";
	rename -uid "00508049-4A75-D6B1-8C75-D7BEC7DA80FD";
	setAttr ".rp" -type "double3" -0.69527245912356872 0.10152651369571686 1.8705210733705331 ;
	setAttr ".sp" -type "double3" -0.69527245912356872 0.10152651369571686 1.8705210733705331 ;
createNode mesh -n "BedLegShape1" -p "BedLeg01";
	rename -uid "5A23E5DC-406A-7AC1-4299-758FC22DADF7";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.6275903 0.60152656 1.3705211 
		-1.1952724 0.60152656 1.3705211 -0.6275903 2.5534165 1.3705211 -1.1952724 2.5534165 
		1.3705211 -0.6275903 2.5534165 1.9435014 -1.1952724 2.5534165 1.9435014 -0.6275903 
		0.60152656 1.9435014 -1.1952724 0.60152656 1.9435014;
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
createNode transform -n "BedLeg02" -p "Bed";
	rename -uid "84ADF564-4DFB-2EF8-EF89-4492029EF025";
	setAttr ".rp" -type "double3" -2.6510372642069591 2.0046108156264513 1.6785396965923625 ;
	setAttr ".sp" -type "double3" -2.6510372642069591 2.0046108156264513 1.6785396965923625 ;
createNode mesh -n "BedLegShape2" -p "BedLeg02";
	rename -uid "90A5D4B5-4778-C020-87FC-18AEFF36DF05";
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
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.3671961 0.60152644 1.3920496 
		-2.9348783 0.60152644 1.3920496 -2.3671961 2.553416 1.3920496 -2.9348783 2.553416 
		1.3920496 -2.3671961 2.553416 1.9650298 -2.9348783 2.553416 1.9650298 -2.3671961 
		0.60152644 1.9650298 -2.9348783 0.60152644 1.9650298;
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
createNode transform -n "BedFrame" -p "Bed";
	rename -uid "CB4BD58A-4B79-C71C-1C8B-DEA9016CB890";
	setAttr ".rp" -type "double3" -1.7807735905480229 3.2195760946643062 -0.26854977507010686 ;
	setAttr ".sp" -type "double3" -1.7807735905480229 3.2195760946643062 -0.26854977507010686 ;
createNode mesh -n "BedFrameShape" -p "BedFrame";
	rename -uid "89AA8219-4026-C26E-F201-D7B349F22C24";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.4468961 3.5534163 1.5199937 
		-1.1146511 3.5534163 1.5199937 -2.4468961 2.8857358 1.5199937 -1.1146511 2.8857358 
		1.5199937 -2.4468961 2.8857358 -2.0570931 -1.1146511 2.8857358 -2.0570931 -2.4468961 
		3.5534163 -2.0570931 -1.1146511 3.5534163 -2.0570931;
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
createNode transform -n "BedPost01" -p "Bed";
	rename -uid "5A2A12E7-4D54-4FED-5D25-E784584DE9D0";
	setAttr ".rp" -type "double3" -2.9369233996187107 0.10152661800384566 -2.557093151661801 ;
	setAttr ".sp" -type "double3" -2.9369233996187107 0.10152661800384566 -2.557093151661801 ;
createNode mesh -n "BedPostShape1" -p "BedPost01";
	rename -uid "58B211F5-4A72-43F6-EDAB-CDB243ADF7A4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1:5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.625 0.5 0.375 0.75
		 0.3542676 1.8626451e-09 0.38749886 0.0014761286 0.37500012 0.27073237 0.38749889
		 0.24852784 0.6457324 0.24999999 0.61250138 0.001476109 0.61250138 0.24852784 0.625
		 0.27073252 0.37500012 0.5 0.625 0.75 0.62500006 0.97926766 0.37500012 0.9792676 0.6457324
		 1.8626451e-09 0.875 0 0.875 0.24999999 0.125 0 0.3542676 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.436924 3.9049642 -2.3475876 
		-2.9799564 3.9876959 -2.3475876 -2.436924 0.61468887 -2.3475876 -2.9799564 0.61468887 
		-2.3475876 -2.4640727 0.63411582 -3.0570931 -2.436924 0.61468887 -2.9982541 -2.9528074 
		0.63411582 -3.0570931 -2.9799564 0.61468887 -2.9982541 -2.4640727 3.8892381 -3.0570931 
		-2.436924 3.9049642 -2.9982541 -2.9528074 3.9636977 -3.0570931 -2.9799564 3.9876959 
		-2.9982541;
	setAttr -s 12 ".vt[0:11]"  -0.49999905 0.27668208 -0.5 0.50000095 0.29654217 -0.5
		 -0.49999905 -0.51316214 -0.5 0.50000095 -0.51316214 -0.5 -0.4500041 -0.50849861 0.5
		 -0.49999905 -0.51316214 0.41707039 0.45000601 -0.50849861 0.5 0.50000095 -0.51316214 0.41707039
		 -0.4500041 0.27290696 0.5 -0.49999905 0.27668208 0.41707039 0.45000601 0.29078126 0.5
		 0.50000095 0.29654217 0.41707039;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 0 2 0 1 3 0 4 5 0 5 7 0 7 6 0
		 6 4 0 4 8 0 8 9 0 9 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 11 1 0 0 9 0 3 7 0 5 2 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 10 0 11 1
		f 4 4 5 6 7
		mu 0 4 3 2 14 7
		f 4 -5 8 9 10
		mu 0 4 2 3 5 4
		f 4 -7 11 12 13
		mu 0 4 7 14 6 8
		f 4 -10 14 -13 15
		mu 0 4 4 5 8 6
		f 4 -8 -14 -15 -9
		mu 0 4 3 7 8 5
		f 4 -16 16 -1 17
		mu 0 4 4 9 0 10
		f 4 1 18 -6 19
		mu 0 4 1 11 12 13
		f 4 -19 -4 -17 -12
		mu 0 4 14 15 16 6
		f 4 -20 -11 -18 2
		mu 0 4 17 2 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BedPost02" -p "Bed";
	rename -uid "45A8D99F-474E-FBCD-FC6C-4BBE5345B319";
	setAttr ".rp" -type "double3" -2.4722356550403983 0.10152661800384566 -2.557093151661801 ;
	setAttr ".sp" -type "double3" -2.4722356550403983 0.10152661800384566 -2.557093151661801 ;
createNode mesh -n "BedPostShape2" -p "BedPost02";
	rename -uid "F21C8D28-4A43-8818-F895-F0AD1FCA94BF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1:5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.625 0.5 0.375 0.75
		 0.3542676 -3.7252903e-09 0.38749886 0.0014478909 0.37500012 0.2707324 0.38749883
		 0.24856079 0.6457324 0.25 0.61250132 0.0014478937 0.61250132 0.24856077 0.625 0.27073252
		 0.37500012 0.5 0.625 0.75 0.62500006 0.97926766 0.37500012 0.9792676 0.6457324 1.4901161e-08
		 0.875 0 0.875 0.25 0.125 0 0.3542676 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.9722362 3.9690261 -2.3475876 
		-2.5152686 3.9998538 -2.3475876 -1.9722362 0.61468887 -2.3475876 -2.5152686 0.61468887 
		-2.3475876 -1.999385 0.63411582 -3.0570931 -1.9722362 0.61468887 -2.9982541 -2.4881198 
		0.63411582 -3.0570931 -2.5152686 0.61468887 -2.9982541 -1.999385 3.9510794 -3.0570931 
		-1.9722362 3.9690261 -2.9982541 -2.4881198 3.9788246 -3.0570931 -2.5152686 3.9998538 
		-2.9982541;
	setAttr -s 12 ".vt[0:11]"  -0.49999905 0.29206038 -0.5 0.50000095 0.29946071 -0.5
		 -0.49999905 -0.51316214 -0.5 0.50000095 -0.51316214 -0.5 -0.4500041 -0.50849861 0.5
		 -0.49999905 -0.51316214 0.41707039 0.45000601 -0.50849861 0.5 0.50000095 -0.51316214 0.41707039
		 -0.4500041 0.28775221 0.5 -0.49999905 0.29206038 0.41707039 0.45000601 0.29441255 0.5
		 0.50000095 0.29946071 0.41707039;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 0 2 0 1 3 0 4 5 0 5 7 0 7 6 0
		 6 4 0 4 8 0 8 9 0 9 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 11 1 0 0 9 0 3 7 0 5 2 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 10 0 11 1
		f 4 4 5 6 7
		mu 0 4 3 2 14 7
		f 4 -5 8 9 10
		mu 0 4 2 3 5 4
		f 4 -7 11 12 13
		mu 0 4 7 14 6 8
		f 4 -10 14 -13 15
		mu 0 4 4 5 8 6
		f 4 -8 -14 -15 -9
		mu 0 4 3 7 8 5
		f 4 -16 16 -1 17
		mu 0 4 4 9 0 10
		f 4 1 18 -6 19
		mu 0 4 1 11 12 13
		f 4 -19 -4 -17 -12
		mu 0 4 14 15 16 6
		f 4 -20 -11 -18 2
		mu 0 4 17 2 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BedPost03" -p "Bed";
	rename -uid "0459D345-47FD-D403-B415-23A3427C3B4C";
	setAttr ".rp" -type "double3" -2.0075479104620859 0.1015266180038461 -2.557093151661801 ;
	setAttr ".sp" -type "double3" -2.0075479104620859 0.1015266180038461 -2.557093151661801 ;
createNode mesh -n "BedPostShape3" -p "BedPost03";
	rename -uid "7CE9B2A0-4995-285C-706A-A0A4A3614CA9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1:5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.625 0.5 0.375 0.75
		 0.3542676 -7.4505806e-09 0.3874988 0.0014291946 0.37500006 0.2707324 0.3874988 0.24857077
		 0.6457324 0.25 0.61250126 0.0014292104 0.61250126 0.24857077 0.625 0.2707324 0.37500006
		 0.5 0.625 0.75 0.625 0.9792676 0.37500006 0.9792676 0.6457324 1.8626451e-09 0.875
		 0 0.875 0.25 0.125 0 0.3542676 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.507548 4.0128889 -2.3475876 
		-2.0505803 4.0128889 -2.3475876 -1.507548 0.61468887 -2.3475876 -2.0505803 0.61468887 
		-2.3475876 -1.5346969 0.63411582 -3.0570931 -1.507548 0.61468887 -2.9982541 -2.0234315 
		0.63411582 -3.0570931 -2.0505803 0.61468887 -2.9982541 -1.5346969 3.9934616 -3.0570931 
		-1.507548 4.0128889 -2.9982541 -2.0234315 3.9934616 -3.0570931 -2.0505803 4.0128889 
		-2.9982541;
	setAttr -s 12 ".vt[0:11]"  -0.49999976 0.30258983 -0.5 0.5 0.30258983 -0.5
		 -0.49999976 -0.51316214 -0.5 0.5 -0.51316214 -0.5 -0.45000482 -0.50849861 0.5 -0.49999976 -0.51316214 0.41707039
		 0.45000505 -0.50849861 0.5 0.5 -0.51316214 0.41707039 -0.45000482 0.29792625 0.5
		 -0.49999976 0.30258983 0.41707039 0.45000505 0.29792625 0.5 0.5 0.30258983 0.41707039;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 0 2 0 1 3 0 4 5 0 5 7 0 7 6 0
		 6 4 0 4 8 0 8 9 0 9 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 11 1 0 0 9 0 3 7 0 5 2 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 10 0 11 1
		f 4 4 5 6 7
		mu 0 4 3 2 14 7
		f 4 -5 8 9 10
		mu 0 4 2 3 5 4
		f 4 -7 11 12 13
		mu 0 4 7 14 6 8
		f 4 -10 14 -13 15
		mu 0 4 4 5 8 6
		f 4 -8 -14 -15 -9
		mu 0 4 3 7 8 5
		f 4 -16 16 -1 17
		mu 0 4 4 9 0 10
		f 4 1 18 -6 19
		mu 0 4 1 11 12 13
		f 4 -19 -4 -17 -12
		mu 0 4 14 15 16 6
		f 4 -20 -11 -18 2
		mu 0 4 17 2 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BedPost04" -p "Bed";
	rename -uid "6D846DBE-4595-8EC9-241A-708DDB5B88B4";
	setAttr ".rp" -type "double3" -1.5428601658837739 0.10152661800384655 -2.557093151661801 ;
	setAttr ".sp" -type "double3" -1.5428601658837739 0.10152661800384655 -2.557093151661801 ;
createNode mesh -n "BedPostShape4" -p "BedPost04";
	rename -uid "551FCBAD-4F1B-59C6-1A55-A3AAD9A923D7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1:5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.625 0.5 0.375 0.75
		 0.35426766 -7.4505806e-09 0.38749874 0.0014431803 0.375 0.2707324 0.38749874 0.24856247
		 0.6457324 0.25 0.61250126 0.0014431702 0.61250126 0.24856248 0.625 0.2707324 0.375
		 0.5 0.625 0.75 0.625 0.9792676 0.375 0.9792676 0.6457324 -3.7252903e-09 0.875 0 0.875
		 0.25 0.125 0 0.3542676 0.24999999 0.125 0.24999999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.0428602 3.9962299 -2.3475876 
		-1.5858926 3.9799955 -2.3475876 -1.0428602 0.61468887 -2.3475876 -1.5858926 0.61468887 
		-2.3475876 -1.070009 0.63411582 -3.0570931 -1.0428602 0.61468887 -2.9982541 -1.5587437 
		0.63411582 -3.0570931 -1.5858926 0.61468887 -2.9982541 -1.070009 3.9759743 -3.0570931 
		-1.0428602 3.9962299 -2.9982541 -1.5587437 3.9613631 -3.0570931 -1.5858926 3.9799955 
		-2.9982541;
	setAttr -s 12 ".vt[0:11]"  -0.5 0.29859078 -0.5 0.5 0.29469365 -0.5
		 -0.5 -0.51316214 -0.5 0.5 -0.51316214 -0.5 -0.45000505 -0.50849861 0.5 -0.5 -0.51316214 0.41707039
		 0.45000505 -0.50849861 0.5 0.5 -0.51316214 0.41707039 -0.45000505 0.29372835 0.5
		 -0.5 0.29859078 0.41707039 0.45000505 0.29022086 0.5 0.5 0.29469365 0.41707039;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 0 2 0 1 3 0 4 5 0 5 7 0 7 6 0
		 6 4 0 4 8 0 8 9 0 9 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 11 1 0 0 9 0 3 7 0 5 2 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 10 0 11 1
		f 4 4 5 6 7
		mu 0 4 3 2 14 7
		f 4 -5 8 9 10
		mu 0 4 2 3 5 4
		f 4 -7 11 12 13
		mu 0 4 7 14 6 8
		f 4 -10 14 -13 15
		mu 0 4 4 5 8 6
		f 4 -8 -14 -15 -9
		mu 0 4 3 7 8 5
		f 4 -16 16 -1 17
		mu 0 4 4 9 0 10
		f 4 1 18 -6 19
		mu 0 4 1 11 12 13
		f 4 -19 -4 -17 -12
		mu 0 4 14 15 16 6
		f 4 -20 -11 -18 2
		mu 0 4 17 2 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BedPost05" -p "Bed";
	rename -uid "C10B148A-4242-E4EF-56E5-00BD97A0ABF9";
	setAttr ".rp" -type "double3" -1.0781724213054615 0.10152661800384699 -2.557093151661801 ;
	setAttr ".sp" -type "double3" -1.0781724213054615 0.10152661800384699 -2.557093151661801 ;
createNode mesh -n "BedPostShape5" -p "BedPost05";
	rename -uid "AC101875-4FB2-2E97-E8E8-0A88D9194F8A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1:5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.625 0.5 0.375 0.75
		 0.3542676 0 0.3874988 0.0014937609 0.37500006 0.2707324 0.3874988 0.24849278 0.6457324
		 0.25 0.61250126 0.0014937577 0.61250126 0.24849278 0.625 0.2707324 0.37500006 0.5
		 0.625 0.75 0.625 0.9792676 0.37500006 0.9792676 0.6457324 1.8626451e-09 0.875 0 0.875
		 0.25 0.125 0 0.3542676 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.57817262 3.985271 -2.3475876 
		-1.1212049 3.8660419 -2.3475876 -0.57817262 0.61468887 -2.3475876 -1.1212049 0.61468887 
		-2.3475876 -0.60532153 0.63411582 -3.0570931 -0.57817262 0.61468887 -2.9982541 -1.094056 
		0.63411582 -3.0570931 -1.1212049 0.61468887 -2.9982541 -0.60532153 3.9589891 -3.0570931 
		-0.57817262 3.985271 -2.9982541 -1.094056 3.8516815 -3.0570931 -1.1212049 3.8660419 
		-2.9982541;
	setAttr -s 12 ".vt[0:11]"  -0.49999952 0.29596001 -0.5 0.5 0.26733857 -0.5
		 -0.49999952 -0.51316214 -0.5 0.5 -0.51316214 -0.5 -0.45000458 -0.50849861 0.5 -0.49999952 -0.51316214 0.41707039
		 0.45000505 -0.50849861 0.5 0.5 -0.51316214 0.41707039 -0.45000458 0.28965098 0.5
		 -0.49999952 0.29596001 0.41707039 0.45000505 0.26389134 0.5 0.5 0.26733857 0.41707039;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 0 2 0 1 3 0 4 5 0 5 7 0 7 6 0
		 6 4 0 4 8 0 8 9 0 9 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 11 1 0 0 9 0 3 7 0 5 2 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 10 0 11 1
		f 4 4 5 6 7
		mu 0 4 3 2 14 7
		f 4 -5 8 9 10
		mu 0 4 2 3 5 4
		f 4 -7 11 12 13
		mu 0 4 7 14 6 8
		f 4 -10 14 -13 15
		mu 0 4 4 5 8 6
		f 4 -8 -14 -15 -9
		mu 0 4 3 7 8 5
		f 4 -16 16 -1 17
		mu 0 4 4 9 0 10
		f 4 1 18 -6 19
		mu 0 4 1 11 12 13
		f 4 -19 -4 -17 -12
		mu 0 4 14 15 16 6
		f 4 -20 -11 -18 2
		mu 0 4 17 2 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Support01" -p "Bed";
	rename -uid "C0A6E088-41AA-49F5-B2DE-7FA6125903ED";
	setAttr ".rp" -type "double3" -0.77625347178079263 3.05341625213623 0.19374919059291207 ;
	setAttr ".sp" -type "double3" -0.77625347178079263 3.05341625213623 0.19374919059291196 ;
createNode mesh -n "SupportShape1" -p "Support01";
	rename -uid "9A0816F9-44AB-AE38-CB03-CF8EA5182B9A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.53013629 3.228081 0.94350123 
		-1.2762535 3.228081 0.94350123 -0.53013629 2.5534163 0.24749546 -1.2762535 2.5534163 
		0.26255119 -0.53013629 2.5534163 0.69374925 -1.2762535 2.5534163 0.69374925 -0.53013629 
		2.9249032 1.9435012 -1.2762535 2.9249032 1.9435012;
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
createNode transform -n "Support02" -p "Bed";
	rename -uid "1B4BD07B-4C55-90E4-414B-6D98D561340D";
	setAttr ".rp" -type "double3" -0.77638093702695699 2.4350771903991704 -2.5570931516618001 ;
	setAttr ".sp" -type "double3" -0.77638093702695687 2.4350771903991699 -2.5570931516618005 ;
createNode mesh -n "SupportShape2" -p "Support02";
	rename -uid "9C6A01B7-4F4F-2562-ED1D-28B2D0DF1034";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.27628103 3.2382421 -3.0538998 
		-1.5301638 3.2383351 -3.0538998 -0.27617568 2.5579121 -2.3544962 -1.5300584 2.5581276 
		-2.3695514 -0.27617717 2.5534163 -0.80077368 -1.5300598 2.5535092 -0.80077368 -0.2763809 
		2.9350772 -2.0570931 -1.5302637 2.9351702 -2.0570931;
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
createNode transform -n "Mattress" -p "Bed";
	rename -uid "2B0BE7E3-4E9D-B68C-A164-B2ADDAC9879D";
	setAttr ".rp" -type "double3" -1.7807735905480229 3.5932838350852809 -0.26789537281885034 ;
	setAttr ".sp" -type "double3" -1.7807735905480229 3.5932838350852809 -0.26789537281885034 ;
createNode mesh -n "MattressShape" -p "Mattress";
	rename -uid "5B57A53F-43CB-DC5C-DDAB-32B82F08D8EB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 12 "f[34:37]" "f[40:41]" "f[46:47]" "f[50]" "f[102:103]" "f[110:111]" "f[116:118]" "f[124]" "f[131:133]" "f[137]" "f[143:145]" "f[149]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 13 "f[0:1]" "f[6:7]" "f[14:15]" "f[44:45]" "f[51]" "f[56:58]" "f[64]" "f[66:67]" "f[74:75]" "f[126:127]" "f[134:135]" "f[140:142]" "f[148]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 13 "f[4:5]" "f[10:11]" "f[16:17]" "f[26:27]" "f[48]" "f[59:61]" "f[65]" "f[71:73]" "f[77]" "f[83:85]" "f[89]" "f[95:97]" "f[101]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 12 "f[2:3]" "f[8:9]" "f[20:21]" "f[32:33]" "f[53:55]" "f[62:63]" "f[80:82]" "f[88]" "f[104:106]" "f[112]" "f[128:130]" "f[136]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 13 "f[12:13]" "f[18:19]" "f[30:31]" "f[42:43]" "f[52]" "f[68:70]" "f[76]" "f[90:91]" "f[98:99]" "f[114:115]" "f[122:123]" "f[138:139]" "f[146:147]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 12 "f[22:25]" "f[28:29]" "f[38:39]" "f[49]" "f[78:79]" "f[86:87]" "f[92:94]" "f[100]" "f[107:109]" "f[113]" "f[119:121]" "f[125]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 186 ".uvst[0].uvsp[0:185]" -type "float2" 0.38384736 0.99470448
		 0.38384736 0.062493801 0.61615264 0.99470448 0.63029552 0.062493801 0.38384736 0.1875062
		 0.61615264 0.1875062 0.63029552 0.1875062 0.13029553 0.062493801 0.38384736 0.49470448
		 0.61615264 0.49470448 0.86970448 0.1875062 0.86970448 0.062493801 0.61615264 0.75529552
		 0.38384736 0.6875062 0.61615264 0.6875062 0.61615264 0.062493801 0.38384736 0.25529552
		 0.61615264 0.25529552 0.38384736 0.5624938 0.61615264 0.5624938 0.38384736 0.75529552
		 0.36970448 0.062493801 0.36970448 0.1875062 0.13029553 0.1875062 0.36884898 0.027325535
		 0.375 0.99133646 0.36633646 0 0.38143566 0.99360102 0.3841992 0.99593931 0.38483909
		 0 0.38483909 1 0.38352299 0.027602354 0.37953874 0.062416442 0.37563992 0.062403224
		 0.37239507 0.062440678 0.61854929 0.9935838 0.63366354 0 0.625 0.99133646 0.63115621
		 0.027339622 0.6276052 0.06244139 0.62436032 0.062403966 0.6204614 0.062416844 0.61646736
		 0.027576353 0.61516088 1 0.61516088 0 0.6158163 0.99595708 0.38140628 0.25620914
		 0.36633626 0.25 0.375 0.25866374 0.36880371 0.22234984 0.3723928 0.18754302 0.37563759
		 0.18757984 0.37953746 0.18757431 0.38277414 0.21903488 0.38303718 0.24201828 0.38372505
		 0.25199941 0.63120127 0.22242157 0.625 0.25866374 0.63366371 0.25 0.61861503 0.25625613
		 0.61626691 0.25201073 0.61701083 0.24222331 0.61724436 0.21902333 0.62046266 0.18757635
		 0.62436271 0.18758358 0.62760746 0.18754661 0.3792083 0.55372185 0.125 0.20423719
		 0.375 0.54576284 0.12789194 0.19506632 0.13119447 0.22559045 0.375 0.49133626 0.13366373
		 0.25 0.381385 0.49372885 0.38373351 0.49778065 0.38299081 0.50698352 0.38276175 0.52802026
		 0.8721081 0.19506633 0.625 0.54576284 0.875 0.20423719 0.62079185 0.55372107 0.61722434
		 0.52801681 0.61696237 0.50708956 0.61627483 0.49777195 0.61859369 0.49376735 0.86633629
		 0.25 0.625 0.49133626 0.86880553 0.22559088 0.38140634 0.75623238 0.13366352 0 0.375
		 0.75866354 0.13119468 0.024407709 0.12789194 0.05493382 0.375 0.70423687 0.125 0.045763113
		 0.37920815 0.69627881 0.38277566 0.72198308 0.38303763 0.74291039 0.38372517 0.75222802
		 0.86880535 0.024407798 0.625 0.75866354 0.86633646 0 0.61861491 0.75627083 0.61626649
		 0.75221932 0.61700922 0.74301642 0.61723828 0.72197962 0.62079167 0.69627798 0.875
		 0.045763113 0.625 0.70423687 0.8721081 0.054933812 0.37187123 0.029445909 0.375 0.99379432
		 0.36879432 0 0.38166404 0.99474472 0.38160205 0 0.38160205 1 0.37909374 0.02925933
		 0.37519383 0.034852456 0.375 1 0.375 0 0.61821133 0.99460179 0.63120568 0 0.625 0.99379432
		 0.62813944 0.029474964 0.62482685 0.034909159 0.62094122 0.029354887 0.61839795 1
		 0.61839795 0 0.625 0 0.625 1 0.38142106 0.2536853 0.36879411 0.25 0.375 0.25620589
		 0.37177792 0.2198841 0.37501198 0.2138412 0.37878728 0.21853904 0.37939566 0.24805026
		 0.375 0.25 0.6282323 0.22003216 0.625 0.25620589 0.63120586 0.25 0.61875522 0.25407365
		 0.62047559 0.24735841 0.62124628 0.21902539 0.62500787 0.21412979 0.625 0.25 0.37876776
		 0.52426517 0.125 0.22745678 0.375 0.52254325 0.12821835 0.22660109 0.375 0.49379411
		 0.13120587 0.25 0.38124502 0.49580237 0.37952507 0.50233638 0.125 0.25 0.375 0.5
		 0.87178165 0.22660136 0.625 0.52254325 0.875 0.22745678 0.62120897 0.52438134 0.6206044
		 0.50199395 0.61857885 0.49612045 0.86879414 0.25 0.625 0.49379411 0.625 0.5 0.875
		 0.25 0.38142118 0.75387937 0.13120566 0 0.375 0.75620568 0.1282185 0.023397973 0.375
		 0.72745645 0.125 0.022543525 0.37879103 0.72561842 0.3793956 0.74800587 0.125 0 0.375
		 0.75 0.87178153 0.02339801 0.625 0.75620568 0.86879432 0 0.61875492 0.75419742 0.62047493
		 0.7476635 0.62123221 0.72573459 0.875 0.022543523 0.625 0.72745645 0.625 0.75 0.875
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 152 ".pt[0:151]" -type "float3"  -2.4091837 3.8011243 1.4269351 
		-2.3994896 3.8498833 1.4269351 -2.3849819 3.8824625 1.4269351 -2.3678684 3.8939033 
		1.4269351 -2.3678684 3.8824625 1.4556273 -2.3678684 3.8498833 1.4799514 -2.3678684 
		3.8011243 1.4962043 -2.3678684 3.7436085 1.5019114 -2.3849819 3.7436085 1.4962043 
		-2.3994896 3.7436085 1.4799514 -2.4091837 3.7436085 1.4556273 -2.4125876 3.7436085 
		1.4269351 -1.1765652 3.8824625 1.4269351 -1.1620574 3.8498833 1.4269351 -1.1523634 
		3.8011243 1.4269351 -1.1489594 3.7436085 1.4269351 -1.1523634 3.7436085 1.4556273 
		-1.1620574 3.7436085 1.4799514 -1.1765652 3.7436085 1.4962043 -1.1936784 3.7436085 
		1.5019114 -1.1936784 3.8011243 1.4962043 -1.1936784 3.8498833 1.4799514 -1.1936784 
		3.8824625 1.4556273 -1.1936784 3.8939033 1.4269351 -2.3849819 3.304105 1.4269351 
		-2.3994896 3.3366845 1.4269351 -2.4091837 3.3854434 1.4269351 -2.4125876 3.4429593 
		1.4269351 -2.4091837 3.4429593 1.4556273 -2.3994896 3.4429593 1.4799514 -2.3849819 
		3.4429593 1.4962043 -2.3678684 3.4429593 1.5019114 -2.3678684 3.3854434 1.4962043 
		-2.3678684 3.3366845 1.4799514 -2.3678684 3.304105 1.4556273 -2.3678684 3.2926643 
		1.4269351 -1.1523634 3.3854434 1.4269351 -1.1620574 3.3366845 1.4269351 -1.1765652 
		3.304105 1.4269351 -1.1936784 3.2926643 1.4269351 -1.1936784 3.304105 1.4556273 -1.1936784 
		3.3366845 1.4799514 -1.1936784 3.3854434 1.4962043 -1.1936784 3.4429593 1.5019114 
		-1.1765652 3.4429593 1.4962043 -1.1620574 3.4429593 1.4799514 -1.1523634 3.4429593 
		1.4556273 -1.1489594 3.4429593 1.4269351 -2.3849819 3.4429593 -2.0319951 -2.3994896 
		3.4429593 -2.0157421 -2.4091837 3.4429593 -1.991418 -2.4125876 3.4429593 -1.9627256 
		-2.4091837 3.3854434 -1.9627256 -2.3994896 3.3366845 -1.9627256 -2.3849819 3.304105 
		-1.9627256 -2.3678684 3.2926643 -1.9627256 -2.3678684 3.304105 -1.991418 -2.3678684 
		3.3366845 -2.0157421 -2.3678684 3.3854434 -2.0319951 -2.3678684 3.4429593 -2.0377023 
		-1.1523634 3.4429593 -1.991418 -1.1620574 3.4429593 -2.0157421 -1.1765652 3.4429593 
		-2.0319951 -1.1936784 3.4429593 -2.0377023 -1.1936784 3.3854434 -2.0319951 -1.1936784 
		3.3366845 -2.0157421 -1.1936784 3.304105 -1.991418 -1.1936784 3.2926643 -1.9627256 
		-1.1765652 3.304105 -1.9627256 -1.1620574 3.3366845 -1.9627256 -1.1523634 3.3854434 
		-1.9627256 -1.1489594 3.4429593 -1.9627256 -2.3849819 3.8824625 -1.9627256 -2.3994896 
		3.8498833 -1.9627256 -2.4091837 3.8011243 -1.9627256 -2.4125876 3.7436085 -1.9627256 
		-2.4091837 3.7436085 -1.991418 -2.3994896 3.7436085 -2.0157421 -2.3849819 3.7436085 
		-2.0319951 -2.3678684 3.7436085 -2.0377023 -2.3678684 3.8011243 -2.0319951 -2.3678684 
		3.8498833 -2.0157421 -2.3678684 3.8824625 -1.991418 -2.3678684 3.8939033 -1.9627256 
		-1.1523634 3.8011243 -1.9627256 -1.1620574 3.8498833 -1.9627256 -1.1765652 3.8824625 
		-1.9627256 -1.1936784 3.8939033 -1.9627256 -1.1936784 3.8824625 -1.991418 -1.1936784 
		3.8498833 -2.0157421 -1.1936784 3.8011243 -2.0319951 -1.1936784 3.7436085 -2.0377023 
		-1.1765652 3.7436085 -2.0319951 -1.1620574 3.7436085 -2.0157421 -1.1523634 3.7436085 
		-1.991418 -1.1489594 3.7436085 -1.9627256 -2.4068844 3.7954855 1.4528145 -2.3980751 
		3.8451283 1.448907 -2.3833041 3.8747356 1.4528145 -2.3809736 3.8451283 1.4775795 
		-2.3833041 3.7954855 1.4923494 -2.3980751 3.7876525 1.4775795 -2.3936782 3.8303516 
		1.4702076 -1.1782429 3.8747356 1.4528145 -1.1634721 3.8451283 1.448907 -1.1546626 
		3.7954855 1.4528145 -1.1634721 3.7876525 1.4775795 -1.1782429 3.7954855 1.4923494 
		-1.1805735 3.8451283 1.4775795 -1.1678689 3.8303516 1.4702076 -2.3833041 3.3118322 
		1.4528145 -2.3980751 3.3414395 1.448907 -2.4068844 3.391082 1.4528145 -2.3980751 
		3.3989151 1.4775795 -2.3833041 3.391082 1.4923494 -2.3809736 3.3414395 1.4775795 
		-2.3936782 3.3562167 1.4702076 -1.1546626 3.391082 1.4528145 -1.1634721 3.3414395 
		1.448907 -1.1782429 3.3118322 1.4528145 -1.1805735 3.3414395 1.4775795 -1.1782429 
		3.391082 1.4923494 -1.1634721 3.3989151 1.4775795 -1.1678689 3.3562167 1.4702076 
		-2.3833041 3.391082 -2.0281398 -2.3980751 3.3989151 -2.0133703 -2.4068844 3.391082 
		-1.988605 -2.3980751 3.3414395 -1.9846975 -2.3833041 3.3118322 -1.988605 -2.3809736 
		3.3414395 -2.0133703 -2.3936782 3.3562167 -2.0059981 -1.1546626 3.391082 -1.988605 
		-1.1634721 3.3989151 -2.0133703 -1.1782429 3.391082 -2.0281398 -1.1805735 3.3414395 
		-2.0133703 -1.1782429 3.3118322 -1.988605 -1.1634721 3.3414395 -1.9846975 -1.1678689 
		3.3562167 -2.0059981 -2.3833041 3.8747356 -1.988605 -2.3980751 3.8451283 -1.9846975 
		-2.4068844 3.7954855 -1.988605 -2.3980751 3.7876525 -2.0133703 -2.3833041 3.7954855 
		-2.0281398 -2.3809736 3.8451283 -2.0133703 -2.3936782 3.8303516 -2.0059981 -1.1546626 
		3.7954855 -1.988605 -1.1634721 3.8451283 -1.9846975 -1.1782429 3.8747356 -1.988605 
		-1.1805735 3.8451283 -2.0133703 -1.1782429 3.7954855 -2.0281398 -1.1634721 3.7876525 
		-2.0133703 -1.1678689 3.8303516 -2.0059981;
	setAttr -s 152 ".vt[0:151]"  -0.49730605 -0.34568691 0.47881791 -0.48963457 -0.42678452 0.47881791
		 -0.47815353 -0.48097134 0.47881791 -0.4646104 -0.5 0.47881791 -0.4646104 -0.48097134 0.48692396
		 -0.4646104 -0.42678452 0.4937959 -0.4646104 -0.34568691 0.4983876 -0.4646104 -0.2500248 0.5
		 -0.47815353 -0.2500248 0.4983876 -0.48963457 -0.2500248 0.4937959 -0.49730605 -0.2500248 0.48692396
		 -0.49999982 -0.2500248 0.47881791 0.47815356 -0.48097134 0.47881791 0.48963463 -0.42678452 0.47881791
		 0.49730614 -0.34568691 0.47881791 0.5 -0.2500248 0.47881791 0.49730614 -0.2500248 0.48692396
		 0.48963463 -0.2500248 0.4937959 0.47815356 -0.2500248 0.4983876 0.46461061 -0.2500248 0.5
		 0.46461061 -0.34568691 0.4983876 0.46461061 -0.42678452 0.4937959 0.46461061 -0.48097134 0.48692396
		 0.46461061 -0.5 0.47881791 -0.47815353 0.48097134 0.47881791 -0.48963457 0.42678452 0.47881791
		 -0.49730605 0.34568691 0.47881791 -0.49999982 0.2500248 0.47881791 -0.49730605 0.2500248 0.48692396
		 -0.48963457 0.2500248 0.4937959 -0.47815353 0.2500248 0.4983876 -0.4646104 0.2500248 0.5
		 -0.4646104 0.34568691 0.4983876 -0.4646104 0.42678452 0.4937959 -0.4646104 0.48097134 0.48692396
		 -0.4646104 0.5 0.47881791 0.49730614 0.34568691 0.47881791 0.48963463 0.42678452 0.47881791
		 0.47815356 0.48097134 0.47881791 0.46461061 0.5 0.47881791 0.46461061 0.48097134 0.48692396
		 0.46461061 0.42678452 0.4937959 0.46461061 0.34568691 0.4983876 0.46461061 0.2500248 0.5
		 0.47815356 0.2500248 0.4983876 0.48963463 0.2500248 0.4937959 0.49730614 0.2500248 0.48692396
		 0.5 0.2500248 0.47881791 -0.47815353 0.2500248 -0.49838763 -0.48963457 0.2500248 -0.49379587
		 -0.49730605 0.2500248 -0.48692393 -0.49999982 0.2500248 -0.47881788 -0.49730605 0.34568691 -0.47881788
		 -0.48963457 0.42678452 -0.47881788 -0.47815353 0.48097134 -0.47881788 -0.4646104 0.5 -0.47881788
		 -0.4646104 0.48097134 -0.48692393 -0.4646104 0.42678452 -0.49379587 -0.4646104 0.34568691 -0.49838763
		 -0.4646104 0.2500248 -0.5 0.49730614 0.2500248 -0.48692393 0.48963463 0.2500248 -0.49379587
		 0.47815356 0.2500248 -0.49838763 0.46461061 0.2500248 -0.5 0.46461061 0.34568691 -0.49838763
		 0.46461061 0.42678452 -0.49379587 0.46461061 0.48097134 -0.48692393 0.46461061 0.5 -0.47881788
		 0.47815356 0.48097134 -0.47881788 0.48963463 0.42678452 -0.47881788 0.49730614 0.34568691 -0.47881788
		 0.5 0.2500248 -0.47881788 -0.47815353 -0.48097134 -0.47881788 -0.48963457 -0.42678452 -0.47881788
		 -0.49730605 -0.34568691 -0.47881788 -0.49999982 -0.2500248 -0.47881788 -0.49730605 -0.2500248 -0.48692393
		 -0.48963457 -0.2500248 -0.49379587 -0.47815353 -0.2500248 -0.49838763 -0.4646104 -0.2500248 -0.5
		 -0.4646104 -0.34568691 -0.49838763 -0.4646104 -0.42678452 -0.49379587 -0.4646104 -0.48097134 -0.48692393
		 -0.4646104 -0.5 -0.47881788 0.49730614 -0.34568691 -0.47881788 0.48963463 -0.42678452 -0.47881788
		 0.47815356 -0.48097134 -0.47881788 0.46461061 -0.5 -0.47881788 0.46461061 -0.48097134 -0.48692393
		 0.46461061 -0.42678452 -0.49379587 0.46461061 -0.34568691 -0.49838763 0.46461061 -0.2500248 -0.5
		 0.47815356 -0.2500248 -0.49838763 0.48963463 -0.2500248 -0.49379587 0.49730614 -0.2500248 -0.48692393
		 0.5 -0.2500248 -0.47881788 -0.49548656 -0.33630848 0.48612928 -0.48851508 -0.41887569 0.48502535
		 -0.47682565 -0.46811962 0.48612928 -0.47498137 -0.41887569 0.4931258 -0.47682565 -0.33630848 0.49729854
		 -0.48851508 -0.32328033 0.4931258 -0.48503548 -0.39429855 0.49104312 0.47682583 -0.46811962 0.48612928
		 0.48851511 -0.41887569 0.48502535 0.49548659 -0.33630848 0.48612928 0.48851511 -0.32328033 0.4931258
		 0.47682583 -0.33630848 0.49729854 0.47498149 -0.41887569 0.4931258 0.48503554 -0.39429855 0.49104312
		 -0.47682565 0.46811962 0.48612928 -0.48851508 0.41887569 0.48502535 -0.49548656 0.33630848 0.48612928
		 -0.48851508 0.32328033 0.4931258 -0.47682565 0.33630848 0.49729854 -0.47498137 0.41887569 0.4931258
		 -0.48503548 0.3942976 0.49104312 0.49548659 0.33630848 0.48612928 0.48851511 0.41887569 0.48502535
		 0.47682583 0.46811962 0.48612928 0.47498149 0.41887569 0.4931258 0.47682583 0.33630848 0.49729854
		 0.48851511 0.32328033 0.4931258 0.48503554 0.3942976 0.49104312 -0.47682565 0.33630848 -0.49729848
		 -0.48851508 0.32328033 -0.49312586 -0.49548656 0.33630848 -0.48612922 -0.48851508 0.41887569 -0.48502529
		 -0.47682565 0.46811962 -0.48612922 -0.47498137 0.41887569 -0.49312586 -0.48503548 0.3942976 -0.49104309
		 0.49548659 0.33630848 -0.48612922 0.48851511 0.32328033 -0.49312586 0.47682583 0.33630848 -0.49729848
		 0.47498149 0.41887569 -0.49312586 0.47682583 0.46811962 -0.48612922 0.48851511 0.41887569 -0.48502529
		 0.48503554 0.3942976 -0.49104309 -0.47682565 -0.46811962 -0.48612922 -0.48851508 -0.41887569 -0.48502529
		 -0.49548656 -0.33630848 -0.48612922 -0.48851508 -0.32328033 -0.49312586 -0.47682565 -0.33630848 -0.49729848
		 -0.47498137 -0.41887569 -0.49312586 -0.48503548 -0.39429855 -0.49104309 0.49548659 -0.33630848 -0.48612922
		 0.48851511 -0.41887569 -0.48502529 0.47682583 -0.46811962 -0.48612922 0.47498149 -0.41887569 -0.49312586
		 0.47682583 -0.33630848 -0.49729848 0.48851511 -0.32328033 -0.49312586 0.48503554 -0.39429855 -0.49104309;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  3 2 1 2 72 1 72 83 1 83 3 1 2 1 1 1 73 1 73 72 1 1 0 1
		 0 74 1 74 73 1 0 11 1 11 75 1 75 74 1 7 6 1 6 20 1 20 19 1 19 7 1 6 5 1 5 21 1 21 20 1
		 5 4 1 4 22 1 22 21 1 4 3 1 3 23 1 23 22 1 11 10 1 10 28 1 28 27 1 27 11 1 10 9 1
		 9 29 1 29 28 1 9 8 1 8 30 1 30 29 1 8 7 1 7 31 1 31 30 1 15 14 1 14 84 1 84 95 1
		 95 15 1 14 13 1 13 85 1 85 84 1 13 12 1 12 86 1 86 85 1 12 23 1 23 87 1 87 86 1 19 18 1
		 18 44 1 44 43 1 43 19 1 18 17 1 17 45 1 45 44 1 17 16 1 16 46 1 46 45 1 16 15 1 15 47 1
		 47 46 1 27 26 1 26 52 1 52 51 1 51 27 1 26 25 1 25 53 1 53 52 1 25 24 1 24 54 1 54 53 1
		 24 35 1 35 55 1 55 54 1 35 34 1 34 40 1 40 39 1 39 35 1 34 33 1 33 41 1 41 40 1 33 32 1
		 32 42 1 42 41 1 32 31 1 31 43 1 43 42 1 39 38 1 38 68 1 68 67 1 67 39 1 38 37 1 37 69 1
		 69 68 1 37 36 1 36 70 1 70 69 1 36 47 1 47 71 1 71 70 1 51 50 1 50 76 1 76 75 1 75 51 1
		 50 49 1 49 77 1 77 76 1 49 48 1 48 78 1 78 77 1 48 59 1 59 79 1 79 78 1 59 58 1 58 64 1
		 64 63 1 63 59 1 58 57 1 57 65 1 65 64 1 57 56 1 56 66 1 66 65 1 56 55 1 55 67 1 67 66 1
		 63 62 1 62 92 1 92 91 1 91 63 1 62 61 1 61 93 1 93 92 1 61 60 1 60 94 1 94 93 1 60 71 1
		 71 95 1 95 94 1 83 82 1 82 88 1 88 87 1 87 83 1 82 81 1 81 89 1 89 88 1 81 80 1 80 90 1
		 90 89 1 80 79 1 79 91 1 91 90 1 0 96 1 96 10 1 1 97 1 97 96 1 2 98 1 98 97 1 4 98 1
		 5 99 1 99 98 1 6 100 1;
	setAttr ".ed[166:299]" 100 99 1 8 100 1 9 101 1 101 100 1 96 101 1 97 102 1
		 102 101 1 99 102 1 12 103 1 103 22 1 13 104 1 104 103 1 14 105 1 105 104 1 16 105 1
		 17 106 1 106 105 1 18 107 1 107 106 1 20 107 1 21 108 1 108 107 1 103 108 1 104 109 1
		 109 108 1 106 109 1 24 110 1 110 34 1 25 111 1 111 110 1 26 112 1 112 111 1 28 112 1
		 29 113 1 113 112 1 30 114 1 114 113 1 32 114 1 33 115 1 115 114 1 110 115 1 111 116 1
		 116 115 1 113 116 1 36 117 1 117 46 1 37 118 1 118 117 1 38 119 1 119 118 1 40 119 1
		 41 120 1 120 119 1 42 121 1 121 120 1 44 121 1 45 122 1 122 121 1 117 122 1 118 123 1
		 123 122 1 120 123 1 48 124 1 124 58 1 49 125 1 125 124 1 50 126 1 126 125 1 52 126 1
		 53 127 1 127 126 1 54 128 1 128 127 1 56 128 1 57 129 1 129 128 1 124 129 1 125 130 1
		 130 129 1 127 130 1 60 131 1 131 70 1 61 132 1 132 131 1 62 133 1 133 132 1 64 133 1
		 65 134 1 134 133 1 66 135 1 135 134 1 68 135 1 69 136 1 136 135 1 131 136 1 132 137 1
		 137 136 1 134 137 1 72 138 1 138 82 1 73 139 1 139 138 1 74 140 1 140 139 1 76 140 1
		 77 141 1 141 140 1 78 142 1 142 141 1 80 142 1 81 143 1 143 142 1 138 143 1 139 144 1
		 144 143 1 141 144 1 84 145 1 145 94 1 85 146 1 146 145 1 86 147 1 147 146 1 88 147 1
		 89 148 1 148 147 1 90 149 1 149 148 1 92 149 1 93 150 1 150 149 1 145 150 1 146 151 1
		 151 150 1 148 151 1;
	setAttr -s 150 -ch 600 ".fc[0:149]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 27 88 20
		f 4 4 5 6 -2
		mu 0 4 27 25 90 88
		f 4 7 8 9 -6
		mu 0 4 26 24 91 89
		f 4 10 11 12 -9
		mu 0 4 24 21 7 91
		f 4 13 14 15 16
		mu 0 4 1 31 42 15
		f 4 17 18 19 -15
		mu 0 4 31 29 44 42
		f 4 20 21 22 -19
		mu 0 4 30 28 45 43
		f 4 23 24 25 -22
		mu 0 4 28 0 2 45
		f 4 26 27 28 29
		mu 0 4 21 34 50 22
		f 4 30 31 32 -28
		mu 0 4 34 33 51 50
		f 4 33 34 35 -32
		mu 0 4 33 32 52 51
		f 4 36 37 38 -35
		mu 0 4 32 1 4 52
		f 4 39 40 41 42
		mu 0 4 3 38 99 11
		f 4 43 44 45 -41
		mu 0 4 38 36 101 99
		f 4 46 47 48 -45
		mu 0 4 37 35 102 100
		f 4 49 50 51 -48
		mu 0 4 35 2 12 102
		f 4 52 53 54 55
		mu 0 4 15 41 63 5
		f 4 56 57 58 -54
		mu 0 4 41 40 64 63
		f 4 59 60 61 -58
		mu 0 4 40 39 65 64
		f 4 62 63 64 -61
		mu 0 4 39 3 6 65
		f 4 65 66 67 68
		mu 0 4 22 49 70 23
		f 4 69 70 71 -67
		mu 0 4 49 47 72 70
		f 4 72 73 74 -71
		mu 0 4 48 46 73 71
		f 4 75 76 77 -74
		mu 0 4 46 16 8 73
		f 4 78 79 80 81
		mu 0 4 16 55 60 17
		f 4 82 83 84 -80
		mu 0 4 55 54 61 60
		f 4 85 86 87 -84
		mu 0 4 54 53 62 61
		f 4 88 89 90 -87
		mu 0 4 53 4 5 62
		f 4 91 92 93 94
		mu 0 4 17 59 84 9
		f 4 95 96 97 -93
		mu 0 4 59 57 86 84
		f 4 98 99 100 -97
		mu 0 4 58 56 87 85
		f 4 101 102 103 -100
		mu 0 4 56 6 10 87
		f 4 104 105 106 107
		mu 0 4 23 69 92 7
		f 4 108 109 110 -106
		mu 0 4 69 67 94 92
		f 4 111 112 113 -110
		mu 0 4 68 66 95 93
		f 4 114 115 116 -113
		mu 0 4 66 18 13 95
		f 4 117 118 119 120
		mu 0 4 18 76 81 19
		f 4 121 122 123 -119
		mu 0 4 76 75 82 81
		f 4 124 125 126 -123
		mu 0 4 75 74 83 82
		f 4 127 128 129 -126
		mu 0 4 74 8 9 83
		f 4 130 131 132 133
		mu 0 4 19 80 106 14
		f 4 134 135 136 -132
		mu 0 4 80 78 108 106
		f 4 137 138 139 -136
		mu 0 4 79 77 109 107
		f 4 140 141 142 -139
		mu 0 4 77 10 11 109
		f 4 143 144 145 146
		mu 0 4 20 98 103 12
		f 4 147 148 149 -145
		mu 0 4 98 97 104 103
		f 4 150 151 152 -149
		mu 0 4 97 96 105 104
		f 4 153 154 155 -152
		mu 0 4 96 13 14 105
		f 4 -17 -56 -90 -38
		mu 0 4 1 15 5 4
		f 4 -82 -95 -129 -77
		mu 0 4 16 17 9 8
		f 4 -121 -134 -155 -116
		mu 0 4 18 19 14 13
		f 4 -147 -51 -25 -4
		mu 0 4 20 12 2 0
		f 4 -43 -142 -103 -64
		mu 0 4 3 11 10 6
		f 4 -12 -30 -69 -108
		mu 0 4 7 21 22 23
		f 4 -27 -11 156 157
		mu 0 4 34 21 24 110
		f 4 -157 -8 158 159
		mu 0 4 110 24 26 112
		f 4 -159 -5 160 161
		mu 0 4 111 25 27 113
		f 4 -1 -24 162 -161
		mu 0 4 27 0 28 113
		f 4 -163 -21 163 164
		mu 0 4 113 28 30 115
		f 4 -164 -18 165 166
		mu 0 4 114 29 31 116
		f 4 -14 -37 167 -166
		mu 0 4 31 1 32 116
		f 4 -168 -34 168 169
		mu 0 4 116 32 33 117
		f 4 -169 -31 -158 170
		mu 0 4 117 33 34 110
		f 4 -171 -160 171 172
		mu 0 4 117 110 112 119
		f 4 -162 -165 173 -172
		mu 0 4 111 113 115 118
		f 4 -167 -170 -173 -174
		mu 0 4 114 116 117 119
		f 4 -26 -50 174 175
		mu 0 4 45 2 35 120
		f 4 -175 -47 176 177
		mu 0 4 120 35 37 122
		f 4 -177 -44 178 179
		mu 0 4 121 36 38 123
		f 4 -40 -63 180 -179
		mu 0 4 38 3 39 123
		f 4 -181 -60 181 182
		mu 0 4 123 39 40 124
		f 4 -182 -57 183 184
		mu 0 4 124 40 41 125
		f 4 -53 -16 185 -184
		mu 0 4 41 15 42 125
		f 4 -186 -20 186 187
		mu 0 4 125 42 44 127
		f 4 -187 -23 -176 188
		mu 0 4 126 43 45 120
		f 4 -189 -178 189 190
		mu 0 4 126 120 122 129
		f 4 -180 -183 191 -190
		mu 0 4 121 123 124 128
		f 4 -185 -188 -191 -192
		mu 0 4 124 125 127 128
		f 4 -79 -76 192 193
		mu 0 4 55 16 46 130
		f 4 -193 -73 194 195
		mu 0 4 130 46 48 132
		f 4 -195 -70 196 197
		mu 0 4 131 47 49 133
		f 4 -66 -29 198 -197
		mu 0 4 49 22 50 133
		f 4 -199 -33 199 200
		mu 0 4 133 50 51 134
		f 4 -200 -36 201 202
		mu 0 4 134 51 52 135
		f 4 -39 -89 203 -202
		mu 0 4 52 4 53 135
		f 4 -204 -86 204 205
		mu 0 4 135 53 54 136
		f 4 -205 -83 -194 206
		mu 0 4 136 54 55 130
		f 4 -207 -196 207 208
		mu 0 4 136 130 132 137
		f 4 -198 -201 209 -208
		mu 0 4 131 133 134 137
		f 4 -203 -206 -209 -210
		mu 0 4 134 135 136 137
		f 4 -65 -102 210 211
		mu 0 4 65 6 56 138
		f 4 -211 -99 212 213
		mu 0 4 138 56 58 140
		f 4 -213 -96 214 215
		mu 0 4 139 57 59 141
		f 4 -92 -81 216 -215
		mu 0 4 59 17 60 141
		f 4 -217 -85 217 218
		mu 0 4 141 60 61 142
		f 4 -218 -88 219 220
		mu 0 4 142 61 62 143
		f 4 -91 -55 221 -220
		mu 0 4 62 5 63 143
		f 4 -222 -59 222 223
		mu 0 4 143 63 64 144
		f 4 -223 -62 -212 224
		mu 0 4 144 64 65 138
		f 4 -225 -214 225 226
		mu 0 4 144 138 140 145
		f 4 -216 -219 227 -226
		mu 0 4 139 141 142 145
		f 4 -221 -224 -227 -228
		mu 0 4 142 143 144 145
		f 4 -118 -115 228 229
		mu 0 4 76 18 66 146
		f 4 -229 -112 230 231
		mu 0 4 146 66 68 148
		f 4 -231 -109 232 233
		mu 0 4 147 67 69 149
		f 4 -105 -68 234 -233
		mu 0 4 69 23 70 149
		f 4 -235 -72 235 236
		mu 0 4 149 70 72 151
		f 4 -236 -75 237 238
		mu 0 4 150 71 73 152
		f 4 -78 -128 239 -238
		mu 0 4 73 8 74 152
		f 4 -240 -125 240 241
		mu 0 4 152 74 75 153
		f 4 -241 -122 -230 242
		mu 0 4 153 75 76 146
		f 4 -243 -232 243 244
		mu 0 4 153 146 148 155
		f 4 -234 -237 245 -244
		mu 0 4 147 149 151 154
		f 4 -239 -242 -245 -246
		mu 0 4 150 152 153 155
		f 4 -104 -141 246 247
		mu 0 4 87 10 77 156
		f 4 -247 -138 248 249
		mu 0 4 156 77 79 158
		f 4 -249 -135 250 251
		mu 0 4 157 78 80 159
		f 4 -131 -120 252 -251
		mu 0 4 80 19 81 159
		f 4 -253 -124 253 254
		mu 0 4 159 81 82 160
		f 4 -254 -127 255 256
		mu 0 4 160 82 83 161
		f 4 -130 -94 257 -256
		mu 0 4 83 9 84 161
		f 4 -258 -98 258 259
		mu 0 4 161 84 86 163
		f 4 -259 -101 -248 260
		mu 0 4 162 85 87 156
		f 4 -261 -250 261 262
		mu 0 4 162 156 158 165
		f 4 -252 -255 263 -262
		mu 0 4 157 159 160 164
		f 4 -257 -260 -263 -264
		mu 0 4 160 161 163 164
		f 4 -144 -3 264 265
		mu 0 4 98 20 88 166
		f 4 -265 -7 266 267
		mu 0 4 166 88 90 168
		f 4 -267 -10 268 269
		mu 0 4 167 89 91 169
		f 4 -13 -107 270 -269
		mu 0 4 91 7 92 169
		f 4 -271 -111 271 272
		mu 0 4 169 92 94 171
		f 4 -272 -114 273 274
		mu 0 4 170 93 95 172
		f 4 -117 -154 275 -274
		mu 0 4 95 13 96 172
		f 4 -276 -151 276 277
		mu 0 4 172 96 97 173
		f 4 -277 -148 -266 278
		mu 0 4 173 97 98 166
		f 4 -279 -268 279 280
		mu 0 4 173 166 168 175
		f 4 -270 -273 281 -280
		mu 0 4 167 169 171 174
		f 4 -275 -278 -281 -282
		mu 0 4 170 172 173 175
		f 4 -143 -42 282 283
		mu 0 4 109 11 99 176
		f 4 -283 -46 284 285
		mu 0 4 176 99 101 178
		f 4 -285 -49 286 287
		mu 0 4 177 100 102 179
		f 4 -52 -146 288 -287
		mu 0 4 102 12 103 179
		f 4 -289 -150 289 290
		mu 0 4 179 103 104 180
		f 4 -290 -153 291 292
		mu 0 4 180 104 105 181
		f 4 -156 -133 293 -292
		mu 0 4 105 14 106 181
		f 4 -294 -137 294 295
		mu 0 4 181 106 108 183
		f 4 -295 -140 -284 296
		mu 0 4 182 107 109 176
		f 4 -297 -286 297 298
		mu 0 4 182 176 178 185
		f 4 -288 -291 299 -298
		mu 0 4 177 179 180 184
		f 4 -293 -296 -299 -300
		mu 0 4 180 181 183 184;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ladder" -p "Bed";
	rename -uid "B1B99240-4DD4-879F-DC18-AEBC57F469F2";
	setAttr ".rp" -type "double3" -1.3818740368405791 0.10152649879455568 2.4161439696827327 ;
	setAttr ".sp" -type "double3" -1.3818740368405791 0.10152649879455568 2.4161439696827327 ;
createNode transform -n "LadderLeg01" -p "Ladder";
	rename -uid "491ED1B3-4C31-D8C7-C67E-4DA5AB6A3F97";
	setAttr ".rp" -type "double3" -2.3126624053865088 1.8975252203909365 2.2140789152225056 ;
	setAttr ".sp" -type "double3" -2.3126624053865088 1.8975252203909365 2.2140789152225056 ;
createNode mesh -n "LadderLegShape1" -p "LadderLeg01";
	rename -uid "9D812953-4272-7654-6C8B-37AEB6F09A01";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.37500024 0.5039103 0.42546892 0.4375062 0.625 0 0.37499976 0.24611194
		 0.42546892 0.3124938 0.57453144 0.3124938 0.57424295 0.43714905 0.625 0.50391054
		 0.37500024 0.75 0.87499976 1.8125476e-08 0.87500006 0.24608973 0.62500024 0.24611194
		 0.12500024 1.8125476e-08 0.375 0 0.125 0.24608973;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.9447309 0.61468858 1.9161439 
		-2.6805961 0.61468858 1.9161439 -1.9447309 0.60605913 2.6913786 -2.6805961 0.60605913 
		2.6913786 -1.9447309 3.3757274 1.7395688 -2.0932839 3.4171886 1.9305682 -2.5320432 
		3.4171886 1.9305682 -2.6805961 3.3757274 1.7395688 -2.0932839 3.4128735 2.3182242 
		-1.9447309 3.3668482 2.5148194 -2.5311942 3.4128857 2.3171167 -2.6805961 3.3668482 
		2.5148194;
	setAttr -s 12 ".vt[0:11]"  -0.49999905 -0.51316214 0.5 0.50000191 -0.51316214 0.5
		 -0.49999905 -0.51316202 -0.49999905 0.50000191 -0.51316202 -0.49999905 -0.49999905 0.27042872 0.49999905
		 -0.29812336 0.28280777 0.2500248 0.2981267 0.28280777 0.2500248 0.50000191 0.27042872 0.49999905
		 -0.29812336 0.28280783 -0.2500248 -0.49999905 0.27035797 -0.5 0.29697275 0.28280783 -0.24859619
		 0.50000191 0.27035797 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LadderLeg02" -p "Ladder";
	rename -uid "C101CA3A-423D-06CD-FFA2-8189B4677CE8";
	setAttr ".rp" -type "double3" -1.2498062638888443 1.8975254464787572 2.2140789532117591 ;
	setAttr ".sp" -type "double3" -1.2498062638888443 1.8975254464787572 2.2140789532117591 ;
createNode mesh -n "LadderLegShape2" -p "LadderLeg02";
	rename -uid "24DCD383-491E-0270-8275-59B9DCF06EA6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.50391024 0.4254688 0.4375062 0.625 0 0.37499976 0.24611194 0.4254688
		 0.3124938 0.57453126 0.3124938 0.57424289 0.43714905 0.625 0.5039103 0.375 0.75 0.87499976
		 0 0.875 0.24608974 0.62500024 0.24611194 0.12500024 0 0.375 0 0.125 0.24608974;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.88187402 0.60152656 1.916144 
		-1.6177387 0.60152656 1.916144 -0.88187402 0.59289664 2.6913779 -1.6177387 0.59289664 
		2.6913779 -0.88187402 3.1617086 1.7395688 -1.0304269 3.1999969 1.9305682 -1.4691859 
		3.1999969 1.9305682 -1.6177387 3.1617086 1.7395688 -1.0304269 3.1956823 2.3182242 
		-0.88187402 3.1528478 2.5148187 -1.4683371 3.1956944 2.3171167 -1.6177387 3.1528478 
		2.5148187;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.50000024 -0.5 0.5 -0.5 -0.5 -0.49999809
		 0.50000024 -0.5 -0.49999809 -0.5 0.48444778 0.49999905 -0.29812479 0.5 0.2500248
		 0.29812503 0.5 0.2500248 0.50000024 0.48444778 0.49999905 -0.29812479 0.50000024 -0.2500248
		 -0.5 0.48435897 -0.49999905 0.29697156 0.50000024 -0.24859619 0.50000024 0.48435897 -0.49999905;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LadderRung01" -p "Ladder";
	rename -uid "5366343F-4EA6-1291-EA53-4E9903BAF724";
	setAttr ".rp" -type "double3" -1.7816519598494374 0.86762210956199304 2.2653835637996589 ;
	setAttr ".sp" -type "double3" -1.7816519598494374 0.86762210956199304 2.2653835637996589 ;
createNode mesh -n "LadderRungShape1" -p "LadderRung01";
	rename -uid "CA1B1132-49F3-4F26-118E-A6B910C38B38";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[8]" "f[10:11]" "f[14]" "f[24:25]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[0]" "f[3]" "f[15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "f[1:2]" "f[4]" "f[6]" "f[12]" "f[18:21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[5]" "f[7]" "f[9]" "f[13]" "f[22:23]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.3939001 0.97500229
		 0.375 0.97500414 0.37500006 0.7749958 0.3939001 3.7252903e-09 0.3938989 0.0044925492
		 0.625 0.97500396 0.60609984 0.97500253 0.625 0.77499586 0.64999604 0.0044925623 0.375
		 0.2749958 0.37500006 0.47486067 0.39379221 0.24553281 0.60610116 0.24550743 0.625
		 0.27499604 0.37500006 0.50451839 0.37500006 0.74550748 0.39390022 0.47500277 0.60609984
		 0.47500253 0.625 0.50446725 0.625 0.74550748 0.3940075 0.74548167 0.60610116 0.74550748
		 0.60609984 0.77499747 0.60599244 0.0045183422 0.3939001 0.27499771 0.60609984 0.27499747
		 0.3940075 0.50451833 0.60620785 0.50446719 0.39390022 0.77499723 0.8500042 0.0044925567
		 0.85014534 0.24553281 0.1499958 0.0044925548 0.3500042 0.0044925567 0.3500042 0.24550743
		 0.15013933 0.24548164 0.60609984 -1.8626451e-09 0.64999604 0.24550743 0.625 0.47514534;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  -1.7561953 1.4678805 1.9215951 
		-1.7418519 1.4541575 1.8367134 -1.6662561 1.4686779 1.9208363 -2.6662564 1.2689247 
		1.9307878 -2.5901442 1.2846103 1.8451569 -2.6049943 1.2983303 1.9300404 -0.89704746 
		0.70131564 1.9208363 -0.97213542 0.68679947 1.83671 -0.95830977 0.67191017 1.9215951 
		-1.8071088 0.50235993 1.9300404 -1.8214521 0.51724297 1.845162 -1.8970478 0.50156242 
		1.9307878 -0.89713019 0.69675928 2.5994945 -0.95831025 0.66726857 2.6007276 -0.97315997 
		0.68098867 2.6856134 -1.8217984 0.51127487 2.6940579 -1.8071088 0.49771842 2.6091728 
		-1.8969668 0.49683657 2.61041 -1.6662565 1.4640361 2.5999801 -1.7422043 1.4481871 
		2.6856134 -1.7561958 1.4632388 2.6007276 -2.6049943 1.2936888 2.6091728 -2.5906608 
		1.2788035 2.6940536 -2.6662567 1.2642831 2.6099308;
	setAttr -s 24 ".vt[0:23]"  -0.42439961 -0.51316249 0.40000916 -0.42440438 -0.49885833 0.5
		 -0.50000024 -0.49885833 0.40001678 0.5 -0.49885833 0.40001583 0.42396975 -0.49877656 0.49999809
		 0.42439938 -0.51316249 0.40001011 -0.50000024 0.2685039 0.40001678 -0.42483115 0.26858485 0.49999905
		 -0.42439961 0.28280783 0.40000916 0.42439938 0.28280783 0.40001011 0.42440438 0.2685039 0.49999714
		 0.5 0.2685039 0.40001583 -0.49999976 0.26842189 -0.39944458 -0.42439914 0.28280783 -0.40001106
		 -0.42396998 0.26842189 -0.50000191 0.42483187 0.26858485 -0.5 0.42439938 0.28280783 -0.40001011
		 0.50000024 0.26858485 -0.40058136 -0.49999976 -0.49885833 -0.40001678 -0.42396998 -0.49877656 -0.50000191
		 -0.42439914 -0.51316249 -0.40001106 0.42439938 -0.51316249 -0.40001011 0.42440438 -0.49885833 -0.5
		 0.50000024 -0.49885833 -0.40001678;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LadderRung02" -p "Ladder";
	rename -uid "4753146D-47B4-7458-E444-19AFFE97D09A";
	setAttr ".rp" -type "double3" -1.7816519598494374 1.5669536357672693 2.2305463467705655 ;
	setAttr ".sp" -type "double3" -1.7816519598494374 1.5669536357672693 2.2305463467705655 ;
createNode mesh -n "LadderRungShape2" -p "LadderRung02";
	rename -uid "2ACFFBCA-41F3-BB5A-7766-A8A8EBD77F79";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[8]" "f[10:11]" "f[14]" "f[24:25]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[0]" "f[3]" "f[15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "f[1:2]" "f[4]" "f[6]" "f[12]" "f[18:21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[5]" "f[7]" "f[9]" "f[13]" "f[22:23]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.39390028 0.97500229
		 0.375 0.97500384 0.37500012 0.7749958 0.39390028 -9.3132257e-09 0.39389896 0.004492566
		 0.62499988 0.97500372 0.60609972 0.97500253 0.625 0.77499592 0.64999628 0.004492566
		 0.375 0.27499604 0.375 0.47486043 0.39379212 0.24553281 0.60610104 0.24550743 0.62499988
		 0.27499628 0.375 0.50451839 0.37500012 0.74550748 0.39390016 0.47500277 0.60609984
		 0.47500277 0.625 0.50446719 0.625 0.74550748 0.39400756 0.74548167 0.60610104 0.74550748
		 0.60609984 0.77499723 0.60599244 0.0045183422 0.39390028 0.27499771 0.60609972 0.27499747
		 0.39400756 0.50451839 0.60620773 0.50446719 0.39390016 0.77499723 0.8500042 0.0044925567
		 0.85014534 0.24553281 0.1499958 0.0044925548 0.35000396 0.0044925585 0.35000396 0.24550743
		 0.15013957 0.24548164 0.60609972 1.8626451e-09 0.64999628 0.24550743 0.625 0.47514534;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  -1.756196 2.167212 1.8867579 
		-1.7418522 2.1534889 1.8018762 -1.6662558 2.1680095 1.8860008 -2.6662555 1.9682564 
		1.8959522 -2.5901442 1.9839418 1.8103205 -2.6049933 1.9976619 1.8952032 -0.89704722 
		1.4006472 1.8860008 -0.97213519 1.386131 1.8018727 -0.95831048 1.3712416 1.8867579 
		-1.8071078 1.2016916 1.8952032 -1.8214519 1.2165745 1.8103248 -1.8970468 1.2008941 
		1.8959522 -0.89712995 1.3960909 2.5646548 -0.95831001 1.3666002 2.5658903 -0.97316021 
		1.3803202 2.6507771 -1.8217975 1.2106066 2.6592224 -1.8071088 1.19705 2.5743372 -1.8969666 
		1.1961682 2.575573 -1.6662568 2.1633677 2.5651429 -1.7422045 2.1475186 2.6507771 
		-1.7561955 2.1625705 2.5658903 -2.6049943 1.9930203 2.5743372 -2.5906606 1.978135 
		2.6592166 -2.6662569 1.9636145 2.5750935;
	setAttr -s 24 ".vt[0:23]"  -0.4243989 -0.51316249 0.40000916 -0.42440414 -0.49885833 0.5
		 -0.50000048 -0.49885833 0.40001488 0.49999905 -0.49885833 0.40001392 0.42396975 -0.49877656 0.49999714
		 0.42439842 -0.51316249 0.40001011 -0.50000048 0.2685039 0.40001488 -0.42483139 0.26858485 0.49999905
		 -0.4243989 0.28280783 0.40000916 0.42439842 0.28280783 0.40001011 0.42440414 0.2685039 0.49999714
		 0.49999905 0.2685039 0.40001392 -0.5 0.26842189 -0.39944172 -0.42439938 0.28280783 -0.40001106
		 -0.42396975 0.26842189 -0.50000286 0.42483091 0.26858485 -0.50000191 0.42439938 0.28280783 -0.40001202
		 0.5 0.26858485 -0.40058136 -0.49999952 -0.49885833 -0.40001678 -0.42396975 -0.49877656 -0.50000286
		 -0.42439938 -0.51316249 -0.40001106 0.42439938 -0.51316249 -0.40001202 0.42440414 -0.49885833 -0.5
		 0.50000048 -0.49885833 -0.40001678;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LadderRung03" -p "Ladder";
	rename -uid "CC0258C9-406B-F1F4-FA1B-A3839D8B3C4E";
	setAttr ".rp" -type "double3" -1.7816519598494371 2.2662851619725464 2.1957091297414726 ;
	setAttr ".sp" -type "double3" -1.7816519598494371 2.2662851619725464 2.1957091297414726 ;
createNode mesh -n "LadderRungShape3" -p "LadderRung03";
	rename -uid "4EB52420-4C9E-7512-E577-C2A05FFF6735";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[8]" "f[10:11]" "f[14]" "f[24:25]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[0]" "f[3]" "f[15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "f[1:2]" "f[4]" "f[6]" "f[12]" "f[18:21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[5]" "f[7]" "f[9]" "f[13]" "f[22:23]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.39390016 0.97500253
		 0.375 0.97500443 0.37500024 0.77499604 0.39390016 -1.1175871e-08 0.39389896 0.004492566
		 0.625 0.9750042 0.60609961 0.97500277 0.625 0.77499628 0.6499958 0.0044925548 0.375
		 0.27499557 0.375 0.47486043 0.39379212 0.24553281 0.60610104 0.24550743 0.625 0.2749958
		 0.375 0.50451839 0.37500024 0.74550748 0.39390039 0.47500229 0.60610008 0.47500229
		 0.625 0.50446743 0.625 0.74550748 0.39400768 0.74548167 0.60610104 0.74550748 0.60610008
		 0.77499771 0.60599232 0.004518358 0.39390016 0.27499747 0.60609961 0.27499723 0.39400768
		 0.50451833 0.60620809 0.50446719 0.39390039 0.77499771 0.85000396 0.0044925585 0.8501451
		 0.24553281 0.14999604 0.0044925623 0.35000443 0.0044925679 0.35000443 0.24550743
		 0.15013957 0.24548164 0.60609961 1.8626451e-09 0.6499958 0.24550743 0.625 0.47514513;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  -1.7561955 2.8665435 1.8519198 
		-1.7418522 2.8528204 1.7670366 -1.6662563 2.8673408 1.8511603 -2.6662574 2.6675875 
		1.8611126 -2.5901437 2.6832733 1.7754792 -2.6049933 2.6969936 1.8603652 -0.8970477 
		2.0999787 1.8511603 -0.97213519 2.0854626 1.7670346 -0.95831001 2.0705731 1.8519198 
		-1.8071078 1.9010231 1.8603652 -1.8214519 1.9159061 1.7754852 -1.8970487 1.9002253 
		1.8611126 -0.89712995 2.0954223 2.5298166 -0.95831096 2.0659316 2.5310507 -0.97316068 
		2.0796516 2.6159375 -1.8217989 1.9099379 2.624382 -1.8071097 1.8963813 2.5394976 
		-1.8969675 1.8954995 2.5407333 -1.6662573 2.862699 2.5303049 -1.742205 2.8468499 
		2.6159375 -1.7561965 2.8619018 2.5310507 -2.6049953 2.6923516 2.5394976 -2.5906606 
		2.6774666 2.6243768 -2.6662583 2.6629457 2.5402539;
	setAttr -s 24 ".vt[0:23]"  -0.42439938 -0.51316249 0.40001011 -0.42440414 -0.49885833 0.50000286
		 -0.5 -0.49885833 0.40001869 0.50000095 -0.49885833 0.40001678 0.42396927 -0.49877656 0.50000191
		 0.42439842 -0.51316249 0.40001106 -0.5 0.2685039 0.40001869 -0.42483139 0.26858485 0.5
		 -0.42439938 0.28280783 0.40001011 0.42439842 0.28280783 0.40001106 0.42440414 0.2685039 0.5
		 0.50000095 0.2685039 0.40001678 -0.5 0.26842189 -0.39944077 -0.42439842 0.28280783 -0.4000082
		 -0.42396927 0.26842189 -0.5 0.42483234 0.26858485 -0.49999809 0.42440033 0.28280783 -0.40000916
		 0.50000095 0.26858485 -0.4005785 -0.49999905 -0.49885833 -0.40001583 -0.42396927 -0.49877656 -0.5
		 -0.42439842 -0.51316249 -0.4000082 0.42440033 -0.51316249 -0.40000916 0.42440414 -0.49885833 -0.49999714
		 0.50000191 -0.49885833 -0.40001392;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LaderRung04" -p "Ladder";
	rename -uid "3E229039-400E-1B88-83F3-C1B3C1569080";
	setAttr ".rp" -type "double3" -1.7816519598494371 2.965616688177823 2.1608719127123788 ;
	setAttr ".sp" -type "double3" -1.7816519598494371 2.965616688177823 2.1608719127123788 ;
createNode mesh -n "LaderRungShape4" -p "LaderRung04";
	rename -uid "437911FA-4920-9AA8-6FD1-F1A01CB371B1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[8]" "f[10:11]" "f[14]" "f[24:25]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[0]" "f[3]" "f[15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "f[1:2]" "f[4]" "f[6]" "f[12]" "f[18:21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[5]" "f[7]" "f[9]" "f[13]" "f[22:23]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.39390016 0.97500253
		 0.37500024 0.97500443 0.37500024 0.77499604 0.39390016 -1.1175871e-08 0.39389896
		 0.004492566 0.625 0.97500426 0.60610008 0.97500277 0.625 0.77499628 0.6499958 0.0044925548
		 0.37500024 0.27499557 0.375 0.47486043 0.39379239 0.24553281 0.60610151 0.24550743
		 0.625 0.27499622 0.375 0.50451839 0.37500024 0.74550748 0.39390016 0.47500253 0.60610032
		 0.47500229 0.625 0.50446767 0.625 0.74550748 0.39400768 0.74548167 0.60610127 0.74550748
		 0.60610032 0.77499771 0.60599297 0.0045183636 0.39390016 0.27499747 0.60610008 0.27499723
		 0.39400768 0.50451833 0.60620809 0.50446719 0.39390016 0.77499747 0.85000396 0.0044925585
		 0.8501451 0.24553281 0.14999604 0.0044925623 0.35000443 0.0044925679 0.35000443 0.24550743
		 0.15013957 0.24548164 0.60610008 -5.5879354e-09 0.6499958 0.24550743 0.625 0.47514513;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  -1.7561955 3.5658751 1.8170826 
		-1.7418522 3.5521519 1.7322001 -1.6662582 3.5666721 1.816323 -2.6662593 3.3669186 
		1.8262753 -2.5901475 3.3826041 1.7406437 -2.6049953 3.3963246 1.8255264 -0.89704961 
		2.7993097 1.816323 -0.97213709 2.7847939 1.7321975 -0.95831001 2.7699046 1.8170826 
		-1.8071097 2.6003544 1.8255264 -1.8214548 2.615237 1.740648 -1.8970506 2.5995564 
		1.8262753 -0.89712995 2.7947538 2.4949803 -0.95831001 2.7652633 2.4962151 -0.97316164 
		2.7789829 2.5811002 -1.8217989 2.6092694 2.5895448 -1.8071116 2.5957124 2.5046597 
		-1.8969694 2.5948305 2.5058978 -1.6662582 3.5620303 2.4954677 -1.742206 3.5461814 
		2.5811002 -1.7561955 3.5612335 2.4962151 -2.6049972 3.3916829 2.5046597 -2.5906625 
		3.3767977 2.5895405 -2.6662593 3.362277 2.5054169;
	setAttr -s 24 ".vt[0:23]"  -0.42439938 -0.51316249 0.40001011 -0.42440414 -0.49885833 0.50000191
		 -0.49999809 -0.49885833 0.40001869 0.50000286 -0.49885833 0.40001678 0.42397308 -0.49877656 0.5
		 0.42440033 -0.51316249 0.40001297 -0.49999809 0.2685039 0.40001869 -0.42482948 0.26858485 0.5
		 -0.42439938 0.28280783 0.40001011 0.42440033 0.28280783 0.40001297 0.42440701 0.2685039 0.5
		 0.50000286 0.2685039 0.40001678 -0.5 0.26842189 -0.39944172 -0.42439938 0.28280783 -0.40001011
		 -0.42396832 0.26842189 -0.5 0.42483234 0.26858485 -0.49999809 0.42440224 0.28280783 -0.4000082
		 0.50000286 0.26858485 -0.40058041 -0.49999809 -0.49885833 -0.40001583 -0.42396832 -0.49877656 -0.5
		 -0.42439938 -0.51316249 -0.40001011 0.42440224 -0.51316249 -0.4000082 0.42440605 -0.49885833 -0.49999809
		 0.50000286 -0.49885833 -0.40001392;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLight";
	rename -uid "2010D9DA-4C6F-FA63-50DD-6F8C8CDFBA5B";
	setAttr ".rp" -type "double3" 1.7763568394002505e-15 -0.57435657920437011 -0.30591748337993629 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-15 -0.57435657920437011 -0.30591748337993629 ;
createNode transform -n "pPipe1" -p "WallLight";
	rename -uid "DD6CF597-4A6B-4C53-9922-8291DC098572";
	setAttr ".rp" -type "double3" -2.9999999999999982 5.2546009427049558 2.3799576136160416 ;
	setAttr ".sp" -type "double3" -2.9999999999999982 5.2546009427049558 2.3799576136160416 ;
createNode mesh -n "pPipeShape1" -p "pPipe1";
	rename -uid "F75037BB-4A27-56CE-74C5-BB9F77669CC1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000017881393433 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 186 ".uvst[0].uvsp[0:185]" -type "float2" 0 1 0.033333335 1
		 0.06666667 1 0.10000001 1 0.13333334 1 0.16666667 1 0.2 1 0.23333333 1 0.26666668
		 1 0.30000001 1 0.33333334 1 0.36666667 1 0.40000001 1 0.43333334 1 0.46666667 1 0.5
		 1 0.53333336 1 0.56666672 1 0.60000008 1 0.63333344 1 0.66666681 1 0.70000017 1 0.73333353
		 1 0.76666689 1 0.80000025 1 0.83333361 1 0.86666697 1 0.90000033 1 0.93333369 1 0.96666706
		 1 1.000000357628 1 0 0.75 0.033333335 0.75 0.06666667 0.75 0.10000001 0.75 0.13333334
		 0.75 0.16666667 0.75 0.2 0.75 0.23333333 0.75 0.26666668 0.75 0.30000001 0.75 0.33333334
		 0.75 0.36666667 0.75 0.40000001 0.75 0.43333334 0.75 0.46666667 0.75 0.5 0.75 0.53333336
		 0.75 0.56666672 0.75 0.60000008 0.75 0.63333344 0.75 0.66666681 0.75 0.70000017 0.75
		 0.73333353 0.75 0.76666689 0.75 0.80000025 0.75 0.83333361 0.75 0.86666697 0.75 0.90000033
		 0.75 0.93333369 0.75 0.96666706 0.75 1.000000357628 0.75 1.000000357628 0.5 0 0.34145916
		 1 0.12501144 0 0.5 0.033333335 0.34145945 0.033333335 0.5 0.066666752 0.3414596 0.066666737
		 0.5 0.09999989 0.34145954 0.10000001 0.5 0.13333334 0.34145927 0.13333334 0.5 0.16666649
		 0.34145969 0.16666667 0.5 0.20000021 0.3414596 0.20000021 0.5 0.2333336 0.3414596
		 0.23333357 0.5 0.26666677 0.3414596 0.26666677 0.5 0.30000013 0.3414596 0.30000016
		 0.5 0.33333352 0.3414596 0.33333349 0.5 0.36666679 0.3414596 0.36666682 0.5 0.40000027
		 0.3414596 0.40000027 0.5 0.43333334 0.34145999 0.43333349 0.5 0.46666682 0.34145963
		 0.46666682 0.5 0.50000018 0.3414596 0.50000012 0.5 0.53333336 0.34145969 0.53333336
		 0.5 0.56666678 0.34145963 0.56666678 0.5 0.60000008 0.34145945 0.60000008 0.5 0.63333362
		 0.3414596 0.63333362 0.5 0.66666681 0.34145957 0.66666681 0.5 0.70000017 0.34145933
		 0.70000017 0.5 0.73333353 0.34145939 0.73333353 0.5 0.76666689 0.34145874 0.76666689
		 0.5 0.80000025 0.34145993 0.80000031 0.5 0.83333367 0.3414596 0.83333367 0.5 0.86666703
		 0.34145898 0.86666697 0.5 0.90000033 0.3414591 0.90000033 0.5 0.93333369 0.34145942
		 0.93333369 0.5 0.966667 0.34145957 0.96666706 0.5 1.000000119209 0.34145954 0 0.12500919
		 0 0 0.03333316 0 0.033333316 0.12501147 0.06666632 2.1593945e-07 0.066666722 0.12501259
		 0.10000001 4.2610171e-07 0.099999905 0.12501241 0.1333333 1.307707e-07 0.13333334
		 0.12501195 0.16666667 0 0.16666631 0.12501335 0.2 0 0.2 0.12501322 0.23333326 0 0.23333339
		 0.1250121 0.26666668 0 0.26666662 0.1250121 0.29999971 0 0.30000001 0.12501262 0.3333331
		 0 0.33333385 0.12501325 0.36666667 0 0.36666667 0.1250128 0.40000001 2.8482364e-07
		 0.40000048 0.12501368 0.43333334 0 0.43333334 0.12501436 0.4666667 1.6872749e-06
		 0.46666691 0.12501435 0.5 3.0232948e-06 0.5 0.12501305 0.53333336 1.2644566e-06 0.53333336
		 0.12501442 0.56666672 9.7821953e-07 0.56666678 0.12501404 0.60000002 5.0228778e-07
		 0.60000008 0.12501401 0.63333338 3.6749617e-07 0.63333362 0.12501344 0.66666675 2.9171488e-07
		 0.66666663 0.12501425 0.69999999 4.5803108e-07 0.70000023 0.12501307 0.73333347 5.7372313e-07
		 0.73333365 0.12501335 0.76666683 7.8703954e-07 0.76666683 0.12501338 0.80000019 3.1652814e-07
		 0.80000019 0.12501311 0.83333331 4.7949089e-07 0.83333397 0.12501357 0.86666691 4.164531e-07
		 0.86666685 0.12501335 0.90000015 5.9953089e-07 0.90000033 0.12501177 0.9333334 8.3894082e-07
		 0.93333369 0.1250135 0.96666676 0 0.96666682 0.12501287 0.99999988 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 150 ".pt[0:149]" -type "float3"  -3.1871309 5.5899124 2.3799572 
		-3.1806803 5.5861225 2.4052715 -3.1616096 5.5749168 2.4294786 -3.1307516 5.5567856 
		2.4515226 -3.0894556 5.5325212 2.470438 -3.039526 5.5031843 2.4853988 -2.9831457 
		5.4700565 2.4957516 -2.9227791 5.434587 2.501044 -2.861063 5.3983245 2.501044 -2.8006964 
		5.3628545 2.4957516 -2.7443161 5.3297272 2.4853988 -2.6943865 5.3003902 2.470438 
		-2.6530905 5.2761259 2.4515226 -2.6222324 5.2579942 2.4294786 -2.6031609 5.2467885 
		2.4052715 -2.5967083 5.2429972 2.3799572 -2.6031609 5.2467885 2.3546433 -2.6222324 
		5.2579942 2.3304358 -2.6530905 5.2761259 2.3083923 -2.6943865 5.3003902 2.2894769 
		-2.7443161 5.3297272 2.2745156 -2.8006954 5.362854 2.2641633 -2.861063 5.3983245 
		2.2588708 -2.9227791 5.434587 2.2588708 -2.9831467 5.470057 2.2641633 -3.039526 5.5031843 
		2.2745156 -3.0894556 5.5325212 2.2894769 -3.1307516 5.5567856 2.3083923 -3.1616096 
		5.5749168 2.3304358 -3.1806803 5.5861225 2.3546433 -3.2952099 5.2662029 2.3799572 
		-3.2887592 5.262413 2.4052715 -3.2696886 5.2512074 2.4294786 -3.2388306 5.2330761 
		2.4515226 -3.1975346 5.2088118 2.470438 -3.1476049 5.1794748 2.4853988 -3.0912247 
		5.146347 2.4957516 -3.030858 5.1108775 2.501044 -2.969142 5.074615 2.501044 -2.9087753 
		5.039145 2.4957516 -2.8523951 5.0060177 2.4853988 -2.8024654 4.9766808 2.470438 -2.7611694 
		4.9524164 2.4515226 -2.7303114 4.9342847 2.4294786 -2.7112398 4.923079 2.4052715 
		-2.7047873 4.9192877 2.3799572 -2.7112398 4.923079 2.3546433 -2.7303114 4.9342847 
		2.3304358 -2.7611694 4.9524164 2.3083923 -2.8024654 4.9766808 2.2894769 -2.8523951 
		5.0060177 2.2745156 -2.9087744 5.0391445 2.2641633 -2.969142 5.074615 2.2588708 -3.030858 
		5.1108775 2.2588708 -3.0912256 5.1463475 2.2641633 -3.1476049 5.1794748 2.2745156 
		-3.1975346 5.2088118 2.2894769 -3.2388306 5.2330761 2.3083923 -3.2696886 5.2512074 
		2.3304358 -3.2887592 5.262413 2.3546433 -3.4452105 5.3543391 2.3799572 -3.4354811 
		5.3486223 2.4181335 -3.4067192 5.3317227 2.4546413 -3.3601828 5.3043795 2.487885 
		-3.297904 5.267786 2.5164118 -3.2226057 5.2235427 2.5389748 -3.1375771 5.1735826 
		2.5545881 -3.0465355 5.1200891 2.5625691 -2.9534626 5.065402 2.5625691 -2.862422 
		5.0119095 2.5545881 -2.7773943 4.9619493 2.5389748 -2.702096 4.9177065 2.5164118 
		-2.6398163 4.8811126 2.487885 -2.5932798 4.8537693 2.4546413 -2.564518 4.8368692 
		2.4181335 -2.5547895 4.8311534 2.3799572 -2.564518 4.8368692 2.3417814 -2.5932798 
		4.8537693 2.3052735 -2.6398163 4.8811126 2.2720296 -2.702096 4.9177065 2.2435026 
		-2.7773943 4.9619493 2.2209399 -2.862422 5.0119095 2.2053266 -2.9534626 5.065402 
		2.1973453 -3.0465355 5.1200891 2.1973453 -3.137578 5.173583 2.2053266 -3.2226057 
		5.2235427 2.2209401 -3.297904 5.267786 2.2435026 -3.3601828 5.3043795 2.2720296 -3.4067192 
		5.3317227 2.3052735 -3.435482 5.3486228 2.3417814 -3.3766708 5.5596232 2.3799572 
		-3.2621374 5.6339841 2.379957 -3.3669415 5.5539064 2.4181335 -3.2540483 5.6292315 
		2.4117033 -3.3381796 5.5370069 2.4546413 -3.2301321 5.6151786 2.4420614 -3.2916431 
		5.5096636 2.487885 -3.1914339 5.5924411 2.4697053 -3.2293644 5.4730701 2.5164118 
		-3.1396456 5.5620117 2.4934273 -3.1540661 5.4288268 2.5389748 -3.0770311 5.5252209 
		2.5121896 -3.0690374 5.3788667 2.5545881 -3.0063229 5.483675 2.5251729 -2.9779959 
		5.3253732 2.5625691 -2.9306192 5.4391937 2.5318096 -2.884923 5.2706861 2.5625691 
		-2.8532228 5.3937178 2.5318096 -2.7938824 5.2171936 2.5545881 -2.7775164 5.3492346 
		2.5251729 -2.7088547 5.1672335 2.5389748 -2.706811 5.3076901 2.5121896 -2.6335564 
		5.1229906 2.5164118 -2.6441965 5.2708998 2.4934273 -2.5712767 5.0863967 2.487885 
		-2.5924063 5.2404695 2.4697053 -2.5247402 5.0590534 2.4546413 -2.5537081 5.2177315 
		2.4420612 -2.4959784 5.0421534 2.4181335 -2.5297918 5.2036791 2.4117033 -2.4862499 
		5.0364375 2.3799572 -2.5217028 5.198926 2.3799572 -2.4959784 5.0421534 2.3417814 
		-2.5297918 5.2036791 2.3482115 -2.5247402 5.0590534 2.3052735 -2.5537081 5.2177315 
		2.3178532 -2.5712767 5.0863967 2.2720296 -2.5924063 5.2404695 2.2902093 -2.6335564 
		5.1229906 2.2435026 -2.6441965 5.2708998 2.2664874 -2.7088547 5.1672335 2.2209399 
		-2.706811 5.3076901 2.247725 -2.7938824 5.2171936 2.2053266 -2.7775164 5.3492346 
		2.2347419 -2.884923 5.2706861 2.1973453 -2.8532228 5.3937178 2.2281051 -2.9779959 
		5.3253732 2.1973453 -2.9306192 5.4391937 2.2281051 -3.0690384 5.3788671 2.2053266 
		-3.0063248 5.483676 2.2347419 -3.1540661 5.4288268 2.2209401 -3.0770311 5.5252209 
		2.2477252 -3.2293644 5.4730701 2.2435026 -3.1396456 5.5620117 2.2664874 -3.2916431 
		5.5096636 2.2720296 -3.1914339 5.5924411 2.2902093 -3.3381796 5.5370069 2.3052735 
		-3.2301331 5.6151795 2.3178532 -3.3669424 5.5539069 2.3417814 -3.2540493 5.6292319 
		2.3482113;
	setAttr -s 150 ".vt[0:149]"  0.29520988 -0.16185474 9.5367432e-07 0.28875923 -0.16185474 -0.061377525
		 0.26968861 -0.16185474 -0.12007189 0.23883057 -0.16185474 -0.17352057 0.19753456 -0.16185474 -0.21938419
		 0.14760494 -0.16185474 -0.2556591 0.09122467 -0.16185474 -0.28076124 0.03085804 -0.16185474 -0.29359341
		 -0.03085804 -0.16185474 -0.29359341 -0.09122467 -0.16185474 -0.28076124 -0.14760494 -0.16185474 -0.2556591
		 -0.19753456 -0.16185474 -0.21938419 -0.23883057 -0.16185474 -0.17352057 -0.26968861 -0.16185474 -0.12007189
		 -0.28876019 -0.16185474 -0.061377525 -0.29521275 -0.16185474 9.5367432e-07 -0.28876019 -0.16185474 0.061378479
		 -0.26968861 -0.16185474 0.1200738 -0.23883057 -0.16185474 0.17352152 -0.19753456 -0.16185474 0.21938515
		 -0.14760494 -0.16185474 0.25566101 -0.091225624 -0.16185474 0.2807622 -0.03085804 -0.16185474 0.29359436
		 0.03085804 -0.16185474 0.29359436 0.091225624 -0.16185474 0.2807622 0.14760494 -0.16185474 0.25566101
		 0.19753456 -0.16185474 0.21938515 0.23883057 -0.16185474 0.17352152 0.26968861 -0.16185474 0.1200738
		 0.28875923 -0.16185474 0.061378479 0.29520988 0.16185474 9.5367432e-07 0.28875923 0.16185474 -0.061377525
		 0.26968861 0.16185474 -0.12007189 0.23883057 0.16185474 -0.17352057 0.19753456 0.16185474 -0.21938419
		 0.14760494 0.16185474 -0.2556591 0.09122467 0.16185474 -0.28076124 0.03085804 0.16185474 -0.29359341
		 -0.03085804 0.16185474 -0.29359341 -0.09122467 0.16185474 -0.28076124 -0.14760494 0.16185474 -0.2556591
		 -0.19753456 0.16185474 -0.21938419 -0.23883057 0.16185474 -0.17352057 -0.26968861 0.16185474 -0.12007189
		 -0.28876019 0.16185474 -0.061377525 -0.29521275 0.16185474 9.5367432e-07 -0.28876019 0.16185474 0.061378479
		 -0.26968861 0.16185474 0.1200738 -0.23883057 0.16185474 0.17352152 -0.19753456 0.16185474 0.21938515
		 -0.14760494 0.16185474 0.25566101 -0.091225624 0.16185474 0.2807622 -0.03085804 0.16185474 0.29359436
		 0.03085804 0.16185474 0.29359436 0.091225624 0.16185474 0.2807622 0.14760494 0.16185474 0.25566101
		 0.19753456 0.16185474 0.21938515 0.23883057 0.16185474 0.17352152 0.26968861 0.16185474 0.1200738
		 0.28875923 0.16185474 0.061378479 0.44521046 0.16185474 9.5367432e-07 0.43548107 0.16185474 -0.092563629
		 0.40671921 0.16185474 -0.18108273 0.36018276 0.16185474 -0.26168728 0.29790401 0.16185474 -0.33085489
		 0.22260571 0.16185474 -0.3855629 0.13757706 0.16185474 -0.42341995 0.046535492 0.16185474 -0.44277096
		 -0.046537399 0.16185474 -0.44277096 -0.13757801 0.16185474 -0.42341995 -0.22260571 0.16185474 -0.3855629
		 -0.29790401 0.16185474 -0.33085489 -0.36018372 0.16185474 -0.26168728 -0.40672016 0.16185474 -0.18108273
		 -0.43548203 0.16185474 -0.092563629 -0.44521046 0.16185474 9.5367432e-07 -0.43548203 0.16185474 0.092564583
		 -0.40672016 0.16185474 0.18108368 -0.36018372 0.16185474 0.26168871 -0.29790401 0.16185474 0.33085728
		 -0.22260571 0.16185474 0.38556433 -0.13757801 0.16185474 0.42342091 -0.046537399 0.16185474 0.44277287
		 0.046535492 0.16185474 0.44277287 0.13757801 0.16185474 0.42342091 0.22260571 0.16185474 0.38556385
		 0.29790401 0.16185474 0.33085728 0.36018276 0.16185474 0.26168871 0.40671921 0.16185474 0.18108368
		 0.43548203 0.16185474 0.092564583 0.44521046 -0.043429375 9.5367432e-07 0.37021637 -0.16185474 1.4305115e-06
		 0.43548107 -0.043429375 -0.092563629 0.3621273 -0.16185474 -0.076972485 0.40671921 -0.043429375 -0.18108273
		 0.33821106 -0.16185474 -0.15058088 0.36018276 -0.043429375 -0.26168728 0.29951286 -0.16185474 -0.21760798
		 0.29790401 -0.043429375 -0.33085489 0.24772453 -0.16185474 -0.2751255 0.22260571 -0.043429375 -0.3855629
		 0.18511009 -0.16185474 -0.32061768 0.13757706 -0.043429375 -0.42341995 0.11440182 -0.16185474 -0.35209799
		 0.046535492 -0.043429375 -0.44277096 0.038698196 -0.16185474 -0.36818933 -0.046537399 -0.043429375 -0.44277096
		 -0.038698196 -0.16185474 -0.36818933 -0.13757801 -0.043429375 -0.42341995 -0.11440468 -0.16185474 -0.35209799
		 -0.22260571 -0.043429375 -0.3855629 -0.18511009 -0.16185474 -0.32061768 -0.29790401 -0.043429375 -0.33085489
		 -0.24772453 -0.16185474 -0.2751255 -0.36018372 -0.043429375 -0.26168728 -0.29951477 -0.16185474 -0.21760798
		 -0.40672016 -0.043429375 -0.18108273 -0.33821297 -0.16185474 -0.15058041 -0.43548203 -0.043429375 -0.092563629
		 -0.36212921 -0.16185474 -0.076972485 -0.44521046 -0.043429375 9.5367432e-07 -0.37021828 -0.16185474 9.5367432e-07
		 -0.43548203 -0.043429375 0.092564583 -0.36212921 -0.16185474 0.076973438 -0.40672016 -0.043429375 0.18108368
		 -0.33821297 -0.16185474 0.15058231 -0.36018372 -0.043429375 0.26168871 -0.29951477 -0.16185474 0.21760941
		 -0.29790401 -0.043429375 0.33085728 -0.24772453 -0.16185474 0.27512693 -0.22260571 -0.043429375 0.38556433
		 -0.18511009 -0.16185474 0.32061911 -0.13757801 -0.043429375 0.42342091 -0.11440468 -0.16185474 0.35209894
		 -0.046537399 -0.043429375 0.44277287 -0.038698196 -0.16185474 0.36819077 0.046535492 -0.043429375 0.44277287
		 0.038698196 -0.16185474 0.36819077 0.13757801 -0.043429375 0.42342091 0.11440372 -0.16185474 0.35209894
		 0.22260571 -0.043429375 0.38556385 0.18511009 -0.16185474 0.32061863 0.29790401 -0.043429375 0.33085728
		 0.24772453 -0.16185474 0.27512693 0.36018276 -0.043429375 0.26168871 0.29951286 -0.16185474 0.21760941
		 0.40671921 -0.043429375 0.18108368 0.33821201 -0.16185474 0.15058231 0.43548203 -0.043429375 0.092564583
		 0.36212826 -0.16185474 0.076973915;
	setAttr -s 300 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 0 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 30 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 84 0 84 85 0 85 86 0
		 86 87 0 87 88 0 88 89 0 89 60 0 0 30 1 1 31 1 2 32 1 3 33 1 4 34 1 5 35 1 6 36 1
		 7 37 1 8 38 1 9 39 1 10 40 1 11 41 1 12 42 1 13 43 1 14 44 1 15 45 1 16 46 1 17 47 1
		 18 48 1 19 49 1 20 50 1 21 51 1 22 52 1 23 53 1 24 54 1 25 55 1 26 56 1 27 57 1 28 58 1
		 29 59 1 30 60 1 31 61 1 32 62 1 33 63 1 34 64 1 35 65 1 36 66 1 37 67 1 38 68 1 39 69 1
		 40 70 1 41 71 1 42 72 1 43 73 1 44 74 1 45 75 1 46 76 1 47 77 1 48 78 1 49 79 1 50 80 1
		 51 81 1 52 82 1 53 83 1 54 84 1 55 85 1 56 86 1 57 87 1 58 88 1 59 89 1 90 91 1 91 93 0
		 93 92 1 92 90 0 90 148 0 148 149 1 149 91 0 93 95 0 95 94 1 94 92 0 95 97 0 97 96 1
		 96 94 0 97 99 0 99 98 1 98 96 0;
	setAttr ".ed[166:299]" 99 101 0 101 100 1 100 98 0 101 103 0 103 102 1 102 100 0
		 103 105 0 105 104 1 104 102 0 105 107 0 107 106 1 106 104 0 107 109 0 109 108 1 108 106 0
		 109 111 0 111 110 1 110 108 0 111 113 0 113 112 1 112 110 0 113 115 0 115 114 1 114 112 0
		 115 117 0 117 116 1 116 114 0 117 119 0 119 118 1 118 116 0 119 121 0 121 120 1 120 118 0
		 121 123 0 123 122 1 122 120 0 123 125 0 125 124 1 124 122 0 125 127 0 127 126 1 126 124 0
		 127 129 0 129 128 1 128 126 0 129 131 0 131 130 1 130 128 0 131 133 0 133 132 1 132 130 0
		 133 135 0 135 134 1 134 132 0 135 137 0 137 136 1 136 134 0 137 139 0 139 138 1 138 136 0
		 139 141 0 141 140 1 140 138 0 141 143 0 143 142 1 142 140 0 143 145 0 145 144 1 144 142 0
		 145 147 0 147 146 1 146 144 0 147 149 0 148 146 0 60 90 1 92 61 1 94 62 1 96 63 1
		 98 64 1 100 65 1 102 66 1 104 67 1 106 68 1 108 69 1 110 70 1 112 71 1 114 72 1 116 73 1
		 118 74 1 120 75 1 122 76 1 124 77 1 126 78 1 128 79 1 130 80 1 132 81 1 134 82 1
		 136 83 1 138 84 1 140 85 1 142 86 1 144 87 1 146 88 1 148 89 1 91 0 1 1 93 1 2 95 1
		 3 97 1 4 99 1 5 101 1 6 103 1 7 105 1 8 107 1 9 109 1 10 111 1 11 113 1 12 115 1
		 13 117 1 14 119 1 15 121 1 16 123 1 17 125 1 18 127 1 19 129 1 20 131 1 21 133 1
		 22 135 1 23 137 1 24 139 1 25 141 1 26 143 1 27 145 1 28 147 1 29 149 1;
	setAttr -s 150 -ch 600 ".fc[0:149]" -type "polyFaces" 
		f 4 -1 90 30 -92
		mu 0 4 1 0 31 32
		f 4 -2 91 31 -93
		mu 0 4 2 1 32 33
		f 4 -3 92 32 -94
		mu 0 4 3 2 33 34
		f 4 -4 93 33 -95
		mu 0 4 4 3 34 35
		f 4 -5 94 34 -96
		mu 0 4 5 4 35 36
		f 4 -6 95 35 -97
		mu 0 4 6 5 36 37
		f 4 -7 96 36 -98
		mu 0 4 7 6 37 38
		f 4 -8 97 37 -99
		mu 0 4 8 7 38 39
		f 4 -9 98 38 -100
		mu 0 4 9 8 39 40
		f 4 -10 99 39 -101
		mu 0 4 10 9 40 41
		f 4 -11 100 40 -102
		mu 0 4 11 10 41 42
		f 4 -12 101 41 -103
		mu 0 4 12 11 42 43
		f 4 -13 102 42 -104
		mu 0 4 13 12 43 44
		f 4 -14 103 43 -105
		mu 0 4 14 13 44 45
		f 4 -15 104 44 -106
		mu 0 4 15 14 45 46
		f 4 -16 105 45 -107
		mu 0 4 16 15 46 47
		f 4 -17 106 46 -108
		mu 0 4 17 16 47 48
		f 4 -18 107 47 -109
		mu 0 4 18 17 48 49
		f 4 -19 108 48 -110
		mu 0 4 19 18 49 50
		f 4 -20 109 49 -111
		mu 0 4 20 19 50 51
		f 4 -21 110 50 -112
		mu 0 4 21 20 51 52
		f 4 -22 111 51 -113
		mu 0 4 22 21 52 53
		f 4 -23 112 52 -114
		mu 0 4 23 22 53 54
		f 4 -24 113 53 -115
		mu 0 4 24 23 54 55
		f 4 -25 114 54 -116
		mu 0 4 25 24 55 56
		f 4 -26 115 55 -117
		mu 0 4 26 25 56 57
		f 4 -27 116 56 -118
		mu 0 4 27 26 57 58
		f 4 -28 117 57 -119
		mu 0 4 28 27 58 59
		f 4 -29 118 58 -120
		mu 0 4 29 28 59 60
		f 4 -30 119 59 -91
		mu 0 4 30 29 60 61
		f 4 -31 120 60 -122
		mu 0 4 32 31 65 67
		f 4 -32 121 61 -123
		mu 0 4 33 32 67 69
		f 4 -33 122 62 -124
		mu 0 4 34 33 69 71
		f 4 -34 123 63 -125
		mu 0 4 35 34 71 73
		f 4 -35 124 64 -126
		mu 0 4 36 35 73 75
		f 4 -36 125 65 -127
		mu 0 4 37 36 75 77
		f 4 -37 126 66 -128
		mu 0 4 38 37 77 79
		f 4 -38 127 67 -129
		mu 0 4 39 38 79 81
		f 4 -39 128 68 -130
		mu 0 4 40 39 81 83
		f 4 -40 129 69 -131
		mu 0 4 41 40 83 85
		f 4 -41 130 70 -132
		mu 0 4 42 41 85 87
		f 4 -42 131 71 -133
		mu 0 4 43 42 87 89
		f 4 -43 132 72 -134
		mu 0 4 44 43 89 91
		f 4 -44 133 73 -135
		mu 0 4 45 44 91 93
		f 4 -45 134 74 -136
		mu 0 4 46 45 93 95
		f 4 -46 135 75 -137
		mu 0 4 47 46 95 97
		f 4 -47 136 76 -138
		mu 0 4 48 47 97 99
		f 4 -48 137 77 -139
		mu 0 4 49 48 99 101
		f 4 -49 138 78 -140
		mu 0 4 50 49 101 103
		f 4 -50 139 79 -141
		mu 0 4 51 50 103 105
		f 4 -51 140 80 -142
		mu 0 4 52 51 105 107
		f 4 -52 141 81 -143
		mu 0 4 53 52 107 109
		f 4 -53 142 82 -144
		mu 0 4 54 53 109 111
		f 4 -54 143 83 -145
		mu 0 4 55 54 111 113
		f 4 -55 144 84 -146
		mu 0 4 56 55 113 115
		f 4 -56 145 85 -147
		mu 0 4 57 56 115 117
		f 4 -57 146 86 -148
		mu 0 4 58 57 117 119
		f 4 -58 147 87 -149
		mu 0 4 59 58 119 121
		f 4 -59 148 88 -150
		mu 0 4 60 59 121 123
		f 4 -60 149 89 -121
		mu 0 4 61 60 123 62
		f 4 150 151 152 153
		mu 0 4 63 125 128 66
		f 4 -151 154 155 156
		mu 0 4 64 124 122 184
		f 4 -153 157 158 159
		mu 0 4 66 128 130 68
		f 4 -159 160 161 162
		mu 0 4 68 130 132 70
		f 4 -162 163 164 165
		mu 0 4 70 132 134 72
		f 4 -165 166 167 168
		mu 0 4 72 134 136 74
		f 4 -168 169 170 171
		mu 0 4 74 136 138 76
		f 4 -171 172 173 174
		mu 0 4 76 138 140 78
		f 4 -174 175 176 177
		mu 0 4 78 140 142 80
		f 4 -177 178 179 180
		mu 0 4 80 142 144 82
		f 4 -180 181 182 183
		mu 0 4 82 144 146 84
		f 4 -183 184 185 186
		mu 0 4 84 146 148 86
		f 4 -186 187 188 189
		mu 0 4 86 148 150 88
		f 4 -189 190 191 192
		mu 0 4 88 150 152 90
		f 4 -192 193 194 195
		mu 0 4 90 152 154 92
		f 4 -195 196 197 198
		mu 0 4 92 154 156 94
		f 4 -198 199 200 201
		mu 0 4 94 156 158 96
		f 4 -201 202 203 204
		mu 0 4 96 158 160 98
		f 4 -204 205 206 207
		mu 0 4 98 160 162 100
		f 4 -207 208 209 210
		mu 0 4 100 162 164 102
		f 4 -210 211 212 213
		mu 0 4 102 164 166 104
		f 4 -213 214 215 216
		mu 0 4 104 166 168 106
		f 4 -216 217 218 219
		mu 0 4 106 168 170 108
		f 4 -219 220 221 222
		mu 0 4 108 170 172 110
		f 4 -222 223 224 225
		mu 0 4 110 172 174 112
		f 4 -225 226 227 228
		mu 0 4 112 174 176 114
		f 4 -228 229 230 231
		mu 0 4 114 176 178 116
		f 4 -231 232 233 234
		mu 0 4 116 178 180 118
		f 4 -234 235 236 237
		mu 0 4 118 180 182 120
		f 4 -237 238 -156 239
		mu 0 4 120 182 184 122
		f 4 -61 240 -154 241
		mu 0 4 67 65 63 66
		f 4 -62 -242 -160 242
		mu 0 4 69 67 66 68
		f 4 -63 -243 -163 243
		mu 0 4 71 69 68 70
		f 4 -64 -244 -166 244
		mu 0 4 73 71 70 72
		f 4 -65 -245 -169 245
		mu 0 4 75 73 72 74
		f 4 -66 -246 -172 246
		mu 0 4 77 75 74 76
		f 4 -67 -247 -175 247
		mu 0 4 79 77 76 78
		f 4 -68 -248 -178 248
		mu 0 4 81 79 78 80
		f 4 -69 -249 -181 249
		mu 0 4 83 81 80 82
		f 4 -70 -250 -184 250
		mu 0 4 85 83 82 84
		f 4 -71 -251 -187 251
		mu 0 4 87 85 84 86
		f 4 -72 -252 -190 252
		mu 0 4 89 87 86 88
		f 4 -73 -253 -193 253
		mu 0 4 91 89 88 90
		f 4 -74 -254 -196 254
		mu 0 4 93 91 90 92
		f 4 -75 -255 -199 255
		mu 0 4 95 93 92 94
		f 4 -76 -256 -202 256
		mu 0 4 97 95 94 96
		f 4 -77 -257 -205 257
		mu 0 4 99 97 96 98
		f 4 -78 -258 -208 258
		mu 0 4 101 99 98 100
		f 4 -79 -259 -211 259
		mu 0 4 103 101 100 102
		f 4 -80 -260 -214 260
		mu 0 4 105 103 102 104
		f 4 -81 -261 -217 261
		mu 0 4 107 105 104 106
		f 4 -82 -262 -220 262
		mu 0 4 109 107 106 108
		f 4 -83 -263 -223 263
		mu 0 4 111 109 108 110
		f 4 -84 -264 -226 264
		mu 0 4 113 111 110 112
		f 4 -85 -265 -229 265
		mu 0 4 115 113 112 114
		f 4 -86 -266 -232 266
		mu 0 4 117 115 114 116
		f 4 -87 -267 -235 267
		mu 0 4 119 117 116 118
		f 4 -88 -268 -238 268
		mu 0 4 121 119 118 120
		f 4 -89 -269 -240 269
		mu 0 4 123 121 120 122
		f 4 -90 -270 -155 -241
		mu 0 4 62 123 122 124
		f 4 -152 270 0 271
		mu 0 4 128 125 126 127
		f 4 -158 -272 1 272
		mu 0 4 130 128 127 129
		f 4 -161 -273 2 273
		mu 0 4 132 130 129 131
		f 4 -164 -274 3 274
		mu 0 4 134 132 131 133
		f 4 -167 -275 4 275
		mu 0 4 136 134 133 135
		f 4 -170 -276 5 276
		mu 0 4 138 136 135 137
		f 4 -173 -277 6 277
		mu 0 4 140 138 137 139
		f 4 -176 -278 7 278
		mu 0 4 142 140 139 141
		f 4 -179 -279 8 279
		mu 0 4 144 142 141 143
		f 4 -182 -280 9 280
		mu 0 4 146 144 143 145
		f 4 -185 -281 10 281
		mu 0 4 148 146 145 147
		f 4 -188 -282 11 282
		mu 0 4 150 148 147 149
		f 4 -191 -283 12 283
		mu 0 4 152 150 149 151
		f 4 -194 -284 13 284
		mu 0 4 154 152 151 153
		f 4 -197 -285 14 285
		mu 0 4 156 154 153 155
		f 4 -200 -286 15 286
		mu 0 4 158 156 155 157
		f 4 -203 -287 16 287
		mu 0 4 160 158 157 159
		f 4 -206 -288 17 288
		mu 0 4 162 160 159 161
		f 4 -209 -289 18 289
		mu 0 4 164 162 161 163
		f 4 -212 -290 19 290
		mu 0 4 166 164 163 165
		f 4 -215 -291 20 291
		mu 0 4 168 166 165 167
		f 4 -218 -292 21 292
		mu 0 4 170 168 167 169
		f 4 -221 -293 22 293
		mu 0 4 172 170 169 171
		f 4 -224 -294 23 294
		mu 0 4 174 172 171 173
		f 4 -227 -295 24 295
		mu 0 4 176 174 173 175
		f 4 -230 -296 25 296
		mu 0 4 178 176 175 177
		f 4 -233 -297 26 297
		mu 0 4 180 178 177 179
		f 4 -236 -298 27 298
		mu 0 4 182 180 179 181
		f 4 -239 -299 28 299
		mu 0 4 184 182 181 183
		f 4 -157 -300 29 -271
		mu 0 4 64 184 183 185;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere1" -p "WallLight";
	rename -uid "ABF7EA50-494A-3896-4D47-5DA2386E32EF";
	setAttr ".rp" -type "double3" -2.9680663950043544 5.2553364898992854 2.3797527663487337 ;
	setAttr ".sp" -type "double3" -2.9680663950043544 5.2553364898992854 2.3797527663487337 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "55898B3B-4929-529F-5EFF-9385534B9605";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -2.9564402 6.269804 2.4193926 -2.9342203 
		6.2658048 2.4551523 -2.8996119 6.2595754 2.4835312 -2.856003 6.2517262 2.5017517 
		-2.807662 6.2430248 2.5080299 -2.759321 6.234324 2.5017517 -2.7157121 6.2264743 2.4835312 
		-2.6811039 6.2202449 2.4551523 -2.658884 6.2162457 2.4193926 -2.6512275 6.2148676 
		2.3797529 -2.658884 6.2162457 2.3401129 -2.6811039 6.2202449 2.3043532 -2.7157121 
		6.2264743 2.2759743 -2.7593212 6.234324 2.2577538 -2.807662 6.2430248 2.2514756 -2.856003 
		6.2517262 2.2577538 -2.8996119 6.2595754 2.2759743 -2.9342201 6.2658048 2.3043532 
		-2.95644 6.269804 2.3401129 -2.9640965 6.2711821 2.3797529 -3.1075039 6.2592921 2.4580564 
		-3.0636113 6.2513914 2.5286951 -2.9952469 6.2390866 2.5847545 -2.9091027 6.2235808 
		2.6207466 -2.8136113 6.2063932 2.6331487 -2.7181196 6.1892052 2.6207466 -2.6319754 
		6.1736999 2.5847542 -2.563611 6.1613946 2.5286951 -2.5197184 6.1534939 2.4580564 
		-2.5045941 6.1507716 2.3797529 -2.5197184 6.1534939 2.3014491 -2.563611 6.1613946 
		2.2308104 -2.6319754 6.1736999 2.1747513 -2.7181196 6.1892052 2.1387591 -2.8136113 
		6.2063932 2.1263571 -2.9091027 6.2235808 2.1387591 -2.9952469 6.2390862 2.1747513 
		-3.0636113 6.2513914 2.2308104 -3.1075039 6.2592921 2.3014491 -3.1226282 6.2620144 
		2.3797529 -3.2551343 6.2240591 2.494792 -3.1906497 6.2124524 2.5985706 -3.0902126 
		6.1943741 2.6809297 -2.9636543 6.1715946 2.7338073 -2.8233635 6.1463432 2.7520278 
		-2.6830726 6.1210914 2.7338073 -2.5565145 6.0983119 2.6809297 -2.4560773 6.0802336 
		2.5985706 -2.3915927 6.0686269 2.494792 -2.3693728 6.0646272 2.3797529 -2.3915927 
		6.0686269 2.2647135 -2.4560773 6.0802336 2.1609349 -2.5565145 6.0983119 2.0785761 
		-2.6830728 6.1210914 2.0256982 -2.8233635 6.1463432 2.0074778 -2.9636543 6.1715946 
		2.0256982 -3.0902123 6.1943741 2.0785761 -3.1906495 6.2124524 2.1609352 -3.2551341 
		6.2240591 2.2647135 -3.277354 6.2280588 2.3797529 -3.3956964 6.1649733 2.5286951 
		-3.3122075 6.1499457 2.663058 -3.1821706 6.1265402 2.7696888 -3.0183146 6.0970469 
		2.8381503 -2.836679 6.0643535 2.8617404 -2.6550431 6.0316601 2.8381503 -2.4911873 
		6.0021672 2.7696888 -2.3611505 5.9787612 2.6630578 -2.2776618 5.9637337 2.5286951 
		-2.2488935 5.9585557 2.3797529 -2.2776618 5.9637337 2.2308104 -2.3611505 5.9787612 
		2.0964477 -2.4911873 6.0021672 1.9898168 -2.6550434 6.0316601 1.9213555 -2.836679 
		6.0643535 1.8977654 -3.0183146 6.0970469 1.9213555 -3.1821704 6.1265397 1.9898168 
		-3.3122072 6.1499457 2.0964477 -3.3956959 6.1649733 2.2308104 -3.4244642 6.1701512 
		2.3797529 -3.5257285 6.0834889 2.5589306 -3.4252913 6.0654111 2.7205694 -3.2688568 
		6.0372539 2.8488467 -3.0717378 6.0017734 2.9312057 -2.8532295 5.9624434 2.9595847 
		-2.6347215 5.9231129 2.9312057 -2.4376025 5.8876328 2.8488467 -2.281168 5.8594756 
		2.7205694 -2.1807308 5.8413973 2.5589306 -2.1461227 5.8351684 2.3797529 -2.1807308 
		5.8413973 2.2005749 -2.281168 5.8594756 2.0389361 -2.4376025 5.8876328 1.910659 -2.6347215 
		5.9231129 1.8283 -2.8532295 5.9624434 1.799921 -3.0717375 6.0017734 1.8283 -3.2688565 
		6.0372539 1.9106591 -3.4252911 6.0654111 2.0389361 -3.525728 6.0834889 2.2005749 
		-3.5603364 6.0897183 2.3797529 -3.6420293 5.9816132 2.5847545 -3.5271168 5.9609294 
		2.7696888 -3.3481364 5.9287143 2.9164538 -3.1226079 5.8881202 3.0106828 -2.8726077 
		5.8431215 3.0431519 -2.6226077 5.7981234 3.0106826 -2.3970795 5.7575293 2.9164538 
		-2.2180991 5.7253141 2.7696888 -2.1031866 5.7046304 2.5847542 -2.0635905 5.6975036 
		2.3797529 -2.1031866 5.7046304 2.1747513 -2.2180991 5.7253141 1.9898167 -2.3970795 
		5.7575293 1.8430519 -2.6226077 5.7981234 1.748823 -2.8726077 5.8431215 1.716354 -3.1226077 
		5.8881202 1.748823 -3.3481362 5.9287138 1.8430519 -3.5271163 5.9609294 1.9898168 
		-3.6420288 5.9816132 2.1747513 -3.6816249 5.98874 2.3797529 -3.7417347 5.8618536 
		2.6055303 -3.6151764 5.8390741 2.809207 -3.4180574 5.8035936 2.9708457 -3.169673 
		5.7588859 3.0746241 -2.8943367 5.7093272 3.1103837 -2.6190002 5.6597681 3.0746241 
		-2.370616 5.6150603 2.9708455 -2.173497 5.5795803 2.8092067 -2.0469389 5.5568004 
		2.60553 -2.0033298 5.5489511 2.3797529 -2.0469389 5.5568004 2.1539755 -2.173497 5.5795803 
		1.9502988 -2.370616 5.6150603 1.78866 -2.6190004 5.6597681 1.6848817 -2.8943365 5.7093272 
		1.6491221 -3.1696727 5.7588859 1.6848818 -3.4180572 5.8035936 1.7886602 -3.615176 
		5.8390737 1.9502988 -3.7417343 5.8618536 2.1539755 -3.7853432 5.8697028 2.3797529 
		-3.8223901 5.72716 2.6207466 -3.6873024 5.7028446 2.8381503 -3.4768982 5.6649733 
		3.0106828 -3.2117736 5.6172523 3.1214554 -2.9178808 5.5643535 3.1596251 -2.6239882 
		5.5114546 3.1214554 -2.3588636 5.4637337 3.0106826 -2.1484597 5.4258623 2.83815 -2.0133722 
		5.401547 2.6207466 -1.9668241 5.3931689 2.3797529 -2.0133722 5.401547 2.1387591 -2.1484597 
		5.4258623 1.9213555 -2.3588638 5.4637337 1.748823 -2.6239882 5.5114546 1.6380503 
		-2.9178808 5.5643535 1.5998807 -3.2117734 5.6172523 1.6380504 -3.476898 5.6649733 
		1.748823 -3.6873019 5.7028446 1.9213555 -3.8223894 5.7271595 2.1387591 -3.8689375 
		5.735538 2.3797529 -3.8820088 5.5808482 2.630029 -3.7417181 5.5555964 2.8558064 -3.5232098 
		5.5162663 3.0349844 -3.2478735 5.4667072 3.1500235 -2.9426608 5.4117708 3.1896634 
		-2.6374483 5.3568344 3.1500235;
	setAttr ".pt[166:331]" -2.362112 5.3072753 3.0349841 -2.143604 5.2679453 2.8558061 
		-2.0033131 5.2426939 2.630029 -1.9549723 5.2339926 2.3797529 -2.0033131 5.2426939 
		2.1294768 -2.143604 5.2679453 1.9036994 -2.362112 5.3072753 1.7245215 -2.6374483 
		5.3568344 1.6094823 -2.9426608 5.4117708 1.5698425 -3.2478733 5.4667072 1.6094823 
		-3.5232096 5.5162663 1.7245216 -3.7417176 5.5555964 1.9036994 -3.8820083 5.5808477 
		2.1294768 -3.9303491 5.5895491 2.3797529 -3.9191236 5.4265213 2.6331487 -3.7770839 
		5.4009547 2.8617404 -3.5558519 5.3611345 3.0431519 -3.2770836 5.3109579 3.1596251 
		-2.9680665 5.2553363 3.199759 -2.6590493 5.1997151 3.1596251 -2.380281 5.1495385 
		3.0431516 -2.1590493 5.1097183 2.8617404 -2.0170097 5.0841517 2.6331487 -1.9680662 
		5.0753422 2.3797529 -2.0170097 5.0841517 2.1263571 -2.1590493 5.1097183 1.8977653 
		-2.380281 5.1495385 1.716354 -2.6590493 5.1997151 1.5998807 -2.9680665 5.2553363 
		1.5597469 -3.2770834 5.3109579 1.5998808 -3.5558517 5.3611345 1.716354 -3.7770834 
		5.4009547 1.8977654 -3.9191229 5.4265213 2.1263571 -3.9680665 5.4353304 2.3797529 
		-3.9328201 5.2679791 2.630029 -3.7925291 5.2427278 2.8558064 -3.5740209 5.2033978 
		3.0349844 -3.2986846 5.1538386 3.1500235 -2.9934719 5.0989022 3.1896634 -2.6882594 
		5.0439658 3.1500235 -2.4129231 4.9944067 3.0349841 -2.1944151 4.9550767 2.8558061 
		-2.0541244 4.9298248 2.630029 -2.0057833 4.921124 2.3797529 -2.0541244 4.9298248 
		2.1294768 -2.1944151 4.9550767 1.9036994 -2.4129231 4.9944067 1.7245215 -2.6882594 
		5.0439658 1.6094823 -2.9934719 5.0989022 1.5698425 -3.2986844 5.1538386 1.6094823 
		-3.5740206 5.2033973 1.7245216 -3.7925286 5.2427278 1.9036994 -3.9328194 5.2679791 
		2.1294768 -3.9811604 5.2766805 2.3797529 -3.922761 5.1091261 2.6207466 -3.7876732 
		5.0848107 2.8381503 -3.5772693 5.0469394 3.0106828 -3.3121448 4.9992185 3.1214554 
		-3.0182519 4.9463196 3.1596251 -2.7243593 4.8934207 3.1214554 -2.4592347 4.8456998 
		3.0106826 -2.2488308 4.8078284 2.83815 -2.1137431 4.7835131 2.6207466 -2.0671952 
		4.775135 2.3797529 -2.1137431 4.7835131 2.1387591 -2.2488308 4.8078284 1.9213555 
		-2.4592347 4.8456998 1.748823 -2.7243593 4.8934207 1.6380503 -3.0182519 4.9463196 
		1.5998807 -3.3121445 4.9992185 1.6380504 -3.5772688 5.0469394 1.748823 -3.7876728 
		5.0848107 1.9213555 -3.9227605 5.1091256 2.1387591 -3.9693084 5.1175041 2.3797529 
		-3.8891943 4.9538727 2.6055303 -3.7626362 4.9310927 2.809207 -3.5655169 4.8956127 
		2.9708457 -3.3171325 4.8509049 3.0746241 -3.0417962 4.8013458 3.1103837 -2.7664599 
		4.7517872 3.0746241 -2.5180755 4.7070794 2.9708455 -2.3209565 4.6715989 2.8092067 
		-2.1943984 4.6488194 2.60553 -2.1507895 4.6409698 2.3797529 -2.1943984 4.6488194 
		2.1539755 -2.3209565 4.6715989 1.9502988 -2.5180755 4.7070794 1.78866 -2.7664599 
		4.7517872 1.6848817 -3.0417962 4.8013458 1.6491221 -3.3171322 4.8509049 1.6848818 
		-3.5655167 4.8956127 1.7886602 -3.7626357 4.9310927 1.9502988 -3.8891938 4.9538727 
		2.1539755 -3.9328027 4.9617219 2.3797529 -3.8329463 4.8060427 2.5847545 -3.718034 
		4.7853589 2.7696888 -3.5390534 4.7531438 2.9164538 -3.3135252 4.7125497 3.0106828 
		-3.063525 4.667551 3.0431519 -2.813525 4.6225529 3.0106826 -2.5879965 4.5819588 2.9164538 
		-2.4090164 4.5497437 2.7696888 -2.2941039 4.5290599 2.5847542 -2.2545078 4.5219331 
		2.3797529 -2.2941039 4.5290599 2.1747513 -2.4090164 4.5497437 1.9898167 -2.5879967 
		4.5819588 1.8430519 -2.813525 4.6225529 1.748823 -3.063525 4.667551 1.716354 -3.313525 
		4.7125497 1.748823 -3.5390532 4.7531433 1.8430519 -3.7180336 4.7853589 1.9898168 
		-3.8329458 4.8060427 2.1747513 -3.8725419 4.8131695 2.3797529 -3.7554021 4.6692758 
		2.5589306 -3.6549649 4.6511974 2.7205694 -3.4985304 4.6230402 2.8488467 -3.3014114 
		4.5875597 2.9312057 -3.0829031 4.5482297 2.9595847 -2.8643951 4.5088997 2.9312057 
		-2.6672761 4.4734192 2.8488467 -2.5108416 4.445262 2.7205694 -2.4104044 4.4271841 
		2.5589306 -2.3757963 4.4209547 2.3797529 -2.4104044 4.4271841 2.2005749 -2.5108416 
		4.445262 2.0389361 -2.6672761 4.4734192 1.910659 -2.8643951 4.5088997 1.8283 -3.0829031 
		4.5482297 1.799921 -3.3014112 4.5875597 1.8283 -3.4985301 4.6230402 1.9106591 -3.6549647 
		4.6511974 2.0389361 -3.7554018 4.6692753 2.2005749 -3.79001 4.6755047 2.3797529 -3.6584711 
		4.5469394 2.5286951 -3.5749824 4.5319118 2.663058 -3.4449456 4.5085058 2.7696888 
		-3.2810895 4.479013 2.8381503 -3.0994539 4.4463196 2.8617404 -2.9178181 4.4136262 
		2.8381503 -2.7539623 4.3841329 2.7696888 -2.6239254 4.3607273 2.6630578 -2.5404367 
		4.3456998 2.5286951 -2.5116684 4.3405213 2.3797529 -2.5404367 4.3456998 2.2308104 
		-2.6239254 4.3607273 2.0964477 -2.7539623 4.3841329 1.9898168 -2.9178183 4.4136262 
		1.9213555 -3.0994539 4.4463196 1.8977654 -3.2810895 4.479013 1.9213555 -3.4449453 
		4.5085058 1.9898168 -3.5749822 4.5319118 2.0964477 -3.6584709 4.5469394 2.2308104 
		-3.6872392 4.5521173 2.3797529 -3.5445402 4.4420462 2.494792 -3.4800556 4.4304395 
		2.5985706 -3.3796184 4.4123611 2.6809297 -3.2530601 4.3895817 2.7338073 -3.1127694 
		4.3643298 2.7520278 -2.9724784 4.3390784 2.7338073 -2.8459203 4.3162985 2.6809297 
		-2.7454832 4.2982206 2.5985706 -2.6809986 4.2866139 2.494792 -2.6587787 4.2826142 
		2.3797529 -2.6809986 4.2866139 2.2647135 -2.7454832 4.2982206 2.1609349;
	setAttr ".pt[332:381]" -2.8459203 4.3162985 2.0785761 -2.9724784 4.3390784 
		2.0256982 -3.1127694 4.3643298 2.0074778 -3.2530601 4.3895817 2.0256982 -3.3796182 
		4.4123611 2.0785761 -3.4800553 4.4304395 2.1609352 -3.5445399 4.4420462 2.2647135 
		-3.5667598 4.4460454 2.3797529 -3.4164145 4.3571792 2.4580564 -3.3725219 4.3492785 
		2.5286951 -3.3041573 4.3369732 2.5847545 -3.2180133 4.3214679 2.6207466 -3.1225216 
		4.3042798 2.6331487 -3.02703 4.2870922 2.6207466 -2.940886 4.2715864 2.5847542 -2.8725216 
		4.2592816 2.5286951 -2.828629 4.2513809 2.4580564 -2.8135045 4.2486587 2.3797529 
		-2.828629 4.2513809 2.3014491 -2.8725216 4.2592816 2.2308104 -2.940886 4.2715864 
		2.1747513 -3.02703 4.2870922 2.1387591 -3.1225216 4.3042798 2.1263571 -3.218013 4.3214679 
		2.1387591 -3.3041573 4.3369732 2.1747513 -3.3725216 4.3492785 2.2308104 -3.4164143 
		4.3571787 2.3014491 -3.4315386 4.3599014 2.3797529 -3.2772489 4.2944274 2.4193926 
		-3.255029 4.2904277 2.4551523 -3.2204206 4.2841988 2.4835312 -3.1768117 4.2763491 
		2.5017517 -3.1284707 4.2676482 2.5080299 -3.0801299 4.2589469 2.5017517 -3.036521 
		4.2510977 2.4835312 -3.0019126 4.2448683 2.4551523 -2.9796927 4.240869 2.4193926 
		-2.9720364 4.239491 2.3797529 -2.9796927 4.240869 2.3401129 -3.0019126 4.2448683 
		2.3043532 -3.036521 4.2510977 2.2759743 -3.0801299 4.2589469 2.2577538 -3.1284707 
		4.2676482 2.2514756 -3.1768117 4.2763491 2.2577538 -3.2204206 4.2841988 2.2759743 
		-3.255029 4.2904277 2.3043532 -3.2772489 4.2944274 2.3401129 -3.2849052 4.2958055 
		2.3797529 -2.8056626 6.2553363 2.3797529 -3.1304703 4.2553363 2.3797529;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Books";
	rename -uid "3D7E98B8-4FF2-2642-29B8-91B3834815F3";
createNode transform -n "Book01" -p "Books";
	rename -uid "D6B43AE8-4D00-52D2-AD3B-45BEC5D33C34";
	setAttr ".rp" -type "double3" -1.8861700983071947 0.30660335896610869 -1.5945346055903804 ;
	setAttr ".sp" -type "double3" -1.8861700983071947 0.30660335896610869 -1.5945346055903804 ;
createNode transform -n "pCube3" -p "Book01";
	rename -uid "D3E8D3F2-43B6-78E3-4398-8C88D705B0F0";
	setAttr ".rp" -type "double3" -1.8861700790891398 0.29746522581222523 -1.5945345373339532 ;
	setAttr ".sp" -type "double3" -1.8861700790891398 0.29746522581222523 -1.5945345373339532 ;
createNode mesh -n "pCube3Shape" -p "|Books|Book01|pCube3";
	rename -uid "2BAE8312-440D-7C12-46F0-809BE5C9F194";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 7 "f[2]" "f[6]" "f[9]" "f[21]" "f[23]" "f[28:29]" "f[36:37]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[0]" "f[8]" "f[12:13]" "f[41]" "f[43]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 7 "f[3]" "f[7]" "f[11]" "f[20]" "f[22]" "f[24:25]" "f[32:33]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[10]" "f[14:17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "f[1]" "f[5]" "f[26:27]" "f[30:31]" "f[34:35]" "f[38:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[4]" "f[8]" "f[18:19]" "f[40]" "f[42]";
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 105 ".uvst[0].uvsp[0:104]" -type "float2" 0.375 0.50001252
		 0.40609428 0.5 0.40609428 0.25 0.375 1.2546778e-05 0.40609428 0.75 0.40609428 1 0.125
		 1.2546778e-05 0.40609428 1 0.125 0.24998748 0.40609428 0.5 0.39915791 1 0.39915791
		 0.5 0.39915791 0 0.375 0.24998748 0.40609428 0.75 0.39915764 0.75 0.40609428 0.25
		 0.39915764 0.25 0.375 0.74998748 0.37480697 0.12619485 0.375 0 0.375 1 0.38707894
		 0 0.38707894 1 0.38712981 0.74756283 0.125 0 0.375 0.75 0.125 0.12498758 0.375 0.62501246
		 0.38712981 0.24756245 0.375 0.25 0.37480697 0.12380518 0.125 0.1250125 0.375 0.62498748
		 0.375 0.5 0.125 0.25 0.387079 0.49969867 0.40609428 0 0.63749874 -1.0244548e-08 0.86250126
		 0.25 0.40609428 0 0.63749874 4.6566129e-09 0.86250126 0.25 0.6125012 0 0.63749874
		 0.25 0.61250126 0.5 0.86250126 -1.8626451e-09 0.6125012 0 0.63749874 0.25 0.6125012
		 0.5 0.86250126 -6.519258e-09 0.61250108 0.25 0.62499994 0.26249874 0.625 0.48750126
		 0.625 0.98750126 0.6125012 1 0.6125012 0.75 0.625 0.76249874 0.61250108 0.25 0.62499994
		 0.26249874 0.625 0.48750126 0.625 0.98750126 0.6125012 1 0.6125012 0.75 0.625 0.76249874
		 0.625 0.99375063 0.63124937 -5.1222715e-09 0.625 1 0.625 0 0.61875063 1 0.61875063
		 0 0.61919725 0.24738353 0.625 0.25 0.63124937 0.25 0.625 0.25624937 0.625 0.49375066
		 0.86875063 0.25 0.625 0.5 0.875 0.25 0.61880648 0.50204915 0.61827183 0.74934268
		 0.875 0 0.625 0.75 0.86875063 -9.3131958e-10 0.625 0.75624937 0.625 0.99375063 0.63124937
		 2.3283053e-09 0.625 1 0.625 0 0.61875063 1 0.61875063 0 0.61919725 0.24738353 0.625
		 0.25 0.63124937 0.25 0.625 0.25624937 0.625 0.49375066 0.86875063 0.25 0.625 0.5
		 0.875 0.25 0.61880642 0.50204915 0.61827183 0.74934268 0.875 0 0.625 0.75 0.86875063
		 -3.2596186e-09 0.625 0.75624937;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 68 ".pt[0:67]" -type "float3"  1.3114194 -0.054027997 0.18573198 
		-0.098050527 -0.054027997 1.2237377 -0.22715472 -0.054027997 1.0484319 -0.22715472 
		-0.054027997 1.0484319 1.1823151 -0.054027997 0.010426148 1.1823151 -0.054027997 
		0.010426148 1.3114194 -0.054027997 0.18573198 -0.098050527 -0.054027997 1.2237377 
		-0.22715472 -0.054027997 1.0484319 -0.22715472 -0.054027997 1.0484319 1.1823151 -0.054027997 
		0.010426148 1.1823151 -0.054027997 0.010426148 1.3037841 -0.054027997 0.17536449 
		1.2820408 -0.054027997 0.14584009 1.2494999 -0.054027997 0.1016539 1.2111151 -0.054027997 
		0.049532536 -0.15996993 -0.054027997 1.1396596 -0.12742895 -0.054027997 1.1838458 
		-0.10568567 -0.054027997 1.2133702 -0.19835477 -0.054027997 1.0875382 1.2494999 -0.054027997 
		0.1016539 1.2820408 -0.054027997 0.14584009 1.3037841 -0.054027997 0.17536449 1.2111151 
		-0.054027997 0.049532536 -0.10568567 -0.054027997 1.2133702 -0.12742895 -0.054027997 
		1.1838458 -0.15996993 -0.054027997 1.1396596 -0.19835477 -0.054027997 1.0875382 0.3253088 
		-0.054027997 -1.1532713 0.20294727 -0.054027997 -1.1718427 0.23386391 -0.054027997 
		-1.1863381 0.26797429 -0.054027997 -1.1878989 0.30008543 -0.054027997 -1.1762874 
		0.3253088 -0.054027997 -1.1532713 0.30008543 -0.054027997 -1.1762874 0.26797429 -0.054027997 
		-1.1878989 0.23386391 -0.054027997 -1.1863381 0.20294727 -0.054027997 -1.1718427 
		-1.084161 -0.054027997 -0.11526556 -1.0655898 -0.054027997 -0.23762707 -1.0886059 
		-0.054027997 -0.21240368 -1.1002173 -0.054027997 -0.18029262 -1.0986565 -0.054027997 
		-0.14618225 -1.084161 -0.054027997 -0.11526556 -1.0986565 -0.054027997 -0.14618225 
		-1.1002173 -0.054027997 -0.18029262 -1.0886059 -0.054027997 -0.21240368 -1.0655898 
		-0.054027997 -0.23762707 0.3253088 -0.054027997 -1.1532713 0.20294727 -0.054027997 
		-1.1718427 0.23386391 -0.054027997 -1.1863381 0.26797429 -0.054027997 -1.1878989 
		0.30008543 -0.054027997 -1.1762874 0.3253088 -0.054027997 -1.1532713 0.30008543 -0.054027997 
		-1.1762874 0.26797429 -0.054027997 -1.1878989 0.23386391 -0.054027997 -1.1863381 
		0.20294727 -0.054027997 -1.1718427 -1.084161 -0.054027997 -0.11526556 -1.0655898 
		-0.054027997 -0.23762707 -1.0886059 -0.054027997 -0.21240368 -1.1002173 -0.054027997 
		-0.18029262 -1.0986565 -0.054027997 -0.14618225 -1.084161 -0.054027997 -0.11526556 
		-1.0986565 -0.054027997 -0.14618225 -1.1002173 -0.054027997 -0.18029262 -1.0886059 
		-0.054027997 -0.21240368 -1.0655898 -0.054027997 -0.23762707;
	setAttr -s 68 ".vt[0:67]"  -2.71181989 0.31029823 -0.85656631 -2.71181989 0.31029823 -2.33250284
		 -2.52824712 0.22923398 -2.33250284 -2.52824712 0.15773052 -2.33250284 -2.52824712 0.15773052 -0.85656631
		 -2.52824712 0.22923398 -0.85656631 -2.71181989 0.39268821 -0.85656631 -2.71181989 0.39268821 -2.33250284
		 -2.52824712 0.54525596 -2.33250284 -2.52824712 0.47375247 -2.33250284 -2.52824712 0.47375247 -0.85656631
		 -2.52824712 0.54525596 -0.85656631 -2.7009635 0.24577354 -0.85656631 -2.67004681 0.19950359 -0.85656631
		 -2.62377691 0.16858698 -0.85656631 -2.56919765 0.15773052 -0.85656631 -2.62377691 0.16858698 -2.33250284
		 -2.67004681 0.19950359 -2.33250284 -2.7009635 0.24577354 -2.33250284 -2.56919765 0.15773052 -2.33250284
		 -2.62377691 0.53439951 -0.85656631 -2.67004681 0.50348288 -0.85656631 -2.7009635 0.45721295 -0.85656631
		 -2.56919765 0.54525596 -0.85656631 -2.7009635 0.45721295 -2.33250284 -2.67004681 0.50348288 -2.33250284
		 -2.62377691 0.53439951 -2.33250284 -2.56919765 0.54525596 -2.33250284 -1.30967295 0.15773052 -0.85656631
		 -1.23588347 0.15773052 -0.93035573 -1.24150038 0.15773052 -0.90211773 -1.25749588 0.15773052 -0.87817872
		 -1.28143489 0.15773052 -0.86218321 -1.30967295 0.22923398 -0.85656631 -1.28143489 0.22923398 -0.86218321
		 -1.25749588 0.22923398 -0.87817872 -1.24150038 0.22923398 -0.90211773 -1.23588347 0.22923398 -0.93035573
		 -1.30967295 0.22923398 -2.33250284 -1.23588347 0.22923398 -2.25871348 -1.24150038 0.22923398 -2.28695154
		 -1.25749588 0.22923398 -2.31089044 -1.28143489 0.22923398 -2.32688594 -1.30967295 0.15773052 -2.33250284
		 -1.28143489 0.15773052 -2.32688594 -1.25749588 0.15773052 -2.31089044 -1.24150038 0.15773052 -2.28695154
		 -1.23588347 0.15773052 -2.25871348 -1.30967295 0.47375247 -0.85656631 -1.23588347 0.47375247 -0.93035573
		 -1.24150038 0.47375247 -0.90211773 -1.25749588 0.47375247 -0.87817872 -1.28143489 0.47375247 -0.86218321
		 -1.30967295 0.54525596 -0.85656631 -1.28143489 0.54525596 -0.86218321 -1.25749588 0.54525596 -0.87817872
		 -1.24150038 0.54525596 -0.90211773 -1.23588347 0.54525596 -0.93035573 -1.30967295 0.54525596 -2.33250284
		 -1.23588347 0.54525596 -2.25871348 -1.24150038 0.54525596 -2.28695154 -1.25749588 0.54525596 -2.31089044
		 -1.28143489 0.54525596 -2.32688594 -1.30967295 0.47375247 -2.33250284 -1.28143489 0.47375247 -2.32688594
		 -1.25749588 0.47375247 -2.31089044 -1.24150038 0.47375247 -2.28695154 -1.23588347 0.47375247 -2.25871348;
	setAttr -s 110 ".ed[0:109]"  0 5 1 1 2 1 0 1 0 2 38 0 3 43 0 2 3 1 4 28 0
		 3 4 1 5 33 0 4 5 1 5 2 0 6 10 1 7 9 1 7 6 0 8 58 0 9 63 0 8 9 1 10 48 0 9 10 0 11 53 0
		 10 11 1 11 8 1 5 10 0 2 9 0 1 7 0 0 6 0 15 4 0 19 3 0 23 11 0 27 8 0 15 19 1 27 23 1
		 15 14 0 14 16 1 16 19 0 14 13 0 13 17 1 17 16 0 13 12 0 12 18 1 18 17 0 12 0 0 1 18 0
		 6 22 0 22 24 1 24 7 0 22 21 0 21 25 1 25 24 0 21 20 0 20 26 1 26 25 0 20 23 0 27 26 0
		 37 39 0 47 29 0 57 59 0 67 49 0 28 33 1 37 29 1 38 43 1 47 39 1 48 53 1 57 49 1 58 63 1
		 67 59 1 28 32 0 32 34 1 34 33 0 32 31 0 31 35 1 35 34 0 31 30 0 30 36 1 36 35 0 30 29 0
		 37 36 0 38 42 0 42 44 1 44 43 0 42 41 0 41 45 1 45 44 0 41 40 0 40 46 1 46 45 0 40 39 0
		 47 46 0 48 52 0 52 54 1 54 53 0 52 51 0 51 55 1 55 54 0 51 50 0 50 56 1 56 55 0 50 49 0
		 57 56 0 58 62 0 62 64 1 64 63 0 62 61 0 61 65 1 65 64 0 61 60 0 60 66 1 66 65 0 60 59 0
		 67 66 0;
	setAttr -s 44 -ch 220 ".fc[0:43]" -type "polyFaces" 
		f 4 30 27 7 -27
		mu 0 4 10 15 14 7
		f 4 59 -56 61 -55
		mu 0 4 44 38 46 39
		f 4 3 60 -5 -6
		mu 0 4 1 45 56 14
		f 4 -10 6 58 -9
		mu 0 4 2 37 43 51
		f 4 31 28 21 -30
		mu 0 4 11 17 16 9
		f 4 63 -58 65 -57
		mu 0 4 48 41 50 42
		f 4 14 64 -16 -17
		mu 0 4 9 49 63 4
		f 4 -21 17 62 -20
		mu 0 4 16 40 47 58
		f 4 10 23 18 -23
		mu 0 4 2 1 4 5
		f 4 -2 24 12 -24
		mu 0 4 1 0 18 4
		f 4 -3 25 -14 -25
		mu 0 4 8 13 3 6
		f 4 0 22 -12 -26
		mu 0 4 13 2 40 3
		f 4 32 33 34 -31
		mu 0 4 10 23 24 15
		f 4 35 36 37 -34
		mu 0 4 23 21 26 24
		f 4 38 39 40 -37
		mu 0 4 20 19 27 25
		f 4 41 2 42 -40
		mu 0 4 19 13 8 27
		f 4 43 44 45 13
		mu 0 4 3 31 32 6
		f 4 46 47 48 -45
		mu 0 4 31 30 35 32
		f 4 49 50 51 -48
		mu 0 4 30 29 36 34
		f 4 52 -32 53 -51
		mu 0 4 29 17 11 36
		f 7 -39 -36 -33 26 9 -1 -42
		mu 0 7 19 20 22 12 37 2 13
		f 7 -38 -41 -43 1 5 -28 -35
		mu 0 7 24 26 28 0 1 14 15
		f 7 -50 -47 -44 11 20 -29 -53
		mu 0 7 29 30 31 3 40 16 17
		f 7 16 -13 -46 -49 -52 -54 29
		mu 0 7 9 4 18 33 34 36 11
		f 4 66 67 68 -59
		mu 0 4 43 70 71 51
		f 4 69 70 71 -68
		mu 0 4 70 68 72 71
		f 4 72 73 74 -71
		mu 0 4 68 66 73 72
		f 4 75 -60 76 -74
		mu 0 4 66 38 44 73
		f 4 77 78 79 -61
		mu 0 4 45 79 80 56
		f 4 80 81 82 -79
		mu 0 4 79 77 82 80
		f 4 83 84 85 -82
		mu 0 4 78 76 83 81
		f 4 86 -62 87 -85
		mu 0 4 76 39 46 83
		f 4 88 89 90 -63
		mu 0 4 47 90 91 58
		f 4 91 92 93 -90
		mu 0 4 90 88 92 91
		f 4 94 95 96 -93
		mu 0 4 88 86 93 92
		f 4 97 -64 98 -96
		mu 0 4 86 41 48 93
		f 4 99 100 101 -65
		mu 0 4 49 99 100 63
		f 4 102 103 104 -101
		mu 0 4 99 97 102 100
		f 4 105 106 107 -104
		mu 0 4 98 96 103 101
		f 4 108 -66 109 -107
		mu 0 4 96 42 50 103
		f 12 -4 -11 8 -69 -72 -75 -77 54 -87 -84 -81 -78
		mu 0 12 45 1 2 51 71 72 74 52 53 75 77 79
		f 12 -76 -73 -70 -67 -7 -8 4 -80 -83 -86 -88 55
		mu 0 12 54 65 67 69 55 7 14 56 80 82 84 57
		f 12 -15 -22 19 -91 -94 -97 -99 56 -109 -106 -103 -100
		mu 0 12 49 9 16 58 91 92 94 59 60 95 97 99
		f 12 -98 -95 -92 -89 -18 -19 15 -102 -105 -108 -110 57
		mu 0 12 61 85 87 89 62 5 4 63 100 102 104 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Pages" -p "Book01";
	rename -uid "A0F064CF-454A-8B81-F254-0D825CC03558";
	setAttr ".rp" -type "double3" -0.058485702368387238 0 -0.039183616664181464 ;
	setAttr ".sp" -type "double3" -0.058485702368387238 0 -0.039183616664181464 ;
createNode transform -n "Page01" -p "|Books|Book01|Pages";
	rename -uid "83A519AD-4EE6-5DE7-62D5-3780516B4895";
	setAttr ".rp" -type "double3" -1.8736180061955969 0.19594525288026704 -1.6350535140430493 ;
	setAttr ".sp" -type "double3" -1.8736180061955969 0.19594525288026704 -1.6350535140430493 ;
createNode mesh -n "PageShape1" -p "|Books|Book01|Pages|Page01";
	rename -uid "0621B54B-480D-4D94-C6E0-20BC2036A753";
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
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.9008261 0.67906946 -1.3249546 
		-1.5249885 0.67906946 -2.5345788 -0.9008261 -0.28717896 -1.3249546 -1.5249885 -0.28717896 
		-2.5345788 -2.2222474 -0.28717896 -0.73552823 -2.8464098 -0.28717896 -1.9451524 -2.2222474 
		0.67906946 -0.73552823 -2.8464098 0.67906946 -1.9451524;
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
createNode transform -n "Page02" -p "|Books|Book01|Pages";
	rename -uid "9D3DEF46-41B1-667C-B3DD-4DADF7D25633";
	setAttr ".rp" -type "double3" -1.8772017652903752 0.22969683001916791 -1.6350535140430491 ;
	setAttr ".sp" -type "double3" -1.8772017652903752 0.22969683001916791 -1.6350535140430491 ;
createNode mesh -n "PageShape2" -p "|Books|Book01|Pages|Page02";
	rename -uid "DA1B9D4C-4E01-2001-AC11-468ABB0483B5";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.90334654 0.71282107 -1.328377 
		-1.5296355 0.71282107 -2.5311563 -0.90334654 -0.25342739 -1.328377 -1.5296355 -0.25342739 
		-2.5311563 -2.2247679 -0.25342739 -0.73895061 -2.8510571 -0.25342739 -1.94173 -2.2247679 
		0.71282107 -0.73895061 -2.8510571 0.71282107 -1.94173;
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
createNode transform -n "Page03" -p "|Books|Book01|Pages";
	rename -uid "351A8A45-4809-7E7B-B74D-AD9955AD8CFA";
	setAttr ".rp" -type "double3" -1.881521528504507 0.26344837735574633 -1.6350535140430491 ;
	setAttr ".sp" -type "double3" -1.881521528504507 0.26344837735574633 -1.6350535140430491 ;
createNode mesh -n "PageShape3" -p "|Books|Book01|Pages|Page03";
	rename -uid "625FEAFB-4635-6AC0-C1FB-B0B8561DA1C2";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.90638453 0.74657261 -1.3325022 
		-1.5352371 0.74657261 -2.5270312 -0.90638453 -0.21967584 -1.3325022 -1.5352371 -0.21967584 
		-2.5270312 -2.2278059 -0.21967584 -0.74307585 -2.8566585 -0.21967584 -1.9376048 -2.2278059 
		0.74657261 -0.74307585 -2.8566585 0.74657261 -1.9376048;
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
createNode transform -n "Page04" -p "|Books|Book01|Pages";
	rename -uid "2B2BABCF-4448-E056-EDE7-EF957288D265";
	setAttr ".rp" -type "double3" -1.8839524334266935 0.2971999246923247 -1.6350535140430491 ;
	setAttr ".sp" -type "double3" -1.8839524334266935 0.2971999246923247 -1.6350535140430491 ;
createNode mesh -n "PageShape4" -p "|Books|Book01|Pages|Page04";
	rename -uid "8D0AFC3C-4EB7-FB6C-D158-868FD476DD78";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.90809417 0.78032416 -1.3348236 
		-1.5383893 0.78032416 -2.5247097 -0.90809417 -0.18592429 -1.3348236 -1.5383893 -0.18592429 
		-2.5247097 -2.2295156 -0.18592429 -0.74539727 -2.8598108 -0.18592429 -1.9352834 -2.2295156 
		0.78032416 -0.74539727 -2.8598108 0.78032416 -1.9352834;
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
createNode transform -n "Page05" -p "|Books|Book01|Pages";
	rename -uid "8B0BB4EF-4C8A-FC31-3604-86B6E7DDF33A";
	setAttr ".rp" -type "double3" -1.8811250443651226 0.33095147202890307 -1.6350535140430491 ;
	setAttr ".sp" -type "double3" -1.8811250443651226 0.33095147202890307 -1.6350535140430491 ;
createNode mesh -n "PageShape5" -p "|Books|Book01|Pages|Page05";
	rename -uid "7553AAEA-4D29-A59B-E5EA-1D8E97E6A27B";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.9061057 0.81407571 -1.3321236 
		-1.534723 0.81407571 -2.5274098 -0.9061057 -0.15217274 -1.3321236 -1.534723 -0.15217274 
		-2.5274098 -2.2275271 -0.15217274 -0.74269724 -2.8561444 -0.15217274 -1.9379834 -2.2275271 
		0.81407571 -0.74269724 -2.8561444 0.81407571 -1.9379834;
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
createNode transform -n "Page06" -p "|Books|Book01|Pages";
	rename -uid "E2D543FC-41DC-7629-89B6-DE96D6BF25C9";
	setAttr ".rp" -type "double3" -1.877030193319176 0.36470301936548144 -1.6350535140430491 ;
	setAttr ".sp" -type "double3" -1.877030193319176 0.36470301936548144 -1.6350535140430491 ;
createNode mesh -n "PageShape6" -p "|Books|Book01|Pages|Page06";
	rename -uid "D0D54486-4888-66FD-8857-5F8301DCED17";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.90322584 0.84782726 -1.3282131 
		-1.5294132 0.84782726 -2.5313203 -0.90322584 -0.11842119 -1.3282131 -1.5294132 -0.11842119 
		-2.5313203 -2.2246473 -0.11842119 -0.73878676 -2.8508344 -0.11842119 -1.9418939 -2.2246473 
		0.84782726 -0.73878676 -2.8508344 0.84782726 -1.9418939;
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
createNode transform -n "Page07" -p "|Books|Book01|Pages";
	rename -uid "F8EAF22E-46CD-1946-338E-BBB7998259A3";
	setAttr ".rp" -type "double3" -1.8736180061955969 0.39845456670205981 -1.6350535140430491 ;
	setAttr ".sp" -type "double3" -1.8736180061955969 0.39845456670205981 -1.6350535140430491 ;
createNode mesh -n "PageShape7" -p "|Books|Book01|Pages|Page07";
	rename -uid "15E1E4EA-4BD1-7D2C-9779-35B6F0617C86";
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
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.9008261 0.8815788 -1.3249546 
		-1.5249885 0.8815788 -2.5345788 -0.9008261 -0.084669642 -1.3249546 -1.5249885 -0.084669642 
		-2.5345788 -2.2222474 -0.084669642 -0.73552823 -2.8464098 -0.084669642 -1.9451524 
		-2.2222474 0.8815788 -0.73552823 -2.8464098 0.8815788 -1.9451524;
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
createNode transform -n "Book02" -p "Books";
	rename -uid "BDBEF857-40D1-5453-2295-B3B98ACA0FD7";
	setAttr ".rp" -type "double3" -2.1049313926331008 0.69339326029797499 -1.6473548972878862 ;
	setAttr ".sp" -type "double3" -2.1049313926331008 0.69339326029797499 -1.6473548972878862 ;
createNode transform -n "pCube1" -p "Book02";
	rename -uid "308BB231-412A-2DC3-0450-1681A161D5A6";
	setAttr ".rp" -type "double3" -2.1909773721874388 0.580272152922091 -1.6304978591773112 ;
	setAttr ".sp" -type "double3" -2.1909773721874388 0.580272152922091 -1.6304978591773112 ;
createNode transform -n "transform2" -p "|Books|Book02|pCube1";
	rename -uid "22AF6CA4-4C0E-BC0C-312E-51B05893B78D";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.1909773721874388 0.580272152922091 -1.6304978591773112 ;
	setAttr ".sp" -type "double3" -2.1909773721874388 0.580272152922091 -1.6304978591773112 ;
createNode mesh -n "pCubeShape1" -p "|Books|Book02|pCube1|transform2";
	rename -uid "0F933915-4F1D-F4B8-61B6-E28E15FD8B12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.40609428 0.5 0.40609428 0.75 0.40609428 0 0.40609428
		 1 0.40609428 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.37562287 0.5 -0.5 -0.37562287 -0.5 -0.5
		 -0.37562287 -0.5 0.5 -0.37562287 0.5 0.5;
	setAttr -s 20 ".ed[0:19]"  0 10 0 2 11 0 4 8 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 0 9 7 0 8 9 1 10 1 0 9 10 1 11 3 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 18 -2 -5
		mu 0 4 0 16 18 2
		f 4 1 19 -3 -7
		mu 0 4 2 18 14 4
		f 4 2 14 -4 -9
		mu 0 4 4 14 15 6
		f 4 3 16 -1 -11
		mu 0 4 6 15 17 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 9 -14 -15
		mu 0 4 14 5 7 15
		f 4 -17 13 11 -16
		mu 0 4 17 15 7 9
		f 4 -19 15 5 -18
		mu 0 4 18 16 1 3
		f 4 -20 17 7 -13
		mu 0 4 14 18 3 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "Book02";
	rename -uid "572D3C69-464C-EC5F-A97E-6C8328F6714F";
	setAttr ".rp" -type "double3" -2.1909773721874388 0.89629409761892342 -1.6304978591773112 ;
	setAttr ".sp" -type "double3" -2.1909773721874388 0.89629409761892342 -1.6304978591773112 ;
createNode transform -n "transform1" -p "|Books|Book02|pCube2";
	rename -uid "8B5A3122-4363-34FB-EEAA-44A06AC95DC8";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.1909773721874388 0.89629409761892342 -1.6304978591773112 ;
	setAttr ".sp" -type "double3" -2.1909773721874388 0.89629409761892342 -1.6304978591773112 ;
createNode mesh -n "pCubeShape2" -p "|Books|Book02|pCube2|transform1";
	rename -uid "BF4A35C4-4563-A73F-15D4-DEBEC5F2B3FD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[9]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.40609428 0.5 0.40609428 0.75 0.40609428 0 0.40609428
		 1 0.40609428 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.37562287 0.5 -0.5 -0.37562287 -0.5 -0.5
		 -0.37562287 -0.5 0.5 -0.37562287 0.5 0.5;
	setAttr -s 20 ".ed[0:19]"  0 10 0 2 11 0 4 8 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 0 9 7 0 8 9 1 10 1 0 9 10 1 11 3 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 18 -2 -5
		mu 0 4 0 16 18 2
		f 4 1 19 -3 -7
		mu 0 4 2 18 14 4
		f 4 2 14 -4 -9
		mu 0 4 4 14 15 6
		f 4 3 16 -1 -11
		mu 0 4 6 15 17 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 9 -14 -15
		mu 0 4 14 5 7 15
		f 4 -17 13 11 -16
		mu 0 4 17 15 7 9
		f 4 -19 15 5 -18
		mu 0 4 18 16 1 3
		f 4 -20 17 7 -13
		mu 0 4 14 18 3 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "Book02";
	rename -uid "9343D97A-4EB1-74AD-3CAF-1FAF5B3D6C74";
	setAttr ".rp" -type "double3" -2.1049313606511126 0.68425512714409154 -1.6473548339994517 ;
	setAttr ".sp" -type "double3" -2.1049313606511126 0.68425512714409154 -1.6473548339994517 ;
createNode mesh -n "pCube3Shape" -p "|Books|Book02|pCube3";
	rename -uid "ADB47B8A-4DFE-CB9D-6052-82AE51B0D9B3";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 7 "f[2]" "f[6]" "f[9]" "f[21]" "f[23]" "f[28:29]" "f[36:37]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[0]" "f[8]" "f[12:13]" "f[41]" "f[43]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 7 "f[3]" "f[7]" "f[11]" "f[20]" "f[22]" "f[24:25]" "f[32:33]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[10]" "f[14:17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "f[1]" "f[5]" "f[26:27]" "f[30:31]" "f[34:35]" "f[38:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[4]" "f[8]" "f[18:19]" "f[40]" "f[42]";
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 105 ".uvst[0].uvsp[0:104]" -type "float2" 0.375 0.50001252
		 0.40609428 0.5 0.40609428 0.25 0.375 1.2546778e-05 0.40609428 0.75 0.40609428 1 0.125
		 1.2546778e-05 0.40609428 1 0.125 0.24998748 0.40609428 0.5 0.39915791 1 0.39915791
		 0.5 0.39915791 0 0.375 0.24998748 0.40609428 0.75 0.39915764 0.75 0.40609428 0.25
		 0.39915764 0.25 0.375 0.74998748 0.37480697 0.12619485 0.375 0 0.375 1 0.38707894
		 0 0.38707894 1 0.38712981 0.74756283 0.125 0 0.375 0.75 0.125 0.12498758 0.375 0.62501246
		 0.38712981 0.24756245 0.375 0.25 0.37480697 0.12380518 0.125 0.1250125 0.375 0.62498748
		 0.375 0.5 0.125 0.25 0.387079 0.49969867 0.40609428 0 0.63749874 -1.0244548e-08 0.86250126
		 0.25 0.40609428 0 0.63749874 4.6566129e-09 0.86250126 0.25 0.6125012 0 0.63749874
		 0.25 0.61250126 0.5 0.86250126 -1.8626451e-09 0.6125012 0 0.63749874 0.25 0.6125012
		 0.5 0.86250126 -6.519258e-09 0.61250108 0.25 0.62499994 0.26249874 0.625 0.48750126
		 0.625 0.98750126 0.6125012 1 0.6125012 0.75 0.625 0.76249874 0.61250108 0.25 0.62499994
		 0.26249874 0.625 0.48750126 0.625 0.98750126 0.6125012 1 0.6125012 0.75 0.625 0.76249874
		 0.625 0.99375063 0.63124937 -5.1222715e-09 0.625 1 0.625 0 0.61875063 1 0.61875063
		 0 0.61919725 0.24738353 0.625 0.25 0.63124937 0.25 0.625 0.25624937 0.625 0.49375066
		 0.86875063 0.25 0.625 0.5 0.875 0.25 0.61880648 0.50204915 0.61827183 0.74934268
		 0.875 0 0.625 0.75 0.86875063 -9.3131958e-10 0.625 0.75624937 0.625 0.99375063 0.63124937
		 2.3283053e-09 0.625 1 0.625 0 0.61875063 1 0.61875063 0 0.61919725 0.24738353 0.625
		 0.25 0.63124937 0.25 0.625 0.25624937 0.625 0.49375066 0.86875063 0.25 0.625 0.5
		 0.875 0.25 0.61880642 0.50204915 0.61827183 0.74934268 0.875 0 0.625 0.75 0.86875063
		 -3.2596186e-09 0.625 0.75624937;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 68 ".pt[0:67]" -type "float3"  1.2611796 0.33276191 0.02229044 
		-0.20619059 0.33276191 1.3394389 -0.37001374 0.33276191 1.1569316 -0.37001374 0.33276191 
		1.1569316 1.0973563 0.33276191 -0.16021685 1.0973563 0.33276191 -0.16021685 1.2611796 
		0.33276191 0.02229044 -0.20619059 0.33276191 1.3394389 -0.37001374 0.33276191 1.1569316 
		-0.37001374 0.33276191 1.1569316 1.0973563 0.33276191 -0.16021685 1.0973563 0.33276191 
		-0.16021685 1.2514911 0.33276191 0.011497063 1.2239006 0.33276191 -0.019240186 1.1826086 
		0.33276191 -0.065241523 1.1339012 0.33276191 -0.119504 -0.28476149 0.33276191 1.2519069 
		-0.24346952 0.33276191 1.2979083 -0.21587899 0.33276191 1.3286455 -0.33346885 0.33276191 
		1.1976445 1.1826086 0.33276191 -0.065241523 1.2239006 0.33276191 -0.019240186 1.2514911 
		0.33276191 0.011497063 1.1339012 0.33276191 -0.119504 -0.21587899 0.33276191 1.3286455 
		-0.24346952 0.33276191 1.2979083 -0.28476149 0.33276191 1.2519069 -0.33346885 0.33276191 
		1.1976445 0.0098820273 0.33276191 -1.3717183 -0.12932998 0.33276191 -1.3792287 -0.096243262 
		0.33276191 -1.3988445 -0.05816856 0.33276191 -1.4043053 -0.020902352 0.33276191 -1.3947799 
		0.0098820273 0.33276191 -1.3717183 -0.020902352 0.33276191 -1.3947799 -0.05816856 
		0.33276191 -1.4043053 -0.096243262 0.33276191 -1.3988445 -0.12932998 0.33276191 -1.3792287 
		-1.4574881 0.33276191 -0.054569885 -1.4499779 0.33276191 -0.19378184 -1.4730394 0.33276191 
		-0.16299745 -1.4825647 0.33276191 -0.12573136 -1.4771038 0.33276191 -0.087656662 
		-1.4574881 0.33276191 -0.054569885 -1.4771038 0.33276191 -0.087656662 -1.4825647 
		0.33276191 -0.12573136 -1.4730394 0.33276191 -0.16299745 -1.4499779 0.33276191 -0.19378184 
		0.0098820273 0.33276191 -1.3717183 -0.12932998 0.33276191 -1.3792287 -0.096243262 
		0.33276191 -1.3988445 -0.05816856 0.33276191 -1.4043053 -0.020902352 0.33276191 -1.3947799 
		0.0098820273 0.33276191 -1.3717183 -0.020902352 0.33276191 -1.3947799 -0.05816856 
		0.33276191 -1.4043053 -0.096243262 0.33276191 -1.3988445 -0.12932998 0.33276191 -1.3792287 
		-1.4574881 0.33276191 -0.054569885 -1.4499779 0.33276191 -0.19378184 -1.4730394 0.33276191 
		-0.16299745 -1.4825647 0.33276191 -0.12573136 -1.4771038 0.33276191 -0.087656662 
		-1.4574881 0.33276191 -0.054569885 -1.4771038 0.33276191 -0.087656662 -1.4825647 
		0.33276191 -0.12573136 -1.4730394 0.33276191 -0.16299745 -1.4499779 0.33276191 -0.19378184;
	setAttr -s 68 ".vt[0:67]"  -2.71181989 0.31029823 -0.85656631 -2.71181989 0.31029823 -2.33250284
		 -2.52824712 0.22923398 -2.33250284 -2.52824712 0.15773052 -2.33250284 -2.52824712 0.15773052 -0.85656631
		 -2.52824712 0.22923398 -0.85656631 -2.71181989 0.39268821 -0.85656631 -2.71181989 0.39268821 -2.33250284
		 -2.52824712 0.54525596 -2.33250284 -2.52824712 0.47375247 -2.33250284 -2.52824712 0.47375247 -0.85656631
		 -2.52824712 0.54525596 -0.85656631 -2.7009635 0.24577354 -0.85656631 -2.67004681 0.19950359 -0.85656631
		 -2.62377691 0.16858698 -0.85656631 -2.56919765 0.15773052 -0.85656631 -2.62377691 0.16858698 -2.33250284
		 -2.67004681 0.19950359 -2.33250284 -2.7009635 0.24577354 -2.33250284 -2.56919765 0.15773052 -2.33250284
		 -2.62377691 0.53439951 -0.85656631 -2.67004681 0.50348288 -0.85656631 -2.7009635 0.45721295 -0.85656631
		 -2.56919765 0.54525596 -0.85656631 -2.7009635 0.45721295 -2.33250284 -2.67004681 0.50348288 -2.33250284
		 -2.62377691 0.53439951 -2.33250284 -2.56919765 0.54525596 -2.33250284 -1.30967295 0.15773052 -0.85656631
		 -1.23588347 0.15773052 -0.93035573 -1.24150038 0.15773052 -0.90211773 -1.25749588 0.15773052 -0.87817872
		 -1.28143489 0.15773052 -0.86218321 -1.30967295 0.22923398 -0.85656631 -1.28143489 0.22923398 -0.86218321
		 -1.25749588 0.22923398 -0.87817872 -1.24150038 0.22923398 -0.90211773 -1.23588347 0.22923398 -0.93035573
		 -1.30967295 0.22923398 -2.33250284 -1.23588347 0.22923398 -2.25871348 -1.24150038 0.22923398 -2.28695154
		 -1.25749588 0.22923398 -2.31089044 -1.28143489 0.22923398 -2.32688594 -1.30967295 0.15773052 -2.33250284
		 -1.28143489 0.15773052 -2.32688594 -1.25749588 0.15773052 -2.31089044 -1.24150038 0.15773052 -2.28695154
		 -1.23588347 0.15773052 -2.25871348 -1.30967295 0.47375247 -0.85656631 -1.23588347 0.47375247 -0.93035573
		 -1.24150038 0.47375247 -0.90211773 -1.25749588 0.47375247 -0.87817872 -1.28143489 0.47375247 -0.86218321
		 -1.30967295 0.54525596 -0.85656631 -1.28143489 0.54525596 -0.86218321 -1.25749588 0.54525596 -0.87817872
		 -1.24150038 0.54525596 -0.90211773 -1.23588347 0.54525596 -0.93035573 -1.30967295 0.54525596 -2.33250284
		 -1.23588347 0.54525596 -2.25871348 -1.24150038 0.54525596 -2.28695154 -1.25749588 0.54525596 -2.31089044
		 -1.28143489 0.54525596 -2.32688594 -1.30967295 0.47375247 -2.33250284 -1.28143489 0.47375247 -2.32688594
		 -1.25749588 0.47375247 -2.31089044 -1.24150038 0.47375247 -2.28695154 -1.23588347 0.47375247 -2.25871348;
	setAttr -s 110 ".ed[0:109]"  0 5 1 1 2 1 0 1 0 2 38 0 3 43 0 2 3 1 4 28 0
		 3 4 1 5 33 0 4 5 1 5 2 0 6 10 1 7 9 1 7 6 0 8 58 0 9 63 0 8 9 1 10 48 0 9 10 0 11 53 0
		 10 11 1 11 8 1 5 10 0 2 9 0 1 7 0 0 6 0 15 4 0 19 3 0 23 11 0 27 8 0 15 19 1 27 23 1
		 15 14 0 14 16 1 16 19 0 14 13 0 13 17 1 17 16 0 13 12 0 12 18 1 18 17 0 12 0 0 1 18 0
		 6 22 0 22 24 1 24 7 0 22 21 0 21 25 1 25 24 0 21 20 0 20 26 1 26 25 0 20 23 0 27 26 0
		 37 39 0 47 29 0 57 59 0 67 49 0 28 33 1 37 29 1 38 43 1 47 39 1 48 53 1 57 49 1 58 63 1
		 67 59 1 28 32 0 32 34 1 34 33 0 32 31 0 31 35 1 35 34 0 31 30 0 30 36 1 36 35 0 30 29 0
		 37 36 0 38 42 0 42 44 1 44 43 0 42 41 0 41 45 1 45 44 0 41 40 0 40 46 1 46 45 0 40 39 0
		 47 46 0 48 52 0 52 54 1 54 53 0 52 51 0 51 55 1 55 54 0 51 50 0 50 56 1 56 55 0 50 49 0
		 57 56 0 58 62 0 62 64 1 64 63 0 62 61 0 61 65 1 65 64 0 61 60 0 60 66 1 66 65 0 60 59 0
		 67 66 0;
	setAttr -s 44 -ch 220 ".fc[0:43]" -type "polyFaces" 
		f 4 30 27 7 -27
		mu 0 4 10 15 14 7
		f 4 59 -56 61 -55
		mu 0 4 44 38 46 39
		f 4 3 60 -5 -6
		mu 0 4 1 45 56 14
		f 4 -10 6 58 -9
		mu 0 4 2 37 43 51
		f 4 31 28 21 -30
		mu 0 4 11 17 16 9
		f 4 63 -58 65 -57
		mu 0 4 48 41 50 42
		f 4 14 64 -16 -17
		mu 0 4 9 49 63 4
		f 4 -21 17 62 -20
		mu 0 4 16 40 47 58
		f 4 10 23 18 -23
		mu 0 4 2 1 4 5
		f 4 -2 24 12 -24
		mu 0 4 1 0 18 4
		f 4 -3 25 -14 -25
		mu 0 4 8 13 3 6
		f 4 0 22 -12 -26
		mu 0 4 13 2 40 3
		f 4 32 33 34 -31
		mu 0 4 10 23 24 15
		f 4 35 36 37 -34
		mu 0 4 23 21 26 24
		f 4 38 39 40 -37
		mu 0 4 20 19 27 25
		f 4 41 2 42 -40
		mu 0 4 19 13 8 27
		f 4 43 44 45 13
		mu 0 4 3 31 32 6
		f 4 46 47 48 -45
		mu 0 4 31 30 35 32
		f 4 49 50 51 -48
		mu 0 4 30 29 36 34
		f 4 52 -32 53 -51
		mu 0 4 29 17 11 36
		f 7 -39 -36 -33 26 9 -1 -42
		mu 0 7 19 20 22 12 37 2 13
		f 7 -38 -41 -43 1 5 -28 -35
		mu 0 7 24 26 28 0 1 14 15
		f 7 -50 -47 -44 11 20 -29 -53
		mu 0 7 29 30 31 3 40 16 17
		f 7 16 -13 -46 -49 -52 -54 29
		mu 0 7 9 4 18 33 34 36 11
		f 4 66 67 68 -59
		mu 0 4 43 70 71 51
		f 4 69 70 71 -68
		mu 0 4 70 68 72 71
		f 4 72 73 74 -71
		mu 0 4 68 66 73 72
		f 4 75 -60 76 -74
		mu 0 4 66 38 44 73
		f 4 77 78 79 -61
		mu 0 4 45 79 80 56
		f 4 80 81 82 -79
		mu 0 4 79 77 82 80
		f 4 83 84 85 -82
		mu 0 4 78 76 83 81
		f 4 86 -62 87 -85
		mu 0 4 76 39 46 83
		f 4 88 89 90 -63
		mu 0 4 47 90 91 58
		f 4 91 92 93 -90
		mu 0 4 90 88 92 91
		f 4 94 95 96 -93
		mu 0 4 88 86 93 92
		f 4 97 -64 98 -96
		mu 0 4 86 41 48 93
		f 4 99 100 101 -65
		mu 0 4 49 99 100 63
		f 4 102 103 104 -101
		mu 0 4 99 97 102 100
		f 4 105 106 107 -104
		mu 0 4 98 96 103 101
		f 4 108 -66 109 -107
		mu 0 4 96 42 50 103
		f 12 -4 -11 8 -69 -72 -75 -77 54 -87 -84 -81 -78
		mu 0 12 45 1 2 51 71 72 74 52 53 75 77 79
		f 12 -76 -73 -70 -67 -7 -8 4 -80 -83 -86 -88 55
		mu 0 12 54 65 67 69 55 7 14 56 80 82 84 57
		f 12 -15 -22 19 -91 -94 -97 -99 56 -109 -106 -103 -100
		mu 0 12 49 9 16 58 91 92 94 59 60 95 97 99
		f 12 -98 -95 -92 -89 -18 -19 15 -102 -105 -108 -110 57
		mu 0 12 61 85 87 89 62 5 4 63 100 102 104 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Pages" -p "Book02";
	rename -uid "6D3015C6-46A1-212B-EE30-BC94F962D5D4";
	setAttr ".rp" -type "double3" -0.012322029651021388 0.3867899013318663 -0.47239404522870176 ;
	setAttr ".sp" -type "double3" -0.012322029651021388 0.3867899013318663 -0.47239404522870176 ;
createNode transform -n "Page01" -p "|Books|Book02|Pages";
	rename -uid "B800EA1A-47EA-F672-AA4A-418B48354F7E";
	setAttr ".rp" -type "double3" -2.1004032936231205 0.58273515421213329 -1.689531114258231 ;
	setAttr ".sp" -type "double3" -2.1004032936231205 0.58273515421213329 -1.689531114258231 ;
createNode mesh -n "PageShape1" -p "|Books|Book02|Pages|Page01";
	rename -uid "1F4B5470-44BF-0326-37E9-8E9B8F7D9058";
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
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.98068792 1.0658593 -1.4854393 
		-1.8444141 1.0658593 -2.7447541 -0.98068792 0.09961094 -1.4854393 -1.8444141 0.09961094 
		-2.7447541 -2.3563926 0.09961094 -0.63430804 -3.2201188 0.09961094 -1.8936229 -2.3563926 
		1.0658593 -0.63430804 -3.2201188 1.0658593 -1.8936229;
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
createNode transform -n "Page02" -p "|Books|Book02|Pages";
	rename -uid "C238C558-49A9-33A7-08CA-8EA37DD60D36";
	setAttr ".rp" -type "double3" -2.103920199808285 0.61648673135103427 -1.6888421294005178 ;
	setAttr ".sp" -type "double3" -2.103920199808285 0.61648673135103427 -1.6888421294005178 ;
createNode mesh -n "PageShape2" -p "|Books|Book02|Pages|Page02";
	rename -uid "AD9EC1F2-464F-68AE-CA8B-4DA13DE79FE0";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.98381925 1.0996109 -1.4883133 
		-1.8483164 1.0996109 -2.7405024 -0.98381925 0.13336252 -1.4883133 -1.8483164 0.13336252 
		-2.7405024 -2.3595238 0.13336252 -0.637182 -3.2240212 0.13336252 -1.8893709 -2.3595238 
		1.0996109 -0.637182 -3.2240212 1.0996109 -1.8893709;
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
createNode transform -n "Page03" -p "|Books|Book02|Pages";
	rename -uid "70F7D4C7-4A21-C4C0-19D4-E9844FD3D322";
	setAttr ".rp" -type "double3" -2.1081593803905849 0.65023827868761264 -1.6880116462779826 ;
	setAttr ".sp" -type "double3" -2.1081593803905849 0.65023827868761264 -1.6880116462779826 ;
createNode mesh -n "PageShape3" -p "|Books|Book02|Pages|Page03";
	rename -uid "44E97A10-4B62-E2B8-0A84-EAB8A92CFABB";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.98759371 1.1333625 -1.4917775 
		-1.8530204 1.1333625 -2.7353771 -0.98759371 0.16711406 -1.4917775 -1.8530204 0.16711406 
		-2.7353771 -2.3632984 0.16711406 -0.64064622 -3.2287252 0.16711406 -1.8842458 -2.3632984 
		1.1333625 -0.64064622 -3.2287252 1.1333625 -1.8842458;
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
createNode transform -n "Page04" -p "|Books|Book02|Pages";
	rename -uid "56F5CBB6-42D9-BD71-5D1A-CA876CFBEC0F";
	setAttr ".rp" -type "double3" -2.1105449382169583 0.68398982602419101 -1.6875442999420174 ;
	setAttr ".sp" -type "double3" -2.1105449382169583 0.68398982602419101 -1.6875442999420174 ;
createNode mesh -n "PageShape4" -p "|Books|Book02|Pages|Page04";
	rename -uid "49650F6C-4FC1-ABA2-9084-E68944442E40";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.98971772 1.167114 -1.493727 
		-1.8556675 1.167114 -2.7324929 -0.98971772 0.20086561 -1.493727 -1.8556675 0.20086561 
		-2.7324929 -2.3654222 0.20086561 -0.64259565 -3.2313721 0.20086561 -1.8813616 -2.3654222 
		1.167114 -0.64259565 -3.2313721 1.167114 -1.8813616;
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
createNode transform -n "Page05" -p "|Books|Book02|Pages";
	rename -uid "AD1B3590-4441-23F5-742E-23BEFC07BDA0";
	setAttr ".rp" -type "double3" -2.1077702924286874 0.71774137336076937 -1.6880878711472149 ;
	setAttr ".sp" -type "double3" -2.1077702924286874 0.71774137336076937 -1.6880878711472149 ;
createNode mesh -n "PageShape5" -p "|Books|Book02|Pages|Page05";
	rename -uid "392FABC8-4BCF-2322-82AC-CD85295F3BE3";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.98724729 1.2008656 -1.4914596 
		-1.8525887 1.2008656 -2.7358475 -0.98724729 0.23461716 -1.4914596 -1.8525887 0.23461716 
		-2.7358475 -2.362952 0.23461716 -0.64032829 -3.2282934 0.23461716 -1.8847162 -2.362952 
		1.2008656 -0.64032829 -3.2282934 1.2008656 -1.8847162;
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
createNode transform -n "Page06" -p "|Books|Book02|Pages";
	rename -uid "C2F87902-4E10-4AE5-B276-1D8D69E0837A";
	setAttr ".rp" -type "double3" -2.1037518284108914 0.75149292069734774 -1.6888751144553269 ;
	setAttr ".sp" -type "double3" -2.1037518284108914 0.75149292069734774 -1.6888751144553269 ;
createNode mesh -n "PageShape6" -p "|Books|Book02|Pages|Page06";
	rename -uid "F57BAC78-438A-2CF4-BF0E-A78B66106941";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.98366934 1.2346171 -1.4881757 
		-1.8481297 1.2346171 -2.7407057 -0.98366934 0.26836872 -1.4881757 -1.8481297 0.26836872 
		-2.7407057 -2.359374 0.26836872 -0.63704443 -3.2238343 0.26836872 -1.8895745 -2.359374 
		1.2346171 -0.63704443 -3.2238343 1.2346171 -1.8895745;
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
createNode transform -n "Page07" -p "|Books|Book02|Pages";
	rename -uid "F712D111-410D-FB1A-21E3-2D8453D5B723";
	setAttr ".rp" -type "double3" -2.1004032936231205 0.78524446803392611 -1.689531114258231 ;
	setAttr ".sp" -type "double3" -2.1004032936231205 0.78524446803392611 -1.689531114258231 ;
createNode mesh -n "PageShape7" -p "|Books|Book02|Pages|Page07";
	rename -uid "B6E28D55-43C4-FD73-1590-E7B016FC77C7";
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
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.98068792 1.2683687 -1.4854393 
		-1.8444141 1.2683687 -2.7447541 -0.98068792 0.30212027 -1.4854393 -1.8444141 0.30212027 
		-2.7447541 -2.3563926 0.30212027 -0.63430804 -3.2201188 0.30212027 -1.8936229 -2.3563926 
		1.2683687 -0.63430804 -3.2201188 1.2683687 -1.8936229;
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
createNode transform -n "Book03" -p "Books";
	rename -uid "BA94847D-4403-E232-4DAB-E3A87B030572";
	setAttr ".rp" -type "double3" -2.0684690787275395 1.0833462949024899 -1.6575563186030675 ;
	setAttr ".sp" -type "double3" -2.0684690787275395 1.0833462949024899 -1.6575563186030675 ;
createNode transform -n "pCube1" -p "Book03";
	rename -uid "8DC4D8ED-4545-1607-E0E0-E29CD0F1046E";
	setAttr ".rp" -type "double3" -2.1549973038896506 0.97022518752660591 -1.671731528711631 ;
	setAttr ".sp" -type "double3" -2.1549973038896506 0.97022518752660591 -1.671731528711631 ;
createNode transform -n "transform2" -p "|Books|Book03|pCube1";
	rename -uid "22E6D7B8-485D-A348-2E25-0E95F94BAAF5";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.1549973038896506 0.97022518752660591 -1.671731528711631 ;
	setAttr ".sp" -type "double3" -2.1549973038896506 0.97022518752660591 -1.671731528711631 ;
createNode mesh -n "pCubeShape1" -p "|Books|Book03|pCube1|transform2";
	rename -uid "1E570ED9-49E7-7BB7-53DE-1E82ABB91B97";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.40609428 0.5 0.40609428 0.75 0.40609428 0 0.40609428
		 1 0.40609428 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.37562287 0.5 -0.5 -0.37562287 -0.5 -0.5
		 -0.37562287 -0.5 0.5 -0.37562287 0.5 0.5;
	setAttr -s 20 ".ed[0:19]"  0 10 0 2 11 0 4 8 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 0 9 7 0 8 9 1 10 1 0 9 10 1 11 3 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 18 -2 -5
		mu 0 4 0 16 18 2
		f 4 1 19 -3 -7
		mu 0 4 2 18 14 4
		f 4 2 14 -4 -9
		mu 0 4 4 14 15 6
		f 4 3 16 -1 -11
		mu 0 4 6 15 17 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 9 -14 -15
		mu 0 4 14 5 7 15
		f 4 -17 13 11 -16
		mu 0 4 17 15 7 9
		f 4 -19 15 5 -18
		mu 0 4 18 16 1 3
		f 4 -20 17 7 -13
		mu 0 4 14 18 3 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "Book03";
	rename -uid "2129CE0E-461A-6D1D-EEEC-BBA81A78B7E4";
	setAttr ".rp" -type "double3" -2.1549973038896506 1.2862471322234383 -1.671731528711631 ;
	setAttr ".sp" -type "double3" -2.1549973038896506 1.2862471322234383 -1.671731528711631 ;
createNode transform -n "transform1" -p "|Books|Book03|pCube2";
	rename -uid "0C18BDC9-41BD-6EE1-E31D-B58039A03CCC";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.1549973038896506 1.2862471322234383 -1.671731528711631 ;
	setAttr ".sp" -type "double3" -2.1549973038896506 1.2862471322234383 -1.671731528711631 ;
createNode mesh -n "pCubeShape2" -p "|Books|Book03|pCube2|transform1";
	rename -uid "5A2F2716-4C49-CBE9-797E-F28D347BA810";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[9]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.40609428 0.5 0.40609428 0.75 0.40609428 0 0.40609428
		 1 0.40609428 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.37562287 0.5 -0.5 -0.37562287 -0.5 -0.5
		 -0.37562287 -0.5 0.5 -0.37562287 0.5 0.5;
	setAttr -s 20 ".ed[0:19]"  0 10 0 2 11 0 4 8 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 0 9 7 0 8 9 1 10 1 0 9 10 1 11 3 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 18 -2 -5
		mu 0 4 0 16 18 2
		f 4 1 19 -3 -7
		mu 0 4 2 18 14 4
		f 4 2 14 -4 -9
		mu 0 4 4 14 15 6
		f 4 3 16 -1 -11
		mu 0 4 6 15 17 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 9 -14 -15
		mu 0 4 14 5 7 15
		f 4 -17 13 11 -16
		mu 0 4 17 15 7 9
		f 4 -19 15 5 -18
		mu 0 4 18 16 1 3
		f 4 -20 17 7 -13
		mu 0 4 14 18 3 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "Book03";
	rename -uid "300D6561-4DBC-C984-1F48-6894186CEE84";
	setAttr ".rp" -type "double3" -2.0684690707971427 1.0742081617486066 -1.6575562481375987 ;
	setAttr ".sp" -type "double3" -2.0684690707971427 1.0742081617486066 -1.6575562481375987 ;
createNode mesh -n "pCube3Shape" -p "|Books|Book03|pCube3";
	rename -uid "E709DAC6-4077-25CB-840E-74B442041ABE";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 7 "f[2]" "f[6]" "f[9]" "f[21]" "f[23]" "f[28:29]" "f[36:37]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[0]" "f[8]" "f[12:13]" "f[41]" "f[43]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 7 "f[3]" "f[7]" "f[11]" "f[20]" "f[22]" "f[24:25]" "f[32:33]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[10]" "f[14:17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 6 "f[1]" "f[5]" "f[26:27]" "f[30:31]" "f[34:35]" "f[38:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[4]" "f[8]" "f[18:19]" "f[40]" "f[42]";
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 105 ".uvst[0].uvsp[0:104]" -type "float2" 0.375 0.50001252
		 0.40609428 0.5 0.40609428 0.25 0.375 1.2546778e-05 0.40609428 0.75 0.40609428 1 0.125
		 1.2546778e-05 0.40609428 1 0.125 0.24998748 0.40609428 0.5 0.39915791 1 0.39915791
		 0.5 0.39915791 0 0.375 0.24998748 0.40609428 0.75 0.39915764 0.75 0.40609428 0.25
		 0.39915764 0.25 0.375 0.74998748 0.37480697 0.12619485 0.375 0 0.375 1 0.38707894
		 0 0.38707894 1 0.38712981 0.74756283 0.125 0 0.375 0.75 0.125 0.12498758 0.375 0.62501246
		 0.38712981 0.24756245 0.375 0.25 0.37480697 0.12380518 0.125 0.1250125 0.375 0.62498748
		 0.375 0.5 0.125 0.25 0.387079 0.49969867 0.40609428 0 0.63749874 -1.0244548e-08 0.86250126
		 0.25 0.40609428 0 0.63749874 4.6566129e-09 0.86250126 0.25 0.6125012 0 0.63749874
		 0.25 0.61250126 0.5 0.86250126 -1.8626451e-09 0.6125012 0 0.63749874 0.25 0.6125012
		 0.5 0.86250126 -6.519258e-09 0.61250108 0.25 0.62499994 0.26249874 0.625 0.48750126
		 0.625 0.98750126 0.6125012 1 0.6125012 0.75 0.625 0.76249874 0.61250108 0.25 0.62499994
		 0.26249874 0.625 0.48750126 0.625 0.98750126 0.6125012 1 0.6125012 0.75 0.625 0.76249874
		 0.625 0.99375063 0.63124937 -5.1222715e-09 0.625 1 0.625 0 0.61875063 1 0.61875063
		 0 0.61919725 0.24738353 0.625 0.25 0.63124937 0.25 0.625 0.25624937 0.625 0.49375066
		 0.86875063 0.25 0.625 0.5 0.875 0.25 0.61880648 0.50204915 0.61827183 0.74934268
		 0.875 0 0.625 0.75 0.86875063 -9.3131958e-10 0.625 0.75624937 0.625 0.99375063 0.63124937
		 2.3283053e-09 0.625 1 0.625 0 0.61875063 1 0.61875063 0 0.61919725 0.24738353 0.625
		 0.25 0.63124937 0.25 0.625 0.25624937 0.625 0.49375066 0.86875063 0.25 0.625 0.5
		 0.875 0.25 0.61880642 0.50204915 0.61827183 0.74934268 0.875 0 0.625 0.75 0.86875063
		 -3.2596186e-09 0.625 0.75624937;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 68 ".pt[0:67]" -type "float3"  0.97339779 0.72271496 0.18909243 
		-0.34673166 0.72271496 1.0049934 -0.44821107 0.72271496 0.84079951 -0.44821107 0.72271496 
		0.84079951 0.87191838 0.72271496 0.024898492 0.87191838 0.72271496 0.024898492 0.97339779 
		0.72271496 0.18909243 -0.34673166 0.72271496 1.0049934 -0.44821107 0.72271496 0.84079951 
		-0.44821107 0.72271496 0.84079951 0.87191838 0.72271496 0.024898492 0.87191838 0.72271496 
		0.024898492 0.96739638 0.72271496 0.17938209 0.95030552 0.72271496 0.15172911 0.92472744 
		0.72271496 0.11034369 0.89455593 0.72271496 0.06152609 -0.39540201 0.72271496 0.92624474 
		-0.3698239 0.72271496 0.96763015 -0.35273308 0.72271496 0.99528313 -0.42557353 0.72271496 
		0.8774271 0.92472744 0.72271496 0.11034369 0.95030552 0.72271496 0.15172911 0.96739638 
		0.72271496 0.17938209 0.89455593 0.72271496 0.06152609 -0.35273308 0.72271496 0.99528313 
		-0.3698239 0.72271496 0.96763015 -0.39540201 0.72271496 0.92624474 -0.42557353 0.72271496 
		0.8774271 0.19828784 0.72271496 -1.065037 0.091497004 0.72271496 -1.090246 0.1198591 
		0.72271496 -1.100832 0.15011334 0.72271496 -1.0997586 0.17765382 0.72271496 -1.0871891 
		0.19828784 0.72271496 -1.065037 0.17765382 0.72271496 -1.0871891 0.15011334 0.72271496 
		-1.0997586 0.1198591 0.72271496 -1.100832 0.091497004 0.72271496 -1.090246 -1.1218415 
		0.72271496 -0.249136 -1.0966328 0.72271496 -0.35592684 -1.1187849 0.72271496 -0.33529282 
		-1.1313543 0.72271496 -0.3077524 -1.1324277 0.72271496 -0.27749816 -1.1218415 0.72271496 
		-0.249136 -1.1324277 0.72271496 -0.27749816 -1.1313543 0.72271496 -0.3077524 -1.1187849 
		0.72271496 -0.33529282 -1.0966328 0.72271496 -0.35592684 0.19828784 0.72271496 -1.065037 
		0.091497004 0.72271496 -1.090246 0.1198591 0.72271496 -1.100832 0.15011334 0.72271496 
		-1.0997586 0.17765382 0.72271496 -1.0871891 0.19828784 0.72271496 -1.065037 0.17765382 
		0.72271496 -1.0871891 0.15011334 0.72271496 -1.0997586 0.1198591 0.72271496 -1.100832 
		0.091497004 0.72271496 -1.090246 -1.1218415 0.72271496 -0.249136 -1.0966328 0.72271496 
		-0.35592684 -1.1187849 0.72271496 -0.33529282 -1.1313543 0.72271496 -0.3077524 -1.1324277 
		0.72271496 -0.27749816 -1.1218415 0.72271496 -0.249136 -1.1324277 0.72271496 -0.27749816 
		-1.1313543 0.72271496 -0.3077524 -1.1187849 0.72271496 -0.33529282 -1.0966328 0.72271496 
		-0.35592684;
	setAttr -s 68 ".vt[0:67]"  -2.71181989 0.31029823 -0.85656631 -2.71181989 0.31029823 -2.33250284
		 -2.52824712 0.22923398 -2.33250284 -2.52824712 0.15773052 -2.33250284 -2.52824712 0.15773052 -0.85656631
		 -2.52824712 0.22923398 -0.85656631 -2.71181989 0.39268821 -0.85656631 -2.71181989 0.39268821 -2.33250284
		 -2.52824712 0.54525596 -2.33250284 -2.52824712 0.47375247 -2.33250284 -2.52824712 0.47375247 -0.85656631
		 -2.52824712 0.54525596 -0.85656631 -2.7009635 0.24577354 -0.85656631 -2.67004681 0.19950359 -0.85656631
		 -2.62377691 0.16858698 -0.85656631 -2.56919765 0.15773052 -0.85656631 -2.62377691 0.16858698 -2.33250284
		 -2.67004681 0.19950359 -2.33250284 -2.7009635 0.24577354 -2.33250284 -2.56919765 0.15773052 -2.33250284
		 -2.62377691 0.53439951 -0.85656631 -2.67004681 0.50348288 -0.85656631 -2.7009635 0.45721295 -0.85656631
		 -2.56919765 0.54525596 -0.85656631 -2.7009635 0.45721295 -2.33250284 -2.67004681 0.50348288 -2.33250284
		 -2.62377691 0.53439951 -2.33250284 -2.56919765 0.54525596 -2.33250284 -1.30967295 0.15773052 -0.85656631
		 -1.23588347 0.15773052 -0.93035573 -1.24150038 0.15773052 -0.90211773 -1.25749588 0.15773052 -0.87817872
		 -1.28143489 0.15773052 -0.86218321 -1.30967295 0.22923398 -0.85656631 -1.28143489 0.22923398 -0.86218321
		 -1.25749588 0.22923398 -0.87817872 -1.24150038 0.22923398 -0.90211773 -1.23588347 0.22923398 -0.93035573
		 -1.30967295 0.22923398 -2.33250284 -1.23588347 0.22923398 -2.25871348 -1.24150038 0.22923398 -2.28695154
		 -1.25749588 0.22923398 -2.31089044 -1.28143489 0.22923398 -2.32688594 -1.30967295 0.15773052 -2.33250284
		 -1.28143489 0.15773052 -2.32688594 -1.25749588 0.15773052 -2.31089044 -1.24150038 0.15773052 -2.28695154
		 -1.23588347 0.15773052 -2.25871348 -1.30967295 0.47375247 -0.85656631 -1.23588347 0.47375247 -0.93035573
		 -1.24150038 0.47375247 -0.90211773 -1.25749588 0.47375247 -0.87817872 -1.28143489 0.47375247 -0.86218321
		 -1.30967295 0.54525596 -0.85656631 -1.28143489 0.54525596 -0.86218321 -1.25749588 0.54525596 -0.87817872
		 -1.24150038 0.54525596 -0.90211773 -1.23588347 0.54525596 -0.93035573 -1.30967295 0.54525596 -2.33250284
		 -1.23588347 0.54525596 -2.25871348 -1.24150038 0.54525596 -2.28695154 -1.25749588 0.54525596 -2.31089044
		 -1.28143489 0.54525596 -2.32688594 -1.30967295 0.47375247 -2.33250284 -1.28143489 0.47375247 -2.32688594
		 -1.25749588 0.47375247 -2.31089044 -1.24150038 0.47375247 -2.28695154 -1.23588347 0.47375247 -2.25871348;
	setAttr -s 110 ".ed[0:109]"  0 5 1 1 2 1 0 1 0 2 38 0 3 43 0 2 3 1 4 28 0
		 3 4 1 5 33 0 4 5 1 5 2 0 6 10 1 7 9 1 7 6 0 8 58 0 9 63 0 8 9 1 10 48 0 9 10 0 11 53 0
		 10 11 1 11 8 1 5 10 0 2 9 0 1 7 0 0 6 0 15 4 0 19 3 0 23 11 0 27 8 0 15 19 1 27 23 1
		 15 14 0 14 16 1 16 19 0 14 13 0 13 17 1 17 16 0 13 12 0 12 18 1 18 17 0 12 0 0 1 18 0
		 6 22 0 22 24 1 24 7 0 22 21 0 21 25 1 25 24 0 21 20 0 20 26 1 26 25 0 20 23 0 27 26 0
		 37 39 0 47 29 0 57 59 0 67 49 0 28 33 1 37 29 1 38 43 1 47 39 1 48 53 1 57 49 1 58 63 1
		 67 59 1 28 32 0 32 34 1 34 33 0 32 31 0 31 35 1 35 34 0 31 30 0 30 36 1 36 35 0 30 29 0
		 37 36 0 38 42 0 42 44 1 44 43 0 42 41 0 41 45 1 45 44 0 41 40 0 40 46 1 46 45 0 40 39 0
		 47 46 0 48 52 0 52 54 1 54 53 0 52 51 0 51 55 1 55 54 0 51 50 0 50 56 1 56 55 0 50 49 0
		 57 56 0 58 62 0 62 64 1 64 63 0 62 61 0 61 65 1 65 64 0 61 60 0 60 66 1 66 65 0 60 59 0
		 67 66 0;
	setAttr -s 44 -ch 220 ".fc[0:43]" -type "polyFaces" 
		f 4 30 27 7 -27
		mu 0 4 10 15 14 7
		f 4 59 -56 61 -55
		mu 0 4 44 38 46 39
		f 4 3 60 -5 -6
		mu 0 4 1 45 56 14
		f 4 -10 6 58 -9
		mu 0 4 2 37 43 51
		f 4 31 28 21 -30
		mu 0 4 11 17 16 9
		f 4 63 -58 65 -57
		mu 0 4 48 41 50 42
		f 4 14 64 -16 -17
		mu 0 4 9 49 63 4
		f 4 -21 17 62 -20
		mu 0 4 16 40 47 58
		f 4 10 23 18 -23
		mu 0 4 2 1 4 5
		f 4 -2 24 12 -24
		mu 0 4 1 0 18 4
		f 4 -3 25 -14 -25
		mu 0 4 8 13 3 6
		f 4 0 22 -12 -26
		mu 0 4 13 2 40 3
		f 4 32 33 34 -31
		mu 0 4 10 23 24 15
		f 4 35 36 37 -34
		mu 0 4 23 21 26 24
		f 4 38 39 40 -37
		mu 0 4 20 19 27 25
		f 4 41 2 42 -40
		mu 0 4 19 13 8 27
		f 4 43 44 45 13
		mu 0 4 3 31 32 6
		f 4 46 47 48 -45
		mu 0 4 31 30 35 32
		f 4 49 50 51 -48
		mu 0 4 30 29 36 34
		f 4 52 -32 53 -51
		mu 0 4 29 17 11 36
		f 7 -39 -36 -33 26 9 -1 -42
		mu 0 7 19 20 22 12 37 2 13
		f 7 -38 -41 -43 1 5 -28 -35
		mu 0 7 24 26 28 0 1 14 15
		f 7 -50 -47 -44 11 20 -29 -53
		mu 0 7 29 30 31 3 40 16 17
		f 7 16 -13 -46 -49 -52 -54 29
		mu 0 7 9 4 18 33 34 36 11
		f 4 66 67 68 -59
		mu 0 4 43 70 71 51
		f 4 69 70 71 -68
		mu 0 4 70 68 72 71
		f 4 72 73 74 -71
		mu 0 4 68 66 73 72
		f 4 75 -60 76 -74
		mu 0 4 66 38 44 73
		f 4 77 78 79 -61
		mu 0 4 45 79 80 56
		f 4 80 81 82 -79
		mu 0 4 79 77 82 80
		f 4 83 84 85 -82
		mu 0 4 78 76 83 81
		f 4 86 -62 87 -85
		mu 0 4 76 39 46 83
		f 4 88 89 90 -63
		mu 0 4 47 90 91 58
		f 4 91 92 93 -90
		mu 0 4 90 88 92 91
		f 4 94 95 96 -93
		mu 0 4 88 86 93 92
		f 4 97 -64 98 -96
		mu 0 4 86 41 48 93
		f 4 99 100 101 -65
		mu 0 4 49 99 100 63
		f 4 102 103 104 -101
		mu 0 4 99 97 102 100
		f 4 105 106 107 -104
		mu 0 4 98 96 103 101
		f 4 108 -66 109 -107
		mu 0 4 96 42 50 103
		f 12 -4 -11 8 -69 -72 -75 -77 54 -87 -84 -81 -78
		mu 0 12 45 1 2 51 71 72 74 52 53 75 77 79
		f 12 -76 -73 -70 -67 -7 -8 4 -80 -83 -86 -88 55
		mu 0 12 54 65 67 69 55 7 14 56 80 82 84 57
		f 12 -15 -22 19 -91 -94 -97 -99 56 -109 -106 -103 -100
		mu 0 12 49 9 16 58 91 92 94 59 60 95 97 99
		f 12 -98 -95 -92 -89 -18 -19 15 -102 -105 -108 -110 57
		mu 0 12 61 85 87 89 62 5 4 63 100 102 104 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Pages" -p "Book03";
	rename -uid "72F3AB41-43CF-F3F9-04D7-0BA88B397E2A";
	setAttr ".rp" -type "double3" -0.51627717232274695 0.77674293593638122 0.17281174154313289 ;
	setAttr ".sp" -type "double3" -0.51627717232274695 0.77674293593638122 0.17281174154313289 ;
createNode transform -n "Page01" -p "|Books|Book03|Pages";
	rename -uid "E6B87846-48B0-A88F-6551-8CB60D15EAD8";
	setAttr ".rp" -type "double3" -2.0495315126939668 0.97268818881664831 -1.6955129458412437 ;
	setAttr ".sp" -type "double3" -2.0495315126939668 0.97268818881664831 -1.6955129458412437 ;
createNode mesh -n "PageShape1" -p "|Books|Book03|Pages|Page01";
	rename -uid "6F242EEC-4FB5-02C2-E9CA-B4A968E67428";
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
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.2139257 1.4558125 -1.3196356 
		-1.6474752 1.4558125 -2.4525867 -1.2139257 0.48956397 -1.3196356 -1.6474752 0.48956397 
		-2.4525867 -2.4515877 0.48956397 -0.93843919 -2.8851373 0.48956397 -2.0713904 -2.4515877 
		1.4558125 -0.93843919 -2.8851373 1.4558125 -2.0713904;
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
createNode transform -n "Page02" -p "|Books|Book03|Pages";
	rename -uid "85E6EA7C-46AE-7D2B-0D71-81B275790655";
	setAttr ".rp" -type "double3" -2.0530681284268866 1.0064397659555491 -1.6960923234444252 ;
	setAttr ".sp" -type "double3" -2.0530681284268866 1.0064397659555491 -1.6960923234444252 ;
createNode mesh -n "PageShape2" -p "|Books|Book03|Pages|Page02";
	rename -uid "64D8C46B-4C3F-7D61-9799-B4AF987F06F8";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.2158598 1.4895639 -1.3234204 
		-1.6526145 1.4895639 -2.4499607 -1.2158598 0.52331555 -1.3234204 -1.6526145 0.52331555 
		-2.4499607 -2.4535217 0.52331555 -0.94222397 -2.8902767 0.52331555 -2.0687642 -2.4535217 
		1.4895639 -0.94222397 -2.8902767 1.4895639 -2.0687642;
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
createNode transform -n "Page03" -p "|Books|Book03|Pages";
	rename -uid "C6F16A40-41CD-9D8D-D983-829783481F95";
	setAttr ".rp" -type "double3" -2.0573310663480897 1.0401913132921274 -1.6967906890407518 ;
	setAttr ".sp" -type "double3" -2.0573310663480897 1.0401913132921274 -1.6967906890407518 ;
createNode mesh -n "PageShape3" -p "|Books|Book03|Pages|Page03";
	rename -uid "08533523-4FD4-D78A-28F6-A9A15DDAC5B5";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.2181909 1.5233155 -1.3279825 
		-1.6588092 1.5233155 -2.4467952 -1.2181909 0.5570671 -1.3279825 -1.6588092 0.5570671 
		-2.4467952 -2.455853 0.5570671 -0.94678611 -2.8964713 0.5570671 -2.065599 -2.455853 
		1.5233155 -0.94678611 -2.8964713 1.5233155 -2.065599;
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
createNode transform -n "Page04" -p "|Books|Book03|Pages";
	rename -uid "E96141FA-4EC2-4990-376D-44A2FA729191";
	setAttr ".rp" -type "double3" -2.059729993386898 1.0739428606287058 -1.6971836875180857 ;
	setAttr ".sp" -type "double3" -2.059729993386898 1.0739428606287058 -1.6971836875180857 ;
createNode mesh -n "PageShape4" -p "|Books|Book03|Pages|Page04";
	rename -uid "948AC997-4743-5CCC-2FA7-948E58883439";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.2195027 1.557067 -1.3305498 
		-1.6622952 1.557067 -2.445014 -1.2195027 0.59081864 -1.3305498 -1.6622952 0.59081864 
		-2.445014 -2.4571648 0.59081864 -0.9493534 -2.8999574 0.59081864 -2.0638175 -2.4571648 
		1.557067 -0.9493534 -2.8999574 1.557067 -2.0638175;
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
createNode transform -n "Page05" -p "|Books|Book03|Pages";
	rename -uid "1E7BDC65-4913-BF0B-B91D-128E8B878031";
	setAttr ".rp" -type "double3" -2.056939797848139 1.1076944079652842 -1.6967265904157323 ;
	setAttr ".sp" -type "double3" -2.056939797848139 1.1076944079652842 -1.6967265904157323 ;
createNode mesh -n "PageShape5" -p "|Books|Book03|Pages|Page05";
	rename -uid "C96949BE-40ED-5A38-C34C-7892C79CE470";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.2179769 1.5908186 -1.3275638 
		-1.6582407 1.5908186 -2.4470859 -1.2179769 0.62457019 -1.3275638 -1.6582407 0.62457019 
		-2.4470859 -2.4556389 0.62457019 -0.94636738 -2.8959026 0.62457019 -2.0658894 -2.4556389 
		1.5908186 -0.94636738 -2.8959026 1.5908186 -2.0658894;
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
createNode transform -n "Page06" -p "|Books|Book03|Pages";
	rename -uid "7662F722-4372-72BB-CEAF-C8AD4781DB94";
	setAttr ".rp" -type "double3" -2.0528988134376185 1.1414459553018625 -1.6960645858217733 ;
	setAttr ".sp" -type "double3" -2.0528988134376185 1.1414459553018625 -1.6960645858217733 ;
createNode mesh -n "PageShape6" -p "|Books|Book03|Pages|Page06";
	rename -uid "A8EC4D3A-4F1D-BE13-BD03-6CAEBB92E756";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.2157671 1.6245701 -1.3232392 
		-1.6523685 1.6245701 -2.4500864 -1.2157671 0.65832174 -1.3232392 -1.6523685 0.65832174 
		-2.4500864 -2.4534292 0.65832174 -0.94204277 -2.8900304 0.65832174 -2.0688901 -2.4534292 
		1.6245701 -0.94204277 -2.8900304 1.6245701 -2.0688901;
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
createNode transform -n "Page07" -p "|Books|Book03|Pages";
	rename -uid "574C6427-4C0A-38B5-8930-EFB2641A8358";
	setAttr ".rp" -type "double3" -2.0495315126939668 1.1751975026384409 -1.6955129458412435 ;
	setAttr ".sp" -type "double3" -2.0495315126939668 1.1751975026384409 -1.6955129458412435 ;
createNode mesh -n "PageShape7" -p "|Books|Book03|Pages|Page07";
	rename -uid "B3D9D17E-4266-AD50-2117-72B3777F7615";
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
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.2139257 1.6583217 -1.3196356 
		-1.6474752 1.6583217 -2.4525867 -1.2139257 0.69207329 -1.3196356 -1.6474752 0.69207329 
		-2.4525867 -2.4515877 0.69207329 -0.93843919 -2.8851373 0.69207329 -2.0713904 -2.4515877 
		1.6583217 -0.93843919 -2.8851373 1.6583217 -2.0713904;
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
	rename -uid "E2F09A66-4F2E-ED37-BCE2-359DBD7FCE72";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4C8A5CD1-4B07-F16B-1519-EC842C3075EF";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "915B771F-42F1-6EE7-D77B-329B0BDAEBAE";
createNode displayLayerManager -n "layerManager";
	rename -uid "EB6DCDD2-4E9D-7283-29A7-EAB066039302";
createNode displayLayer -n "defaultLayer";
	rename -uid "B1A1EA32-4B2E-A141-3BAD-B4B76508CA73";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "BAF23D24-4B39-828E-99C2-2DA5DD4D418F";
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
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 628\n            -height 295\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 628\n            -height 295\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 1\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 628\n            -height 295\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1264\n            -height 657\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1264\\n    -height 657\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1264\\n    -height 657\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E33526F7-4F92-8194-7589-71842D8EC188";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "WallColor";
	rename -uid "7F6909D6-45D8-A00B-ACE2-B0A48B0D438E";
	setAttr ".c" -type "float3" 0.19212799 0.29720563 0.30399999 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "2EABC0CD-4705-411D-0943-BEAD123FB653";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "C161DF4C-410E-2B16-D12A-0783AB97D73E";
createNode lambert -n "FloorColor";
	rename -uid "502AB159-4BB2-D767-B1DB-6988CD94E123";
	setAttr ".c" -type "float3" 0.186 0.11587801 0.12439432 ;
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
createNode lambert -n "WindowColor";
	rename -uid "AE3F87D6-476B-A9BA-86A0-7BA2A7278DFA";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "BDDD4921-45EA-DBE6-333C-F2AC64860E85";
	setAttr ".ihi" 0;
	setAttr -s 31 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "7775FF6A-41DC-309F-6D9F-2CBD92ABD8B1";
createNode lambert -n "WoodColor";
	rename -uid "6F190D8E-4EA2-E019-8BE2-C6AF013BB60B";
	setAttr ".c" -type "float3" 0.78799999 0.50165343 0.30022797 ;
createNode shadingEngine -n "lambert7SG";
	rename -uid "609868DF-4DB8-B6D9-7067-9A826C24356C";
	setAttr ".ihi" 0;
	setAttr -s 16 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "D28B9F78-4359-5A48-2C3B-079F03477E2D";
createNode lambert -n "GrayColor";
	rename -uid "D074A3A4-4CF4-228D-C137-7B98F4727C61";
	setAttr ".c" -type "float3" 0.41299999 0.41299999 0.41299999 ;
createNode shadingEngine -n "lambert8SG";
	rename -uid "E3F5D741-4BE8-21B3-938C-DC83C1CDF4DF";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo7";
	rename -uid "A011F75B-4B17-ED27-063E-17A515B3A65C";
createNode lambert -n "tempLightColor";
	rename -uid "0F3A3D02-413C-528D-8AC7-0C976B8F12B3";
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.93775934 0.93775934 0.93775934 ;
	setAttr ".ic" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert9SG";
	rename -uid "CF0653C1-474B-4E85-259F-2F8BC2FCBC74";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "A22B85AC-469E-B03D-D4A5-BABAAD64ADE5";
createNode groupId -n "groupId5";
	rename -uid "236461CA-4979-1983-F870-B3B17D5CC52F";
	setAttr ".ihi" 0;
createNode lambert -n "BrownBook";
	rename -uid "35E1AA83-40AD-FB5F-E1BC-93A52849156F";
	setAttr ".c" -type "float3" 0.146 0.10526599 0.10922398 ;
createNode shadingEngine -n "lambert10SG";
	rename -uid "7F1AC340-4E68-23D0-83D6-92A1D08B8110";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "130DB007-40E6-587A-B2BD-FF9F581301E5";
createNode lambert -n "GreenBook";
	rename -uid "08B7E79C-4706-AE1D-382E-F69C76EDB3E4";
	setAttr ".c" -type "float3" 0.045049973 0.23899999 0.027962996 ;
createNode shadingEngine -n "lambert11SG";
	rename -uid "C05A7261-4E7F-A285-7449-F783AF9EB731";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "B29B41DB-41C9-8299-5409-2E9E4BD473F4";
createNode lambert -n "PurpleBook";
	rename -uid "3CF9E49E-4B32-1CD5-DEC3-36A0EBF85B94";
	setAttr ".c" -type "float3" 0.26521161 0.028049994 0.33000001 ;
createNode shadingEngine -n "lambert12SG";
	rename -uid "74A49B23-4F2A-9419-47FA-9A956C19AB2A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "83D8DD2E-45ED-680C-D962-05BBD727B4BB";
createNode lambert -n "BlanketColor";
	rename -uid "5C881A49-45DE-73C7-619E-E4B52F47495C";
	setAttr ".c" -type "float3" 0.50999999 0.17952 0.17952 ;
createNode shadingEngine -n "lambert13SG";
	rename -uid "349395A0-4069-E63D-AE2E-0DB9EEDF7D71";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "013715DA-4544-941B-E3B2-109F1A23C362";
createNode groupId -n "groupId7";
	rename -uid "F2835210-4F5C-7CC5-1F2A-1B84F60F133B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "82D2E686-4415-483E-BE2A-E5858C7583D4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "FAEEE6CB-43DF-0759-9E7C-93AA21D56930";
	setAttr ".ihi" 0;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "29E9117A-4BDF-0893-3F3D-1E83970D8592";
	setAttr ".sst" -type "string" "";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "AE7231F1-47AA-AE9E-96CA-3486EEDFC1FA";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -374.99998509883937 -328.96824089623055 ;
	setAttr ".tgi[0].vh" -type "double2" -267.85713221345674 41.666665010982157 ;
	setAttr -s 26 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -568.5714111328125;
	setAttr ".tgi[0].ni[0].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -90;
	setAttr ".tgi[0].ni[1].y" 112.85713958740234;
	setAttr ".tgi[0].ni[1].nvs" 2066;
	setAttr ".tgi[0].ni[2].x" 251.42857360839844;
	setAttr ".tgi[0].ni[2].y" -31.428571701049805;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -55.714286804199219;
	setAttr ".tgi[0].ni[3].y" -31.428571701049805;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -261.42855834960938;
	setAttr ".tgi[0].ni[4].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 82.857139587402344;
	setAttr ".tgi[0].ni[5].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -90;
	setAttr ".tgi[0].ni[6].y" 112.85713958740234;
	setAttr ".tgi[0].ni[6].nvs" 2066;
	setAttr ".tgi[0].ni[7].x" 82.857139587402344;
	setAttr ".tgi[0].ni[7].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" -237.14285278320312;
	setAttr ".tgi[0].ni[8].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 70;
	setAttr ".tgi[0].ni[9].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" -570;
	setAttr ".tgi[0].ni[10].y" -2.8571429252624512;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" -262.85714721679688;
	setAttr ".tgi[0].ni[11].y" -2.8571429252624512;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" 82.857139587402344;
	setAttr ".tgi[0].ni[12].y" -57.142856597900391;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" -224.28572082519531;
	setAttr ".tgi[0].ni[13].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" -567.14288330078125;
	setAttr ".tgi[0].ni[14].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" -260;
	setAttr ".tgi[0].ni[15].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" -260;
	setAttr ".tgi[0].ni[16].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" -567.14288330078125;
	setAttr ".tgi[0].ni[17].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" -567.14288330078125;
	setAttr ".tgi[0].ni[18].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[18].nvs" 1923;
	setAttr ".tgi[0].ni[19].x" -260;
	setAttr ".tgi[0].ni[19].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[19].nvs" 1923;
	setAttr ".tgi[0].ni[20].x" -567.14288330078125;
	setAttr ".tgi[0].ni[20].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[20].nvs" 1923;
	setAttr ".tgi[0].ni[21].x" -260;
	setAttr ".tgi[0].ni[21].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[21].nvs" 1923;
	setAttr ".tgi[0].ni[22].x" -567.14288330078125;
	setAttr ".tgi[0].ni[22].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[22].nvs" 1923;
	setAttr ".tgi[0].ni[23].x" -260;
	setAttr ".tgi[0].ni[23].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[23].nvs" 1923;
	setAttr ".tgi[0].ni[24].x" -567.14288330078125;
	setAttr ".tgi[0].ni[24].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[24].nvs" 1923;
	setAttr ".tgi[0].ni[25].x" -260;
	setAttr ".tgi[0].ni[25].y" -4.2857141494750977;
	setAttr ".tgi[0].ni[25].nvs" 1923;
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
	setAttr -s 14 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 16 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 2 ".l";
select -ne :defaultTextureList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.69499999 0.69499999 0.69499999 ;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.317 0.317 0.317 ;
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
select -ne :modelPanel3ViewSelectedSet;
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
connectAttr "groupId8.id" "FlashlightBodyShape.iog.og[0].gid";
connectAttr "lambert8SG.mwc" "FlashlightBodyShape.iog.og[0].gco";
connectAttr "groupId9.id" "FlashlightBodyShape.iog.og[1].gid";
connectAttr "lambert9SG.mwc" "FlashlightBodyShape.iog.og[1].gco";
connectAttr "groupId7.id" "FlashlightBodyShape.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
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
connectAttr "WindowColor.oc" "lambert6SG.ss";
connectAttr "WindowTruss01Shape.iog" "lambert6SG.dsm" -na;
connectAttr "WindowTrussShape2.iog" "lambert6SG.dsm" -na;
connectAttr "WindowTrussShape4.iog" "lambert6SG.dsm" -na;
connectAttr "WindowShape5.iog" "lambert6SG.dsm" -na;
connectAttr "WindowTrussShape3.iog" "lambert6SG.dsm" -na;
connectAttr "WindowFrameShape.iog" "lambert6SG.dsm" -na;
connectAttr "MattressShape.iog" "lambert6SG.dsm" -na;
connectAttr "Trim01Shape.iog" "lambert6SG.dsm" -na;
connectAttr "TrimShape2.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book01|Pages|Page07|PageShape7.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book01|Pages|Page06|PageShape6.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book01|Pages|Page05|PageShape5.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book01|Pages|Page04|PageShape4.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book01|Pages|Page03|PageShape3.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book01|Pages|Page02|PageShape2.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book01|Pages|Page01|PageShape1.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book02|Pages|Page01|PageShape1.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book02|Pages|Page02|PageShape2.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book02|Pages|Page03|PageShape3.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book02|Pages|Page04|PageShape4.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book02|Pages|Page05|PageShape5.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book02|Pages|Page06|PageShape6.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book02|Pages|Page07|PageShape7.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book03|Pages|Page01|PageShape1.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book03|Pages|Page02|PageShape2.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book03|Pages|Page03|PageShape3.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book03|Pages|Page04|PageShape4.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book03|Pages|Page05|PageShape5.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book03|Pages|Page06|PageShape6.iog" "lambert6SG.dsm" -na;
connectAttr "|Books|Book03|Pages|Page07|PageShape7.iog" "lambert6SG.dsm" -na;
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "WindowColor.msg" "materialInfo5.m";
connectAttr "WoodColor.oc" "lambert7SG.ss";
connectAttr "SupportShape2.iog" "lambert7SG.dsm" -na;
connectAttr "SupportShape1.iog" "lambert7SG.dsm" -na;
connectAttr "BedPostShape5.iog" "lambert7SG.dsm" -na;
connectAttr "BedPostShape4.iog" "lambert7SG.dsm" -na;
connectAttr "BedPostShape3.iog" "lambert7SG.dsm" -na;
connectAttr "BedPostShape2.iog" "lambert7SG.dsm" -na;
connectAttr "BedPostShape1.iog" "lambert7SG.dsm" -na;
connectAttr "BedFrameShape.iog" "lambert7SG.dsm" -na;
connectAttr "BedLegShape2.iog" "lambert7SG.dsm" -na;
connectAttr "BedLegShape1.iog" "lambert7SG.dsm" -na;
connectAttr "LaderRungShape4.iog" "lambert7SG.dsm" -na;
connectAttr "LadderRungShape3.iog" "lambert7SG.dsm" -na;
connectAttr "LadderRungShape2.iog" "lambert7SG.dsm" -na;
connectAttr "LadderRungShape1.iog" "lambert7SG.dsm" -na;
connectAttr "LadderLegShape2.iog" "lambert7SG.dsm" -na;
connectAttr "LadderLegShape1.iog" "lambert7SG.dsm" -na;
connectAttr "lambert7SG.msg" "materialInfo6.sg";
connectAttr "WoodColor.msg" "materialInfo6.m";
connectAttr "GrayColor.oc" "lambert8SG.ss";
connectAttr "pPipeShape1.iog" "lambert8SG.dsm" -na;
connectAttr "SwitchEdgeShape.iog" "lambert8SG.dsm" -na;
connectAttr "FlashlightBodyShape.ciog.cog[0]" "lambert8SG.dsm" -na;
connectAttr "FlashlightBodyShape.iog.og[0]" "lambert8SG.dsm" -na;
connectAttr "groupId7.msg" "lambert8SG.gn" -na;
connectAttr "groupId8.msg" "lambert8SG.gn" -na;
connectAttr "lambert8SG.msg" "materialInfo7.sg";
connectAttr "GrayColor.msg" "materialInfo7.m";
connectAttr "tempLightColor.oc" "lambert9SG.ss";
connectAttr "pSphereShape1.iog" "lambert9SG.dsm" -na;
connectAttr "FlashlightBodyShape.iog.og[1]" "lambert9SG.dsm" -na;
connectAttr "groupId9.msg" "lambert9SG.gn" -na;
connectAttr "lambert9SG.msg" "materialInfo8.sg";
connectAttr "tempLightColor.msg" "materialInfo8.m";
connectAttr "BrownBook.oc" "lambert10SG.ss";
connectAttr "|Books|Book01|pCube3|pCube3Shape.iog" "lambert10SG.dsm" -na;
connectAttr "lambert10SG.msg" "materialInfo9.sg";
connectAttr "BrownBook.msg" "materialInfo9.m";
connectAttr "GreenBook.oc" "lambert11SG.ss";
connectAttr "|Books|Book02|pCube3|pCube3Shape.iog" "lambert11SG.dsm" -na;
connectAttr "lambert11SG.msg" "materialInfo10.sg";
connectAttr "GreenBook.msg" "materialInfo10.m";
connectAttr "PurpleBook.oc" "lambert12SG.ss";
connectAttr "|Books|Book03|pCube3|pCube3Shape.iog" "lambert12SG.dsm" -na;
connectAttr "lambert12SG.msg" "materialInfo11.sg";
connectAttr "PurpleBook.msg" "materialInfo11.m";
connectAttr "BlanketColor.oc" "lambert13SG.ss";
connectAttr "SwitchButtonShape.iog" "lambert13SG.dsm" -na;
connectAttr "lambert13SG.msg" "materialInfo12.sg";
connectAttr "BlanketColor.msg" "materialInfo12.m";
connectAttr "WoodColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "areaLightShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "WallColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "lambert7SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "lambert4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "directionalLightShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "lambert5SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "FloorColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "WindowColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "lambert6SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "test1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "lambert5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "GrayColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "lambert8SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "lambert13SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "BlanketColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "PurpleBook.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "lambert12SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "tempLightColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "lambert9SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "GreenBook.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "lambert10SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "BrownBook.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "lambert11SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "lambert10SG.pa" ":renderPartition.st" -na;
connectAttr "lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "lambert12SG.pa" ":renderPartition.st" -na;
connectAttr "lambert13SG.pa" ":renderPartition.st" -na;
connectAttr "WallColor.msg" ":defaultShaderList1.s" -na;
connectAttr "FloorColor.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "WindowColor.msg" ":defaultShaderList1.s" -na;
connectAttr "WoodColor.msg" ":defaultShaderList1.s" -na;
connectAttr "GrayColor.msg" ":defaultShaderList1.s" -na;
connectAttr "tempLightColor.msg" ":defaultShaderList1.s" -na;
connectAttr "BrownBook.msg" ":defaultShaderList1.s" -na;
connectAttr "GreenBook.msg" ":defaultShaderList1.s" -na;
connectAttr "PurpleBook.msg" ":defaultShaderList1.s" -na;
connectAttr "BlanketColor.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "areaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "test1.msg" ":defaultTextureList1.tx" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "areaLight1.iog" ":defaultLightSet.dsm" -na;
// End of WBRfirstModels.ma
