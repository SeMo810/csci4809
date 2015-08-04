//Maya ASCII 2016 scene
//Name: GlossyDarkWood.ma
//Last modified: Tue, Aug 04, 2015 04:50:04 PM
//Codeset: 1252
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201506101600-962028";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode place3dTexture -n "place3dTexture1";
	rename -uid "5C274239-4DAB-A670-EC64-8C8E9AC4D1DA";
createNode blinn -n "BedWood";
	rename -uid "1FDC8B9E-40A8-211B-3790-D0A09D1A020A";
	setAttr ".c" -type "float3" 0.013986014 0.013986014 0.013986014 ;
	setAttr ".sc" -type "float3" 0.17482518 0.17482518 0.17482518 ;
	setAttr ".rfl" 0.0069930069148540497;
	setAttr ".ec" 0.16781538724899292;
	setAttr ".sro" 1;
createNode bump3d -n "bump3d1";
	rename -uid "4FA8614B-4CAC-CD4C-88A1-179DFF53871A";
createNode wood -n "wood1";
	rename -uid "F1767AFC-40B4-129C-6381-0DA11F5FBBC4";
	setAttr ".ail" yes;
	setAttr ".fc" -type "float3" 0.7062937 0.53743464 0.4037188 ;
	setAttr ".v" 1.7622377872467041;
	setAttr ".ls" 0.025769229978322983;
	setAttr ".rd" 0.85314685106277466;
	setAttr ".a" 93.006996154785156;
	setAttr ".gc" -type "float3" 0.67832166 0.22419098 0 ;
	setAttr ".gx" 0.83916085958480835;
	setAttr ".gs" 0.089510492980480194;
	setAttr ".ra" 0.17482517659664154;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "bump3d1.o" "BedWood.n";
connectAttr "wood1.oa" "bump3d1.bv";
connectAttr "place3dTexture1.wim" "wood1.pm";
connectAttr "BedWood.msg" ":defaultShaderList1.s" -na;
connectAttr "place3dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump3d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wood1.msg" ":defaultTextureList1.tx" -na;
// End of GlossyDarkWood.ma
