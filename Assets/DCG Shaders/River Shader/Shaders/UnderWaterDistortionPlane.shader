// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.18 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.18;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:4,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.4632353,fgcg:0.3440438,fgcb:0.3167712,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:5032,x:34899,y:32364,varname:node_5032,prsc:2|custl-1285-OUT,alpha-3670-OUT,refract-3812-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:7226,x:32071,y:32569,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:node_7226,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:40a59d660a527ee4cbad46b701a4d2cd,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:8200,x:32274,y:32485,varname:node_8200,prsc:2,tex:40a59d660a527ee4cbad46b701a4d2cd,ntxv:0,isnm:False|UVIN-866-OUT,TEX-7226-TEX;n:type:ShaderForge.SFN_Tex2d,id:6657,x:32274,y:32645,varname:node_6657,prsc:2,tex:40a59d660a527ee4cbad46b701a4d2cd,ntxv:0,isnm:False|UVIN-7499-UVOUT,TEX-7226-TEX;n:type:ShaderForge.SFN_Add,id:2899,x:32551,y:32559,varname:node_2899,prsc:2|A-8200-R,B-6657-R;n:type:ShaderForge.SFN_Add,id:2595,x:32551,y:32674,varname:node_2595,prsc:2|A-8200-G,B-6657-G;n:type:ShaderForge.SFN_Append,id:1761,x:32770,y:32614,varname:node_1761,prsc:2|A-2899-OUT,B-2595-OUT;n:type:ShaderForge.SFN_Multiply,id:3812,x:32795,y:32807,varname:node_3812,prsc:2|A-1761-OUT,B-8913-OUT;n:type:ShaderForge.SFN_Slider,id:8913,x:32274,y:32853,ptovrint:False,ptlb:Distortion Intensity,ptin:_DistortionIntensity,varname:node_8913,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5131108,max:1;n:type:ShaderForge.SFN_Slider,id:3765,x:31337,y:33312,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_3765,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Time,id:1029,x:31268,y:33165,varname:node_1029,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3874,x:31446,y:32901,varname:node_3874,prsc:2|A-1029-TSL,B-3765-OUT;n:type:ShaderForge.SFN_TexCoord,id:6909,x:31498,y:32393,varname:node_6909,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:1067,x:31451,y:32626,ptovrint:False,ptlb:Distortion Scale,ptin:_DistortionScale,varname:node_1067,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:3326,x:31610,y:32550,varname:node_3326,prsc:2|A-6909-UVOUT,B-1067-OUT;n:type:ShaderForge.SFN_Panner,id:583,x:31857,y:32638,varname:node_583,prsc:2,spu:1,spv:-1|UVIN-3326-OUT,DIST-3874-OUT;n:type:ShaderForge.SFN_Panner,id:7499,x:31830,y:32782,varname:node_7499,prsc:2,spu:-1,spv:1|UVIN-3326-OUT,DIST-3874-OUT;n:type:ShaderForge.SFN_Multiply,id:5599,x:31895,y:32365,varname:node_5599,prsc:2|A-3271-OUT,B-583-UVOUT;n:type:ShaderForge.SFN_Vector1,id:3271,x:31782,y:32296,varname:node_3271,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Vector2,id:376,x:32059,y:32206,varname:node_376,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Add,id:866,x:32081,y:32316,varname:node_866,prsc:2|A-5599-OUT,B-376-OUT;n:type:ShaderForge.SFN_DepthBlend,id:3901,x:33359,y:31739,varname:node_3901,prsc:2|DIST-220-OUT;n:type:ShaderForge.SFN_Vector1,id:1173,x:33165,y:31950,varname:node_1173,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:220,x:33341,y:32010,varname:node_220,prsc:2|A-1173-OUT,B-4984-OUT;n:type:ShaderForge.SFN_Slider,id:7912,x:33043,y:32214,ptovrint:False,ptlb:UnderWater Density,ptin:_UnderWaterDensity,varname:node_7912,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_OneMinus,id:8578,x:33609,y:31970,varname:node_8578,prsc:2|IN-3901-OUT;n:type:ShaderForge.SFN_Vector1,id:2862,x:33639,y:31771,varname:node_2862,prsc:2,v1:0.1;n:type:ShaderForge.SFN_RemapRange,id:4984,x:33425,y:32214,varname:node_4984,prsc:2,frmn:0,frmx:10,tomn:10,tomx:0.1|IN-7912-OUT;n:type:ShaderForge.SFN_Color,id:3573,x:33882,y:32054,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_3573,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:7326,x:33901,y:31772,varname:node_7326,prsc:2|A-2862-OUT,B-3573-RGB;n:type:ShaderForge.SFN_Slider,id:3670,x:34118,y:33516,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_3670,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:6717,x:34488,y:32003,varname:node_6717,prsc:2|A-7733-OUT,B-8118-OUT,T-8578-OUT;n:type:ShaderForge.SFN_SceneColor,id:4608,x:33675,y:32424,varname:node_4608,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8118,x:34280,y:32166,varname:node_8118,prsc:2|A-3573-RGB,B-4608-RGB;n:type:ShaderForge.SFN_Multiply,id:7182,x:34068,y:32283,varname:node_7182,prsc:2|A-4608-RGB,B-2611-OUT;n:type:ShaderForge.SFN_Vector1,id:2611,x:33939,y:32586,varname:node_2611,prsc:2,v1:0.033;n:type:ShaderForge.SFN_Blend,id:4260,x:34182,y:31803,varname:node_4260,prsc:2,blmd:6,clmp:True|SRC-7326-OUT,DST-7182-OUT;n:type:ShaderForge.SFN_DepthBlend,id:2047,x:34019,y:31562,varname:node_2047,prsc:2|DIST-2447-OUT;n:type:ShaderForge.SFN_Multiply,id:2447,x:32868,y:31957,varname:node_2447,prsc:2|A-381-OUT,B-220-OUT;n:type:ShaderForge.SFN_Vector1,id:381,x:32751,y:31861,varname:node_381,prsc:2,v1:2;n:type:ShaderForge.SFN_Lerp,id:7733,x:34532,y:31696,varname:node_7733,prsc:2|A-4260-OUT,B-2650-OUT,T-2047-OUT;n:type:ShaderForge.SFN_Vector1,id:8974,x:34448,y:31521,varname:node_8974,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:2650,x:34382,y:31573,varname:node_2650,prsc:2|A-8974-OUT,B-4260-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9907,x:34551,y:32338,ptovrint:False,ptlb:Use Depth,ptin:_UseDepth,varname:node_9907,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-8118-OUT,B-6717-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1285,x:34580,y:32565,varname:node_1285,prsc:2|IN-9907-OUT,IMIN-4367-OUT,IMAX-1621-OUT,OMIN-7004-OUT,OMAX-3162-OUT;n:type:ShaderForge.SFN_Slider,id:6905,x:33606,y:32895,ptovrint:False,ptlb:Contrast,ptin:_Contrast,varname:node_6905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:1621,x:34262,y:32944,varname:node_1621,prsc:2|IN-4367-OUT;n:type:ShaderForge.SFN_Vector1,id:3162,x:34262,y:32812,varname:node_3162,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:7004,x:34285,y:32757,varname:node_7004,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:4367,x:33948,y:32970,varname:node_4367,prsc:2|A-6905-OUT,B-6319-OUT;n:type:ShaderForge.SFN_Vector1,id:6319,x:33790,y:33096,varname:node_6319,prsc:2,v1:0.1;proporder:7226-8913-3765-1067-7912-3573-3670-9907-6905;pass:END;sub:END;*/

