// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.18 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.18;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.4632353,fgcg:0.3440438,fgcb:0.3167712,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3710,x:36068,y:32752,varname:node_3710,prsc:2|normal-3941-OUT,custl-4303-OUT,alpha-8052-OUT,refract-8304-OUT,voffset-2439-OUT,tess-901-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2871,x:32689,y:32009,ptovrint:False,ptlb:ReflectionTex,ptin:_ReflectionTex,varname:node_2871,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5739,x:32689,y:32181,varname:node_5739,prsc:2,ntxv:0,isnm:False|UVIN-3142-OUT,TEX-2871-TEX;n:type:ShaderForge.SFN_ScreenPos,id:2552,x:32299,y:32043,varname:node_2552,prsc:2,sctp:2;n:type:ShaderForge.SFN_Tex2dAsset,id:7499,x:31627,y:32832,ptovrint:False,ptlb:Normal Texture,ptin:_NormalTexture,varname:node_7499,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a0c55168c4eb26646a6bd97b7c8e4da0,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:464,x:31923,y:32734,varname:node_464,prsc:2,tex:a0c55168c4eb26646a6bd97b7c8e4da0,ntxv:0,isnm:False|UVIN-8504-OUT,TEX-7499-TEX;n:type:ShaderForge.SFN_Tex2d,id:5914,x:31922,y:32871,varname:node_5914,prsc:2,tex:a0c55168c4eb26646a6bd97b7c8e4da0,ntxv:0,isnm:False|UVIN-5217-OUT,TEX-7499-TEX;n:type:ShaderForge.SFN_Add,id:7454,x:32149,y:32755,varname:node_7454,prsc:2|A-464-R,B-5914-R,C-2085-R;n:type:ShaderForge.SFN_Add,id:1728,x:32149,y:32891,varname:node_1728,prsc:2|A-464-G,B-5914-G,C-2085-G;n:type:ShaderForge.SFN_Append,id:1846,x:32371,y:32755,varname:node_1846,prsc:2|A-7454-OUT,B-1728-OUT,C-8700-OUT;n:type:ShaderForge.SFN_Vector1,id:8700,x:32371,y:32891,varname:node_8700,prsc:2,v1:1;n:type:ShaderForge.SFN_Panner,id:6790,x:31030,y:33067,varname:node_6790,prsc:2,spu:0.3,spv:0.4|UVIN-9548-UVOUT,DIST-2074-OUT;n:type:ShaderForge.SFN_Panner,id:2284,x:31041,y:33282,varname:node_2284,prsc:2,spu:1,spv:1.1|UVIN-3096-UVOUT,DIST-2074-OUT;n:type:ShaderForge.SFN_Rotator,id:9548,x:30810,y:33161,varname:node_9548,prsc:2|UVIN-3575-OUT,ANG-3775-OUT;n:type:ShaderForge.SFN_Rotator,id:3096,x:30773,y:33404,varname:node_3096,prsc:2|UVIN-6878-OUT,ANG-3775-OUT;n:type:ShaderForge.SFN_Slider,id:5271,x:30810,y:33599,ptovrint:False,ptlb:Direction Angle,ptin:_DirectionAngle,varname:node_5271,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:3775,x:31217,y:33610,varname:node_3775,prsc:2|A-5271-OUT,B-6207-OUT;n:type:ShaderForge.SFN_Tau,id:6207,x:31003,y:33759,varname:node_6207,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:2565,x:29946,y:33071,varname:node_2565,prsc:2,uv:0;n:type:ShaderForge.SFN_ObjectScale,id:1868,x:29459,y:33191,varname:node_1868,prsc:2,rcp:False;n:type:ShaderForge.SFN_Append,id:8506,x:29946,y:33259,varname:node_8506,prsc:2|A-8294-OUT,B-2300-OUT;n:type:ShaderForge.SFN_Slider,id:9921,x:30029,y:33449,ptovrint:False,ptlb:Waves Scale,ptin:_WavesScale,varname:node_9921,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:4;n:type:ShaderForge.SFN_Multiply,id:6878,x:30421,y:33334,varname:node_6878,prsc:2|A-2565-UVOUT,B-8506-OUT,C-9921-OUT;n:type:ShaderForge.SFN_Multiply,id:6681,x:30211,y:33083,varname:node_6681,prsc:2|A-7465-OUT,B-6878-OUT;n:type:ShaderForge.SFN_Vector1,id:7465,x:30127,y:32954,varname:node_7465,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Add,id:3575,x:30421,y:33083,varname:node_3575,prsc:2|A-9410-OUT,B-6681-OUT;n:type:ShaderForge.SFN_Vector2,id:9410,x:30362,y:32938,varname:node_9410,prsc:2,v1:0.3,v2:0.3;n:type:ShaderForge.SFN_DepthBlend,id:8446,x:31061,y:32534,varname:node_8446,prsc:2|DIST-6787-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6787,x:30847,y:32557,ptovrint:False,ptlb:Distance Distortion Depth,ptin:_DistanceDistortionDepth,varname:node_6787,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Append,id:317,x:31672,y:32593,varname:node_317,prsc:2|A-2503-OUT,B-3047-OUT;n:type:ShaderForge.SFN_Add,id:8504,x:31434,y:33107,varname:node_8504,prsc:2|A-6790-UVOUT,B-9241-OUT;n:type:ShaderForge.SFN_Multiply,id:9241,x:31735,y:32406,varname:node_9241,prsc:2|A-7800-OUT,B-317-OUT;n:type:ShaderForge.SFN_Slider,id:7800,x:31182,y:32420,ptovrint:False,ptlb:Distance Distortion Intensity,ptin:_DistanceDistortionIntensity,varname:node_7800,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_Add,id:5217,x:31434,y:33236,varname:node_5217,prsc:2|A-2284-UVOUT,B-9241-OUT;n:type:ShaderForge.SFN_Slider,id:6814,x:30271,y:32465,ptovrint:False,ptlb:Water Speed,ptin:_WaterSpeed,varname:node_6814,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:30;n:type:ShaderForge.SFN_Time,id:7126,x:30350,y:32582,varname:node_7126,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2074,x:30643,y:32546,varname:node_2074,prsc:2|A-6814-OUT,B-7126-TSL;n:type:ShaderForge.SFN_Slider,id:842,x:32330,y:33056,ptovrint:False,ptlb:Normal Intensity,ptin:_NormalIntensity,varname:node_842,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_Lerp,id:3941,x:32760,y:32947,varname:node_3941,prsc:2|A-5013-OUT,B-1846-OUT,T-842-OUT;n:type:ShaderForge.SFN_Vector3,id:5013,x:32581,y:32786,varname:node_5013,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:5299,x:29375,y:33385,ptovrint:False,ptlb:Scale X,ptin:_ScaleX,varname:node_5299,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:3367,x:29370,y:33535,ptovrint:False,ptlb:Scale Y,ptin:_ScaleY,varname:node_3367,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:8294,x:29709,y:33259,varname:node_8294,prsc:2|A-1868-X,B-5299-OUT;n:type:ShaderForge.SFN_Multiply,id:2300,x:29761,y:33504,varname:node_2300,prsc:2|A-1868-Y,B-3367-OUT;n:type:ShaderForge.SFN_Multiply,id:5351,x:33175,y:32368,varname:node_5351,prsc:2|A-1962-OUT,B-6888-OUT;n:type:ShaderForge.SFN_DepthBlend,id:6009,x:32145,y:33484,varname:node_6009,prsc:2|DIST-8067-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8067,x:31921,y:33578,ptovrint:False,ptlb:Water Depth,ptin:_WaterDepth,varname:node_8067,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:537,x:32383,y:33626,varname:node_537,prsc:2|IN-6009-OUT,IMIN-2002-OUT,IMAX-3421-OUT,OMIN-7022-OUT,OMAX-7840-OUT;n:type:ShaderForge.SFN_Color,id:155,x:31925,y:33836,ptovrint:False,ptlb:Water Color,ptin:_WaterColor,varname:node_155,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5661765,c2:0.9281947,c3:1,c4:1;n:type:ShaderForge.SFN_Vector1,id:7022,x:32383,y:33786,varname:node_7022,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:7840,x:32383,y:33849,varname:node_7840,prsc:2,v1:0;n:type:ShaderForge.SFN_Power,id:3807,x:32849,y:33556,varname:node_3807,prsc:2|VAL-5-OUT,EXP-6524-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6524,x:32681,y:33819,ptovrint:False,ptlb:Water Fade Level,ptin:_WaterFadeLevel,varname:node_6524,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Clamp01,id:5,x:32624,y:33556,varname:node_5,prsc:2|IN-537-OUT;n:type:ShaderForge.SFN_RemapRange,id:3421,x:32145,y:33844,varname:node_3421,prsc:2,frmn:0,frmx:1,tomn:1,tomx:10|IN-155-RGB;n:type:ShaderForge.SFN_ValueProperty,id:2002,x:32072,y:33724,ptovrint:False,ptlb:Shore Water Opacity,ptin:_ShoreWaterOpacity,varname:node_2002,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_SceneColor,id:7449,x:32960,y:33710,varname:node_7449,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7975,x:33154,y:33595,varname:node_7975,prsc:2|A-3807-OUT,B-7449-RGB;n:type:ShaderForge.SFN_DepthBlend,id:7064,x:34795,y:32978,varname:node_7064,prsc:2|DIST-5113-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5113,x:33486,y:33105,ptovrint:False,ptlb:Shore Blend,ptin:_ShoreBlend,varname:node_5113,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Blend,id:5443,x:34384,y:32540,varname:node_5443,prsc:2,blmd:6,clmp:True|SRC-7975-OUT,DST-1921-OUT;n:type:ShaderForge.SFN_Clamp01,id:1921,x:33418,y:32253,varname:node_1921,prsc:2|IN-5351-OUT;n:type:ShaderForge.SFN_Fresnel,id:6888,x:33090,y:32544,varname:node_6888,prsc:2|EXP-2022-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2022,x:32829,y:32716,ptovrint:False,ptlb:Reflection Fresnel,ptin:_ReflectionFresnel,varname:node_2022,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Tex2d,id:2085,x:31932,y:32994,varname:node_2085,prsc:2,tex:a0c55168c4eb26646a6bd97b7c8e4da0,ntxv:0,isnm:False|UVIN-970-OUT,TEX-7499-TEX;n:type:ShaderForge.SFN_Add,id:9993,x:31720,y:33173,varname:node_9993,prsc:2|A-8504-OUT,B-5217-OUT;n:type:ShaderForge.SFN_Multiply,id:970,x:31957,y:33253,varname:node_970,prsc:2|A-9993-OUT,B-7331-OUT;n:type:ShaderForge.SFN_Vector1,id:7331,x:31707,y:33358,varname:node_7331,prsc:2,v1:0.25;n:type:ShaderForge.SFN_LightVector,id:7695,x:33743,y:33256,varname:node_7695,prsc:2;n:type:ShaderForge.SFN_ViewReflectionVector,id:4641,x:33743,y:33408,varname:node_4641,prsc:2;n:type:ShaderForge.SFN_Dot,id:1412,x:34029,y:33303,varname:node_1412,prsc:2,dt:1|A-7695-OUT,B-4641-OUT;n:type:ShaderForge.SFN_Power,id:999,x:34258,y:33303,varname:node_999,prsc:2|VAL-1412-OUT,EXP-8529-OUT;n:type:ShaderForge.SFN_Slider,id:2402,x:33974,y:33496,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_2402,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:8221,x:34332,y:33495,varname:node_8221,prsc:2,frmn:0,frmx:1,tomn:1,tomx:11|IN-2402-OUT;n:type:ShaderForge.SFN_Exp,id:8529,x:34522,y:33407,varname:node_8529,prsc:2,et:0|IN-8221-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8006,x:34258,y:33224,ptovrint:False,ptlb:Specular Intensity,ptin:_SpecularIntensity,varname:node_8006,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:2287,x:34539,y:33246,varname:node_2287,prsc:2|A-8006-OUT,B-999-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:2386,x:33939,y:32760,varname:node_2386,prsc:2;n:type:ShaderForge.SFN_LightColor,id:1869,x:33939,y:32934,varname:node_1869,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2090,x:34165,y:32843,varname:node_2090,prsc:2|A-2386-OUT,B-1869-RGB;n:type:ShaderForge.SFN_Multiply,id:2678,x:34394,y:32745,varname:node_2678,prsc:2|A-5443-OUT,B-2090-OUT;n:type:ShaderForge.SFN_Multiply,id:8392,x:34501,y:33078,varname:node_8392,prsc:2|A-2287-OUT,B-2090-OUT;n:type:ShaderForge.SFN_Add,id:1362,x:34795,y:32685,varname:node_1362,prsc:2|A-2678-OUT,B-8392-OUT;n:type:ShaderForge.SFN_Multiply,id:2503,x:31461,y:32517,varname:node_2503,prsc:2|A-6866-OUT,B-8177-OUT;n:type:ShaderForge.SFN_Multiply,id:3047,x:31476,y:32681,varname:node_3047,prsc:2|A-6866-OUT,B-9137-OUT;n:type:ShaderForge.SFN_Slider,id:8177,x:31001,y:32748,ptovrint:False,ptlb:Distortion X,ptin:_DistortionX,varname:node_8177,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:9137,x:30970,y:32866,ptovrint:False,ptlb:Distortion Y,ptin:_DistortionY,varname:node_9137,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_ComponentMask,id:7824,x:34846,y:33286,varname:node_7824,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3941-OUT;n:type:ShaderForge.SFN_Multiply,id:989,x:35053,y:33330,varname:node_989,prsc:2|A-7824-OUT,B-5416-OUT,C-7761-OUT;n:type:ShaderForge.SFN_Slider,id:5416,x:34952,y:33537,ptovrint:False,ptlb:Refraction Intensity,ptin:_RefractionIntensity,varname:node_5416,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5860763,max:1;n:type:ShaderForge.SFN_Tex2dAsset,id:8927,x:35716,y:32163,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:node_8927,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4569f84b7d2064c48ad37bc2748ca835,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4218,x:36051,y:32051,varname:node_4218,prsc:2,tex:4569f84b7d2064c48ad37bc2748ca835,ntxv:0,isnm:False|UVIN-5368-UVOUT,TEX-8927-TEX;n:type:ShaderForge.SFN_Tex2d,id:9129,x:36075,y:32232,varname:node_9129,prsc:2,tex:4569f84b7d2064c48ad37bc2748ca835,ntxv:0,isnm:False|UVIN-2983-UVOUT,TEX-8927-TEX;n:type:ShaderForge.SFN_TexCoord,id:5933,x:34950,y:31818,varname:node_5933,prsc:2,uv:0;n:type:ShaderForge.SFN_Slider,id:6101,x:34764,y:32017,ptovrint:False,ptlb:Foam Scale,ptin:_FoamScale,varname:node_6101,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:6075,x:35396,y:31906,varname:node_6075,prsc:2|A-5933-UVOUT,B-6101-OUT,C-7392-OUT;n:type:ShaderForge.SFN_ObjectScale,id:9599,x:34807,y:32131,varname:node_9599,prsc:2,rcp:False;n:type:ShaderForge.SFN_Append,id:7392,x:34979,y:32156,varname:node_7392,prsc:2|A-9599-X,B-9599-Z;n:type:ShaderForge.SFN_Multiply,id:492,x:35197,y:31672,varname:node_492,prsc:2|A-5738-OUT,B-6075-OUT;n:type:ShaderForge.SFN_Vector1,id:5738,x:34998,y:31641,varname:node_5738,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Add,id:4373,x:35396,y:31701,varname:node_4373,prsc:2|A-7482-OUT,B-492-OUT;n:type:ShaderForge.SFN_Vector2,id:7482,x:35125,y:31461,varname:node_7482,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Time,id:466,x:34999,y:32444,varname:node_466,prsc:2;n:type:ShaderForge.SFN_Slider,id:7260,x:34830,y:32347,ptovrint:False,ptlb:Foam Speed,ptin:_FoamSpeed,varname:node_7260,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:50;n:type:ShaderForge.SFN_Multiply,id:5506,x:35200,y:32330,varname:node_5506,prsc:2|A-7260-OUT,B-466-TSL;n:type:ShaderForge.SFN_Panner,id:5368,x:35699,y:31762,varname:node_5368,prsc:2,spu:1,spv:-1|UVIN-4373-OUT,DIST-5506-OUT;n:type:ShaderForge.SFN_Panner,id:2983,x:35704,y:31909,varname:node_2983,prsc:2,spu:-1,spv:1|UVIN-6075-OUT,DIST-5506-OUT;n:type:ShaderForge.SFN_Multiply,id:9439,x:36333,y:32126,varname:node_9439,prsc:2|A-4218-RGB,B-9129-RGB;n:type:ShaderForge.SFN_Multiply,id:7031,x:36654,y:32341,varname:node_7031,prsc:2|A-9439-OUT,B-1613-OUT,C-4839-OUT,D-2090-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1324,x:35667,y:32507,ptovrint:False,ptlb:Foam Distance,ptin:_FoamDistance,varname:node_1324,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_DepthBlend,id:4389,x:35861,y:32498,varname:node_4389,prsc:2|DIST-1324-OUT;n:type:ShaderForge.SFN_OneMinus,id:6952,x:36063,y:32438,varname:node_6952,prsc:2|IN-4389-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4839,x:36225,y:32693,ptovrint:False,ptlb:Foam Intensity,ptin:_FoamIntensity,varname:node_4839,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Blend,id:4303,x:35523,y:32955,varname:node_4303,prsc:2,blmd:6,clmp:True|SRC-1362-OUT,DST-7031-OUT;n:type:ShaderForge.SFN_DepthBlend,id:7761,x:35101,y:33637,varname:node_7761,prsc:2|DIST-6706-OUT;n:type:ShaderForge.SFN_Vector1,id:6706,x:34952,y:33701,varname:node_6706,prsc:2,v1:3;n:type:ShaderForge.SFN_Add,id:7098,x:36304,y:32514,varname:node_7098,prsc:2|A-6952-OUT,B-4156-OUT;n:type:ShaderForge.SFN_Clamp01,id:1613,x:36708,y:32550,varname:node_1613,prsc:2|IN-7098-OUT;n:type:ShaderForge.SFN_Slider,id:3628,x:36323,y:34220,ptovrint:False,ptlb:Displacement Foam Speed,ptin:_DisplacementFoamSpeed,varname:node_3628,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:20;n:type:ShaderForge.SFN_Multiply,id:4156,x:37015,y:33113,varname:node_4156,prsc:2|A-8093-OUT,B-1577-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8093,x:36766,y:33034,ptovrint:False,ptlb:Displacement Foam Intensity,ptin:_DisplacementFoamIntensity,varname:node_8093,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Tex2d,id:1038,x:36545,y:33434,varname:node_1038,prsc:2,ntxv:0,isnm:False|UVIN-1329-UVOUT,TEX-3793-TEX;n:type:ShaderForge.SFN_TexCoord,id:3379,x:35759,y:33672,varname:node_3379,prsc:2,uv:0;n:type:ShaderForge.SFN_ObjectScale,id:6916,x:35568,y:33869,varname:node_6916,prsc:2,rcp:False;n:type:ShaderForge.SFN_Append,id:1333,x:35773,y:33843,varname:node_1333,prsc:2|A-6916-X,B-6916-Z;n:type:ShaderForge.SFN_Multiply,id:6539,x:36005,y:33777,varname:node_6539,prsc:2|A-3379-UVOUT,B-1333-OUT,C-4818-OUT;n:type:ShaderForge.SFN_Tex2d,id:5822,x:36545,y:33569,varname:node_5822,prsc:2,ntxv:0,isnm:False|UVIN-9586-UVOUT,TEX-3793-TEX;n:type:ShaderForge.SFN_Multiply,id:8064,x:36057,y:33924,varname:node_8064,prsc:2|A-6539-OUT,B-6755-OUT;n:type:ShaderForge.SFN_Vector1,id:6755,x:35964,y:34080,varname:node_6755,prsc:2,v1:0.66;n:type:ShaderForge.SFN_Add,id:9188,x:36151,y:34080,varname:node_9188,prsc:2|A-8064-OUT,B-2173-OUT;n:type:ShaderForge.SFN_Vector2,id:2173,x:35954,y:34133,varname:node_2173,prsc:2,v1:0.33,v2:0.66;n:type:ShaderForge.SFN_Panner,id:9586,x:36545,y:33755,varname:node_9586,prsc:2,spu:0.2,spv:0.2|UVIN-6930-UVOUT,DIST-5334-OUT;n:type:ShaderForge.SFN_Panner,id:1329,x:36305,y:33547,varname:node_1329,prsc:2,spu:1,spv:1|UVIN-5179-UVOUT,DIST-5334-OUT;n:type:ShaderForge.SFN_Time,id:6532,x:36371,y:34292,varname:node_6532,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5334,x:36672,y:34212,varname:node_5334,prsc:2|A-3628-OUT,B-6532-TSL;n:type:ShaderForge.SFN_Multiply,id:2323,x:36890,y:33398,varname:node_2323,prsc:2|A-1038-R,B-5822-R,C-2322-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3793,x:36233,y:33323,ptovrint:False,ptlb:Displacement,ptin:_Displacement,varname:node_3793,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:4818,x:35675,y:34179,ptovrint:False,ptlb:Displacement Scale,ptin:_DisplacementScale,varname:node_4818,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Rotator,id:6930,x:36379,y:33852,varname:node_6930,prsc:2|UVIN-9188-OUT,ANG-4812-OUT;n:type:ShaderForge.SFN_Rotator,id:5179,x:36252,y:33727,varname:node_5179,prsc:2|UVIN-6539-OUT,ANG-4812-OUT;n:type:ShaderForge.SFN_Relay,id:4812,x:36060,y:33519,varname:node_4812,prsc:2|IN-3775-OUT;n:type:ShaderForge.SFN_Add,id:2322,x:36757,y:33601,varname:node_2322,prsc:2|A-1038-G,B-5822-G;n:type:ShaderForge.SFN_Vector3,id:601,x:35408,y:33371,varname:node_601,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Multiply,id:2439,x:35609,y:33371,varname:node_2439,prsc:2|A-601-OUT,B-1577-OUT,C-5939-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5939,x:35408,y:33467,ptovrint:False,ptlb:Displacement Intensity,ptin:_DisplacementIntensity,varname:node_5939,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:901,x:35790,y:33342,ptovrint:False,ptlb:Tessellation Level,ptin:_TessellationLevel,varname:node_901,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_RemapRange,id:9816,x:36516,y:33256,varname:node_9816,prsc:2,frmn:0,frmx:1,tomn:0.15,tomx:3|IN-2323-OUT;n:type:ShaderForge.SFN_Clamp01,id:1577,x:36516,y:33097,varname:node_1577,prsc:2|IN-9816-OUT;n:type:ShaderForge.SFN_RemapRange,id:6866,x:31260,y:32534,varname:node_6866,prsc:2,frmn:0,frmx:1,tomn:0.25,tomx:0.33|IN-8446-OUT;n:type:ShaderForge.SFN_Color,id:3992,x:32715,y:32380,ptovrint:False,ptlb:Fake Reflection Color,ptin:_FakeReflectionColor,varname:node_3992,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:1962,x:33008,y:32217,ptovrint:False,ptlb:Use Reflection,ptin:_UseReflection,varname:node_1962,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-3992-RGB,B-5739-RGB;n:type:ShaderForge.SFN_Multiply,id:3142,x:32412,y:32214,varname:node_3142,prsc:2|A-2552-UVOUT,B-9852-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:2876,x:32150,y:32274,ptovrint:False,ptlb:Inverse Reflection,ptin:_InverseReflection,varname:node_2876,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_RemapRange,id:9852,x:32303,y:32341,varname:node_9852,prsc:2,frmn:0,frmx:1,tomn:1,tomx:-1|IN-2876-OUT;n:type:ShaderForge.SFN_NormalVector,id:9670,x:34795,y:33119,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:3957,x:34997,y:33119,varname:node_3957,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-9670-OUT;n:type:ShaderForge.SFN_OneMinus,id:2411,x:35178,y:33119,varname:node_2411,prsc:2|IN-3957-OUT;n:type:ShaderForge.SFN_Multiply,id:8896,x:35367,y:33131,varname:node_8896,prsc:2|A-2411-OUT,B-6115-OUT;n:type:ShaderForge.SFN_Slider,id:6115,x:35042,y:33254,ptovrint:False,ptlb:BackFace Opacity,ptin:_BackFaceOpacity,varname:node_6115,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:6591,x:35735,y:33116,varname:node_6591,prsc:2|A-5460-OUT,B-8896-OUT;n:type:ShaderForge.SFN_Clamp01,id:8052,x:35755,y:32988,varname:node_8052,prsc:2|IN-6591-OUT;n:type:ShaderForge.SFN_Multiply,id:5460,x:35199,y:32997,varname:node_5460,prsc:2|A-7064-OUT,B-3957-OUT;n:type:ShaderForge.SFN_Lerp,id:8304,x:35464,y:33252,varname:node_8304,prsc:2|A-1235-OUT,B-989-OUT,T-3957-OUT;n:type:ShaderForge.SFN_Multiply,id:1235,x:35361,y:33557,varname:node_1235,prsc:2|A-989-OUT,B-604-OUT;n:type:ShaderForge.SFN_Vector1,id:604,x:35241,y:33713,varname:node_604,prsc:2,v1:0.8;proporder:2871-1962-2876-3992-2022-7499-842-9921-5299-3367-6814-5271-155-8067-6524-6115-2002-5113-8006-2402-5416-6787-7800-8177-9137-8927-1324-6101-7260-3628-4839-8093-3793-4818-5939-901;pass:END;sub:END;*/

