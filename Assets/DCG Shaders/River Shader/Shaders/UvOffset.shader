// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.18 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.18;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.4632353,fgcg:0.3440438,fgcb:0.3167712,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3841,x:33280,y:32984,varname:node_3841,prsc:2|diff-128-RGB,spec-6933-OUT,gloss-3906-OUT,normal-5809-OUT,custl-8740-OUT,alpha-813-OUT;n:type:ShaderForge.SFN_Tex2d,id:128,x:32358,y:32704,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_128,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-7584-OUT;n:type:ShaderForge.SFN_Tex2d,id:3040,x:32776,y:32543,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_3040,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-7584-OUT;n:type:ShaderForge.SFN_TexCoord,id:1496,x:31691,y:32616,varname:node_1496,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector4Property,id:1039,x:31691,y:32837,ptovrint:False,ptlb:ScaleOffset,ptin:_ScaleOffset,varname:node_1039,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:1,v3:1,v4:2;n:type:ShaderForge.SFN_Multiply,id:4902,x:31925,y:32658,varname:node_4902,prsc:2|A-1496-U,B-1039-X;n:type:ShaderForge.SFN_Multiply,id:5000,x:31925,y:32780,varname:node_5000,prsc:2|A-1496-V,B-1039-Y;n:type:ShaderForge.SFN_Append,id:8366,x:32142,y:32686,varname:node_8366,prsc:2|A-4902-OUT,B-5000-OUT;n:type:ShaderForge.SFN_Append,id:3715,x:32170,y:32886,varname:node_3715,prsc:2|A-8357-OUT,B-8917-OUT;n:type:ShaderForge.SFN_Slider,id:719,x:31559,y:33197,ptovrint:False,ptlb:Offset Speed,ptin:_OffsetSpeed,varname:node_719,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Time,id:7220,x:31638,y:33262,varname:node_7220,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1654,x:32001,y:33266,varname:node_1654,prsc:2|A-719-OUT,B-7220-TSL;n:type:ShaderForge.SFN_Multiply,id:8357,x:31987,y:32938,varname:node_8357,prsc:2|A-1039-Z,B-1654-OUT;n:type:ShaderForge.SFN_Multiply,id:8917,x:31987,y:33089,varname:node_8917,prsc:2|A-1039-W,B-1654-OUT;n:type:ShaderForge.SFN_Add,id:7584,x:32346,y:32873,varname:node_7584,prsc:2|A-8366-OUT,B-3715-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6933,x:32587,y:33044,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_6933,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Slider,id:3906,x:32371,y:33124,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_3906,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector3,id:90,x:32983,y:32452,varname:node_90,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Lerp,id:5809,x:33135,y:32531,varname:node_5809,prsc:2|A-90-OUT,B-3040-RGB,T-6953-OUT;n:type:ShaderForge.SFN_Slider,id:6953,x:33056,y:32732,ptovrint:False,ptlb:Normal Intensity,ptin:_NormalIntensity,varname:node_6953,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_LightColor,id:2981,x:32266,y:33283,varname:node_2981,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:2394,x:32266,y:33440,varname:node_2394,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4076,x:32506,y:33447,varname:node_4076,prsc:2|A-2981-RGB,B-2394-OUT;n:type:ShaderForge.SFN_Multiply,id:8740,x:32748,y:33242,varname:node_8740,prsc:2|A-128-RGB,B-4076-OUT,C-2864-RGB;n:type:ShaderForge.SFN_Color,id:2864,x:32754,y:33497,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_2864,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:813,x:33119,y:33488,varname:node_813,prsc:2|A-128-A,B-2864-A,C-434-OUT;n:type:ShaderForge.SFN_DepthBlend,id:434,x:33468,y:33515,varname:node_434,prsc:2|DIST-259-OUT;n:type:ShaderForge.SFN_ValueProperty,id:259,x:33309,y:33651,ptovrint:False,ptlb:Distance Blending,ptin:_DistanceBlending,varname:node_259,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;proporder:128-2864-3040-6953-6933-3906-1039-719-259;pass:END;sub:END;*/

Shader "DCG/Water Shader/uvOffset" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Normal ("Normal", 2D) = "bump" {}
        _NormalIntensity ("Normal Intensity", Range(0, 1)) = 0
        _Specular ("Specular", Float ) = 1
        _Gloss ("Gloss", Range(0, 1)) = 0
        _ScaleOffset ("ScaleOffset", Vector) = (1,1,1,2)
        _OffsetSpeed ("Offset Speed", Range(0, 1)) = 1
        _DistanceBlending ("Distance Blending", Float ) = 2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float4 _ScaleOffset;
            uniform float _OffsetSpeed;
            uniform float _Specular;
            uniform float _Gloss;
            uniform float _NormalIntensity;
            uniform float4 _Color;
            uniform float _DistanceBlending;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 projPos : TEXCOORD4;
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float4 node_7220 = _Time + _TimeEditor;
                float node_1654 = (_OffsetSpeed*node_7220.r);
                float2 node_7584 = (float2((i.uv0.r*_ScaleOffset.r),(i.uv0.g*_ScaleOffset.g))+float2((_ScaleOffset.b*node_1654),(_ScaleOffset.a*node_1654)));
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_7584, _Normal)));
                float3 normalLocal = lerp(float3(0,0,1),_Normal_var.rgb,_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_7584, _MainTex));
                float3 finalColor = (_MainTex_var.rgb*(_LightColor0.rgb*attenuation)*_Color.rgb);
                fixed4 finalRGBA = fixed4(finalColor,(_MainTex_var.a*_Color.a*saturate((sceneZ-partZ)/_DistanceBlending)));
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float4 _ScaleOffset;
            uniform float _OffsetSpeed;
            uniform float _Specular;
            uniform float _Gloss;
            uniform float _NormalIntensity;
            uniform float4 _Color;
            uniform float _DistanceBlending;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 projPos : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float4 node_7220 = _Time + _TimeEditor;
                float node_1654 = (_OffsetSpeed*node_7220.r);
                float2 node_7584 = (float2((i.uv0.r*_ScaleOffset.r),(i.uv0.g*_ScaleOffset.g))+float2((_ScaleOffset.b*node_1654),(_ScaleOffset.a*node_1654)));
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_7584, _Normal)));
                float3 normalLocal = lerp(float3(0,0,1),_Normal_var.rgb,_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_7584, _MainTex));
                float3 finalColor = (_MainTex_var.rgb*(_LightColor0.rgb*attenuation)*_Color.rgb);
                fixed4 finalRGBA = fixed4(finalColor * (_MainTex_var.a*_Color.a*saturate((sceneZ-partZ)/_DistanceBlending)),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