Shader "DCG/Water Shader/Under Water" {
    Properties {
        _Distortion ("Distortion", 2D) = "bump" {}
        _DistortionIntensity ("Distortion Intensity", Range(0, 1)) = 0.5131108
        _Speed ("Speed", Range(0, 10)) = 0
        _DistortionScale ("Distortion Scale", Float ) = 1
        _UnderWaterDensity ("UnderWater Density", Range(0, 10)) = 10
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Opacity ("Opacity", Range(0, 1)) = 0
        [MaterialToggle] _UseDepth ("Use Depth", Float ) = 0
        _Contrast ("Contrast", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay"
            "RenderType"="Transparent"
        }
        GrabPass{ }
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
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Distortion; uniform float4 _Distortion_ST;
            uniform float _DistortionIntensity;
            uniform float _Speed;
            uniform float _DistortionScale;
            uniform float _UnderWaterDensity;
            uniform float4 _Color;
            uniform float _Opacity;
            uniform fixed _UseDepth;
            uniform float _Contrast;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
                float4 projPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float4 node_1029 = _Time + _TimeEditor;
                float node_3874 = (node_1029.r*_Speed);
                float2 node_3326 = (i.uv0*_DistortionScale);
                float2 node_866 = ((0.75*(node_3326+node_3874*float2(1,-1)))+float2(0.5,0.5));
                float3 node_8200 = UnpackNormal(tex2D(_Distortion,TRANSFORM_TEX(node_866, _Distortion)));
                float2 node_7499 = (node_3326+node_3874*float2(-1,1));
                float3 node_6657 = UnpackNormal(tex2D(_Distortion,TRANSFORM_TEX(node_7499, _Distortion)));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (float2((node_8200.r+node_6657.r),(node_8200.g+node_6657.g))*_DistortionIntensity);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
/////// Vectors:
////// Lighting:
                float4 node_4608 = sceneColor;
                float3 node_8118 = (_Color.rgb*node_4608.rgb);
                float3 node_4260 = saturate((1.0-(1.0-(0.1*_Color.rgb))*(1.0-(node_4608.rgb*0.033))));
                float node_220 = (2.0*(_UnderWaterDensity*-0.9899999+10.0));
                float node_4367 = (_Contrast*0.1);
                float node_7004 = 0.0;
                float3 finalColor = (node_7004 + ( (lerp( node_8118, lerp(lerp(node_4260,(0.5*node_4260),saturate((sceneZ-partZ)/(2.0*node_220))),node_8118,(1.0 - saturate((sceneZ-partZ)/node_220))), _UseDepth ) - node_4367) * (1.0 - node_7004) ) / ((1.0 - node_4367) - node_4367));
                return fixed4(lerp(sceneColor.rgb, finalColor,_Opacity),1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