Shader "DCG/Water Shader/River Surface DX11" {
    Properties {
        _ReflectionTex ("ReflectionTex", 2D) = "white" {}
        [MaterialToggle] _UseReflection ("Use Reflection", Float ) = 1
        [MaterialToggle] _InverseReflection ("Inverse Reflection", Float ) = 0
        _FakeReflectionColor ("Fake Reflection Color", Color) = (1,1,1,1)
        _ReflectionFresnel ("Reflection Fresnel", Float ) = 2
        _NormalTexture ("Normal Texture", 2D) = "bump" {}
        _NormalIntensity ("Normal Intensity", Range(0, 2)) = 0
        _WavesScale ("Waves Scale", Range(0, 4)) = 1
        _ScaleX ("Scale X", Range(0, 1)) = 0
        _ScaleY ("Scale Y", Range(0, 1)) = 0
        _WaterSpeed ("Water Speed", Range(0, 30)) = 0
        _DirectionAngle ("Direction Angle", Range(0, 1)) = 0
        _WaterColor ("Water Color", Color) = (0.5661765,0.9281947,1,1)
        _WaterDepth ("Water Depth", Float ) = 4
        _WaterFadeLevel ("Water Fade Level", Float ) = 5
        _BackFaceOpacity ("BackFace Opacity", Range(0, 1)) = 1
        _ShoreWaterOpacity ("Shore Water Opacity", Float ) = 0.1
        _ShoreBlend ("Shore Blend", Float ) = 1
        _SpecularIntensity ("Specular Intensity", Float ) = 1
        _Gloss ("Gloss", Range(0, 1)) = 0
        _RefractionIntensity ("Refraction Intensity", Range(0, 1)) = 0.5860763
        _DistanceDistortionDepth ("Distance Distortion Depth", Float ) = 2
        _DistanceDistortionIntensity ("Distance Distortion Intensity", Range(0, 2)) = 0
        _DistortionX ("Distortion X", Range(0, 1)) = 0
        _DistortionY ("Distortion Y", Range(0, 1)) = 0
        _Foam ("Foam", 2D) = "white" {}
        _FoamDistance ("Foam Distance", Float ) = 3
        _FoamScale ("Foam Scale", Range(0, 10)) = 0
        _FoamSpeed ("Foam Speed", Range(0, 50)) = 0
        _DisplacementFoamSpeed ("Displacement Foam Speed", Range(0, 20)) = 0
        _FoamIntensity ("Foam Intensity", Float ) = 1
        _DisplacementFoamIntensity ("Displacement Foam Intensity", Float ) = 2
        _Displacement ("Displacement", 2D) = "white" {}
        _DisplacementScale ("Displacement Scale", Float ) = 1
        _DisplacementIntensity ("Displacement Intensity", Float ) = 1
        _TessellationLevel ("Tessellation Level", Float ) = 2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            #pragma glsl
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _ReflectionTex; uniform float4 _ReflectionTex_ST;
            uniform sampler2D _NormalTexture; uniform float4 _NormalTexture_ST;
            uniform float _DirectionAngle;
            uniform float _WavesScale;
            uniform float _DistanceDistortionDepth;
            uniform float _DistanceDistortionIntensity;
            uniform float _WaterSpeed;
            uniform float _NormalIntensity;
            uniform float _ScaleX;
            uniform float _ScaleY;
            uniform float _WaterDepth;
            uniform float4 _WaterColor;
            uniform float _WaterFadeLevel;
            uniform float _ShoreWaterOpacity;
            uniform float _ShoreBlend;
            uniform float _ReflectionFresnel;
            uniform float _Gloss;
            uniform float _SpecularIntensity;
            uniform float _DistortionX;
            uniform float _DistortionY;
            uniform float _RefractionIntensity;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _FoamScale;
            uniform float _FoamSpeed;
            uniform float _FoamDistance;
            uniform float _FoamIntensity;
            uniform float _DisplacementFoamSpeed;
            uniform float _DisplacementFoamIntensity;
            uniform sampler2D _Displacement; uniform float4 _Displacement_ST;
            uniform float _DisplacementScale;
            uniform float _DisplacementIntensity;
            uniform float _TessellationLevel;
            uniform float4 _FakeReflectionColor;
            uniform fixed _UseReflection;
            uniform fixed _InverseReflection;
            uniform float _BackFaceOpacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                float4 projPos : TEXCOORD6;
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float4 node_6532 = _Time + _TimeEditor;
                float node_5334 = (_DisplacementFoamSpeed*node_6532.r);
                float node_3775 = (_DirectionAngle*6.28318530718);
                float node_4812 = node_3775;
                float node_5179_ang = node_4812;
                float node_5179_spd = 1.0;
                float node_5179_cos = cos(node_5179_spd*node_5179_ang);
                float node_5179_sin = sin(node_5179_spd*node_5179_ang);
                float2 node_5179_piv = float2(0.5,0.5);
                float2 node_6539 = (o.uv0*float2(objScale.r,objScale.b)*_DisplacementScale);
                float2 node_5179 = (mul(node_6539-node_5179_piv,float2x2( node_5179_cos, -node_5179_sin, node_5179_sin, node_5179_cos))+node_5179_piv);
                float2 node_1329 = (node_5179+node_5334*float2(1,1));
                float4 node_1038 = tex2Dlod(_Displacement,float4(TRANSFORM_TEX(node_1329, _Displacement),0.0,0));
                float node_6930_ang = node_4812;
                float node_6930_spd = 1.0;
                float node_6930_cos = cos(node_6930_spd*node_6930_ang);
                float node_6930_sin = sin(node_6930_spd*node_6930_ang);
                float2 node_6930_piv = float2(0.5,0.5);
                float2 node_6930 = (mul(((node_6539*0.66)+float2(0.33,0.66))-node_6930_piv,float2x2( node_6930_cos, -node_6930_sin, node_6930_sin, node_6930_cos))+node_6930_piv);
                float2 node_9586 = (node_6930+node_5334*float2(0.2,0.2));
                float4 node_5822 = tex2Dlod(_Displacement,float4(TRANSFORM_TEX(node_9586, _Displacement),0.0,0));
                float node_1577 = saturate(((node_1038.r*node_5822.r*(node_1038.g+node_5822.g))*2.85+0.15));
                v.vertex.xyz += (float3(0,1,0)*node_1577*_DisplacementIntensity);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _TessellationLevel;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float4 node_7126 = _Time + _TimeEditor;
                float node_2074 = (_WaterSpeed*node_7126.r);
                float node_3775 = (_DirectionAngle*6.28318530718);
                float node_9548_ang = node_3775;
                float node_9548_spd = 1.0;
                float node_9548_cos = cos(node_9548_spd*node_9548_ang);
                float node_9548_sin = sin(node_9548_spd*node_9548_ang);
                float2 node_9548_piv = float2(0.5,0.5);
                float2 node_6878 = (i.uv0*float2((objScale.r*_ScaleX),(objScale.g*_ScaleY))*_WavesScale);
                float2 node_9548 = (mul((float2(0.3,0.3)+(0.75*node_6878))-node_9548_piv,float2x2( node_9548_cos, -node_9548_sin, node_9548_sin, node_9548_cos))+node_9548_piv);
                float node_6866 = (saturate((sceneZ-partZ)/_DistanceDistortionDepth)*0.08000001+0.25);
                float2 node_9241 = (_DistanceDistortionIntensity*float2((node_6866*_DistortionX),(node_6866*_DistortionY)));
                float2 node_8504 = ((node_9548+node_2074*float2(0.3,0.4))+node_9241);
                float3 node_464 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_8504, _NormalTexture)));
                float node_3096_ang = node_3775;
                float node_3096_spd = 1.0;
                float node_3096_cos = cos(node_3096_spd*node_3096_ang);
                float node_3096_sin = sin(node_3096_spd*node_3096_ang);
                float2 node_3096_piv = float2(0.5,0.5);
                float2 node_3096 = (mul(node_6878-node_3096_piv,float2x2( node_3096_cos, -node_3096_sin, node_3096_sin, node_3096_cos))+node_3096_piv);
                float2 node_5217 = ((node_3096+node_2074*float2(1,1.1))+node_9241);
                float3 node_5914 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_5217, _NormalTexture)));
                float2 node_970 = ((node_8504+node_5217)*0.25);
                float3 node_2085 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_970, _NormalTexture)));
                float3 node_3941 = lerp(float3(0,0,1),float3((node_464.r+node_5914.r+node_2085.r),(node_464.g+node_5914.g+node_2085.g),1.0),_NormalIntensity);
                float2 node_989 = (node_3941.rg*_RefractionIntensity*saturate((sceneZ-partZ)/3.0));
                float node_3957 = i.normalDir.g;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + lerp((node_989*0.8),node_989,node_3957);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalLocal = node_3941;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float node_7022 = 1.0;
                float2 node_3142 = (sceneUVs.rg*(_InverseReflection*-2.0+1.0));
                float4 node_5739 = tex2D(_ReflectionTex,TRANSFORM_TEX(node_3142, _ReflectionTex));
                float3 node_2090 = (attenuation*_LightColor0.rgb);
                float4 node_466 = _Time + _TimeEditor;
                float node_5506 = (_FoamSpeed*node_466.r);
                float2 node_6075 = (i.uv0*_FoamScale*float2(objScale.r,objScale.b));
                float2 node_5368 = ((float2(0.5,0.5)+(0.75*node_6075))+node_5506*float2(1,-1));
                float4 node_4218 = tex2D(_Foam,TRANSFORM_TEX(node_5368, _Foam));
                float2 node_2983 = (node_6075+node_5506*float2(-1,1));
                float4 node_9129 = tex2D(_Foam,TRANSFORM_TEX(node_2983, _Foam));
                float4 node_6532 = _Time + _TimeEditor;
                float node_5334 = (_DisplacementFoamSpeed*node_6532.r);
                float node_4812 = node_3775;
                float node_5179_ang = node_4812;
                float node_5179_spd = 1.0;
                float node_5179_cos = cos(node_5179_spd*node_5179_ang);
                float node_5179_sin = sin(node_5179_spd*node_5179_ang);
                float2 node_5179_piv = float2(0.5,0.5);
                float2 node_6539 = (i.uv0*float2(objScale.r,objScale.b)*_DisplacementScale);
                float2 node_5179 = (mul(node_6539-node_5179_piv,float2x2( node_5179_cos, -node_5179_sin, node_5179_sin, node_5179_cos))+node_5179_piv);
                float2 node_1329 = (node_5179+node_5334*float2(1,1));
                float4 node_1038 = tex2D(_Displacement,TRANSFORM_TEX(node_1329, _Displacement));
                float node_6930_ang = node_4812;
                float node_6930_spd = 1.0;
                float node_6930_cos = cos(node_6930_spd*node_6930_ang);
                float node_6930_sin = sin(node_6930_spd*node_6930_ang);
                float2 node_6930_piv = float2(0.5,0.5);
                float2 node_6930 = (mul(((node_6539*0.66)+float2(0.33,0.66))-node_6930_piv,float2x2( node_6930_cos, -node_6930_sin, node_6930_sin, node_6930_cos))+node_6930_piv);
                float2 node_9586 = (node_6930+node_5334*float2(0.2,0.2));
                float4 node_5822 = tex2D(_Displacement,TRANSFORM_TEX(node_9586, _Displacement));
                float node_1577 = saturate(((node_1038.r*node_5822.r*(node_1038.g+node_5822.g))*2.85+0.15));
                float3 finalColor = saturate((1.0-(1.0-((saturate((1.0-(1.0-(pow(saturate((node_7022 + ( (saturate((sceneZ-partZ)/_WaterDepth) - _ShoreWaterOpacity) * (0.0 - node_7022) ) / ((_WaterColor.rgb*9.0+1.0) - _ShoreWaterOpacity))),_WaterFadeLevel)*sceneColor.rgb))*(1.0-saturate((lerp( _FakeReflectionColor.rgb, node_5739.rgb, _UseReflection )*pow(1.0-max(0,dot(normalDirection, viewDirection)),_ReflectionFresnel))))))*node_2090)+((_SpecularIntensity*pow(max(0,dot(lightDirection,viewReflectDirection)),exp((_Gloss*10.0+1.0))))*node_2090)))*(1.0-((node_4218.rgb*node_9129.rgb)*saturate(((1.0 - saturate((sceneZ-partZ)/_FoamDistance))+(_DisplacementFoamIntensity*node_1577)))*_FoamIntensity*node_2090))));
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,saturate(((saturate((sceneZ-partZ)/_ShoreBlend)*node_3957)+((1.0 - node_3957)*_BackFaceOpacity)))),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            #pragma glsl
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _ReflectionTex; uniform float4 _ReflectionTex_ST;
            uniform sampler2D _NormalTexture; uniform float4 _NormalTexture_ST;
            uniform float _DirectionAngle;
            uniform float _WavesScale;
            uniform float _DistanceDistortionDepth;
            uniform float _DistanceDistortionIntensity;
            uniform float _WaterSpeed;
            uniform float _NormalIntensity;
            uniform float _ScaleX;
            uniform float _ScaleY;
            uniform float _WaterDepth;
            uniform float4 _WaterColor;
            uniform float _WaterFadeLevel;
            uniform float _ShoreWaterOpacity;
            uniform float _ShoreBlend;
            uniform float _ReflectionFresnel;
            uniform float _Gloss;
            uniform float _SpecularIntensity;
            uniform float _DistortionX;
            uniform float _DistortionY;
            uniform float _RefractionIntensity;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _FoamScale;
            uniform float _FoamSpeed;
            uniform float _FoamDistance;
            uniform float _FoamIntensity;
            uniform float _DisplacementFoamSpeed;
            uniform float _DisplacementFoamIntensity;
            uniform sampler2D _Displacement; uniform float4 _Displacement_ST;
            uniform float _DisplacementScale;
            uniform float _DisplacementIntensity;
            uniform float _TessellationLevel;
            uniform float4 _FakeReflectionColor;
            uniform fixed _UseReflection;
            uniform fixed _InverseReflection;
            uniform float _BackFaceOpacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                float4 projPos : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float4 node_6532 = _Time + _TimeEditor;
                float node_5334 = (_DisplacementFoamSpeed*node_6532.r);
                float node_3775 = (_DirectionAngle*6.28318530718);
                float node_4812 = node_3775;
                float node_5179_ang = node_4812;
                float node_5179_spd = 1.0;
                float node_5179_cos = cos(node_5179_spd*node_5179_ang);
                float node_5179_sin = sin(node_5179_spd*node_5179_ang);
                float2 node_5179_piv = float2(0.5,0.5);
                float2 node_6539 = (o.uv0*float2(objScale.r,objScale.b)*_DisplacementScale);
                float2 node_5179 = (mul(node_6539-node_5179_piv,float2x2( node_5179_cos, -node_5179_sin, node_5179_sin, node_5179_cos))+node_5179_piv);
                float2 node_1329 = (node_5179+node_5334*float2(1,1));
                float4 node_1038 = tex2Dlod(_Displacement,float4(TRANSFORM_TEX(node_1329, _Displacement),0.0,0));
                float node_6930_ang = node_4812;
                float node_6930_spd = 1.0;
                float node_6930_cos = cos(node_6930_spd*node_6930_ang);
                float node_6930_sin = sin(node_6930_spd*node_6930_ang);
                float2 node_6930_piv = float2(0.5,0.5);
                float2 node_6930 = (mul(((node_6539*0.66)+float2(0.33,0.66))-node_6930_piv,float2x2( node_6930_cos, -node_6930_sin, node_6930_sin, node_6930_cos))+node_6930_piv);
                float2 node_9586 = (node_6930+node_5334*float2(0.2,0.2));
                float4 node_5822 = tex2Dlod(_Displacement,float4(TRANSFORM_TEX(node_9586, _Displacement),0.0,0));
                float node_1577 = saturate(((node_1038.r*node_5822.r*(node_1038.g+node_5822.g))*2.85+0.15));
                v.vertex.xyz += (float3(0,1,0)*node_1577*_DisplacementIntensity);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _TessellationLevel;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float4 node_7126 = _Time + _TimeEditor;
                float node_2074 = (_WaterSpeed*node_7126.r);
                float node_3775 = (_DirectionAngle*6.28318530718);
                float node_9548_ang = node_3775;
                float node_9548_spd = 1.0;
                float node_9548_cos = cos(node_9548_spd*node_9548_ang);
                float node_9548_sin = sin(node_9548_spd*node_9548_ang);
                float2 node_9548_piv = float2(0.5,0.5);
                float2 node_6878 = (i.uv0*float2((objScale.r*_ScaleX),(objScale.g*_ScaleY))*_WavesScale);
                float2 node_9548 = (mul((float2(0.3,0.3)+(0.75*node_6878))-node_9548_piv,float2x2( node_9548_cos, -node_9548_sin, node_9548_sin, node_9548_cos))+node_9548_piv);
                float node_6866 = (saturate((sceneZ-partZ)/_DistanceDistortionDepth)*0.08000001+0.25);
                float2 node_9241 = (_DistanceDistortionIntensity*float2((node_6866*_DistortionX),(node_6866*_DistortionY)));
                float2 node_8504 = ((node_9548+node_2074*float2(0.3,0.4))+node_9241);
                float3 node_464 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_8504, _NormalTexture)));
                float node_3096_ang = node_3775;
                float node_3096_spd = 1.0;
                float node_3096_cos = cos(node_3096_spd*node_3096_ang);
                float node_3096_sin = sin(node_3096_spd*node_3096_ang);
                float2 node_3096_piv = float2(0.5,0.5);
                float2 node_3096 = (mul(node_6878-node_3096_piv,float2x2( node_3096_cos, -node_3096_sin, node_3096_sin, node_3096_cos))+node_3096_piv);
                float2 node_5217 = ((node_3096+node_2074*float2(1,1.1))+node_9241);
                float3 node_5914 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_5217, _NormalTexture)));
                float2 node_970 = ((node_8504+node_5217)*0.25);
                float3 node_2085 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_970, _NormalTexture)));
                float3 node_3941 = lerp(float3(0,0,1),float3((node_464.r+node_5914.r+node_2085.r),(node_464.g+node_5914.g+node_2085.g),1.0),_NormalIntensity);
                float2 node_989 = (node_3941.rg*_RefractionIntensity*saturate((sceneZ-partZ)/3.0));
                float node_3957 = i.normalDir.g;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + lerp((node_989*0.8),node_989,node_3957);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalLocal = node_3941;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_7022 = 1.0;
                float2 node_3142 = (sceneUVs.rg*(_InverseReflection*-2.0+1.0));
                float4 node_5739 = tex2D(_ReflectionTex,TRANSFORM_TEX(node_3142, _ReflectionTex));
                float3 node_2090 = (attenuation*_LightColor0.rgb);
                float4 node_466 = _Time + _TimeEditor;
                float node_5506 = (_FoamSpeed*node_466.r);
                float2 node_6075 = (i.uv0*_FoamScale*float2(objScale.r,objScale.b));
                float2 node_5368 = ((float2(0.5,0.5)+(0.75*node_6075))+node_5506*float2(1,-1));
                float4 node_4218 = tex2D(_Foam,TRANSFORM_TEX(node_5368, _Foam));
                float2 node_2983 = (node_6075+node_5506*float2(-1,1));
                float4 node_9129 = tex2D(_Foam,TRANSFORM_TEX(node_2983, _Foam));
                float4 node_6532 = _Time + _TimeEditor;
                float node_5334 = (_DisplacementFoamSpeed*node_6532.r);
                float node_4812 = node_3775;
                float node_5179_ang = node_4812;
                float node_5179_spd = 1.0;
                float node_5179_cos = cos(node_5179_spd*node_5179_ang);
                float node_5179_sin = sin(node_5179_spd*node_5179_ang);
                float2 node_5179_piv = float2(0.5,0.5);
                float2 node_6539 = (i.uv0*float2(objScale.r,objScale.b)*_DisplacementScale);
                float2 node_5179 = (mul(node_6539-node_5179_piv,float2x2( node_5179_cos, -node_5179_sin, node_5179_sin, node_5179_cos))+node_5179_piv);
                float2 node_1329 = (node_5179+node_5334*float2(1,1));
                float4 node_1038 = tex2D(_Displacement,TRANSFORM_TEX(node_1329, _Displacement));
                float node_6930_ang = node_4812;
                float node_6930_spd = 1.0;
                float node_6930_cos = cos(node_6930_spd*node_6930_ang);
                float node_6930_sin = sin(node_6930_spd*node_6930_ang);
                float2 node_6930_piv = float2(0.5,0.5);
                float2 node_6930 = (mul(((node_6539*0.66)+float2(0.33,0.66))-node_6930_piv,float2x2( node_6930_cos, -node_6930_sin, node_6930_sin, node_6930_cos))+node_6930_piv);
                float2 node_9586 = (node_6930+node_5334*float2(0.2,0.2));
                float4 node_5822 = tex2D(_Displacement,TRANSFORM_TEX(node_9586, _Displacement));
                float node_1577 = saturate(((node_1038.r*node_5822.r*(node_1038.g+node_5822.g))*2.85+0.15));
                float3 finalColor = saturate((1.0-(1.0-((saturate((1.0-(1.0-(pow(saturate((node_7022 + ( (saturate((sceneZ-partZ)/_WaterDepth) - _ShoreWaterOpacity) * (0.0 - node_7022) ) / ((_WaterColor.rgb*9.0+1.0) - _ShoreWaterOpacity))),_WaterFadeLevel)*sceneColor.rgb))*(1.0-saturate((lerp( _FakeReflectionColor.rgb, node_5739.rgb, _UseReflection )*pow(1.0-max(0,dot(normalDirection, viewDirection)),_ReflectionFresnel))))))*node_2090)+((_SpecularIntensity*pow(max(0,dot(lightDirection,viewReflectDirection)),exp((_Gloss*10.0+1.0))))*node_2090)))*(1.0-((node_4218.rgb*node_9129.rgb)*saturate(((1.0 - saturate((sceneZ-partZ)/_FoamDistance))+(_DisplacementFoamIntensity*node_1577)))*_FoamIntensity*node_2090))));
                fixed4 finalRGBA = fixed4(finalColor * saturate(((saturate((sceneZ-partZ)/_ShoreBlend)*node_3957)+((1.0 - node_3957)*_BackFaceOpacity))),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float _DirectionAngle;
            uniform float _DisplacementFoamSpeed;
            uniform sampler2D _Displacement; uniform float4 _Displacement_ST;
            uniform float _DisplacementScale;
            uniform float _DisplacementIntensity;
            uniform float _TessellationLevel;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float4 node_6532 = _Time + _TimeEditor;
                float node_5334 = (_DisplacementFoamSpeed*node_6532.r);
                float node_3775 = (_DirectionAngle*6.28318530718);
                float node_4812 = node_3775;
                float node_5179_ang = node_4812;
                float node_5179_spd = 1.0;
                float node_5179_cos = cos(node_5179_spd*node_5179_ang);
                float node_5179_sin = sin(node_5179_spd*node_5179_ang);
                float2 node_5179_piv = float2(0.5,0.5);
                float2 node_6539 = (o.uv0*float2(objScale.r,objScale.b)*_DisplacementScale);
                float2 node_5179 = (mul(node_6539-node_5179_piv,float2x2( node_5179_cos, -node_5179_sin, node_5179_sin, node_5179_cos))+node_5179_piv);
                float2 node_1329 = (node_5179+node_5334*float2(1,1));
                float4 node_1038 = tex2Dlod(_Displacement,float4(TRANSFORM_TEX(node_1329, _Displacement),0.0,0));
                float node_6930_ang = node_4812;
                float node_6930_spd = 1.0;
                float node_6930_cos = cos(node_6930_spd*node_6930_ang);
                float node_6930_sin = sin(node_6930_spd*node_6930_ang);
                float2 node_6930_piv = float2(0.5,0.5);
                float2 node_6930 = (mul(((node_6539*0.66)+float2(0.33,0.66))-node_6930_piv,float2x2( node_6930_cos, -node_6930_sin, node_6930_sin, node_6930_cos))+node_6930_piv);
                float2 node_9586 = (node_6930+node_5334*float2(0.2,0.2));
                float4 node_5822 = tex2Dlod(_Displacement,float4(TRANSFORM_TEX(node_9586, _Displacement),0.0,0));
                float node_1577 = saturate(((node_1038.r*node_5822.r*(node_1038.g+node_5822.g))*2.85+0.15));
                v.vertex.xyz += (float3(0,1,0)*node_1577*_DisplacementIntensity);
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _TessellationLevel;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
