// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.18 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.18;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.4632353,fgcg:0.3440438,fgcb:0.3167712,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3849,x:33319,y:32833,varname:node_3849,prsc:2|diff-7704-OUT,normal-4299-OUT,custl-7704-OUT,alpha-4755-OUT,clip-316-OUT,refract-4934-OUT;n:type:ShaderForge.SFN_Slider,id:7790,x:32365,y:33336,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:node_7790,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Tex2d,id:317,x:32170,y:32969,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_317,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:50ca5b098e42eae4db69b89c5e7aea35,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:9714,x:32170,y:32775,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_9714,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:5596,x:32497,y:32726,varname:node_5596,prsc:2|A-9714-RGB,B-317-RGB,C-9401-RGB;n:type:ShaderForge.SFN_Tex2d,id:9636,x:32579,y:32415,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_9636,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d9f3596e4d9e6634596f0bf608af2b80,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:4299,x:33088,y:32475,varname:node_4299,prsc:2|A-8143-OUT,B-9636-RGB,T-7555-OUT;n:type:ShaderForge.SFN_Vector3,id:8143,x:32858,y:32320,varname:node_8143,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:7555,x:32694,y:32569,ptovrint:False,ptlb:Normal Intensity,ptin:_NormalIntensity,varname:node_7555,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3589744,max:1;n:type:ShaderForge.SFN_Slider,id:3207,x:32508,y:34011,ptovrint:False,ptlb:Refraction Intensity,ptin:_RefractionIntensity,varname:node_3207,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_ComponentMask,id:1406,x:32802,y:32988,varname:node_1406,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9636-RGB;n:type:ShaderForge.SFN_Multiply,id:4934,x:33216,y:33535,varname:node_4934,prsc:2|A-1406-OUT,B-3207-OUT,C-7718-OUT,D-5121-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:3452,x:32545,y:32836,varname:node_3452,prsc:2;n:type:ShaderForge.SFN_LightColor,id:8769,x:32545,y:32957,varname:node_8769,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3716,x:32829,y:32868,varname:node_3716,prsc:2|A-8769-RGB,B-3452-OUT;n:type:ShaderForge.SFN_Multiply,id:7704,x:33000,y:32792,varname:node_7704,prsc:2|A-5596-OUT,B-3716-OUT;n:type:ShaderForge.SFN_Slider,id:7525,x:32508,y:33845,ptovrint:False,ptlb:CutOff,ptin:_CutOff,varname:node_7525,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:316,x:32819,y:33584,varname:node_316,prsc:2|A-317-A,B-7525-OUT;n:type:ShaderForge.SFN_VertexColor,id:9401,x:32181,y:33498,varname:node_9401,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4755,x:32754,y:33138,varname:node_4755,prsc:2|A-9714-A,B-317-A,C-9401-A,D-7790-OUT,E-7718-OUT;n:type:ShaderForge.SFN_DepthBlend,id:7718,x:32819,y:33336,varname:node_7718,prsc:2|DIST-9202-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9202,x:32724,y:33492,ptovrint:False,ptlb:Edge Blend,ptin:_EdgeBlend,varname:node_9202,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_TexCoord,id:5878,x:32973,y:33759,varname:node_5878,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:4228,x:33175,y:33759,varname:node_4228,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-5878-UVOUT;n:type:ShaderForge.SFN_Length,id:3602,x:33434,y:33767,varname:node_3602,prsc:2|IN-4228-OUT;n:type:ShaderForge.SFN_OneMinus,id:5121,x:33424,y:33644,varname:node_5121,prsc:2|IN-3602-OUT;proporder:317-9714-9636-7555-3207-7790-7525-9202;pass:END;sub:END;*/

Shader "DCG/Water Shader/Water Particle " {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Normal ("Normal", 2D) = "bump" {}
        _NormalIntensity ("Normal Intensity", Range(0, 1)) = 0.3589744
        _RefractionIntensity ("Refraction Intensity", Range(0, 1)) = 0
        _Alpha ("Alpha", Range(0, 1)) = 1
        _CutOff ("CutOff", Range(0, 1)) = 0
        _EdgeBlend ("Edge Blend", Float ) = 5
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
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float _Alpha;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _NormalIntensity;
            uniform float _RefractionIntensity;
            uniform float _CutOff;
            uniform float _EdgeBlend;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD6;
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
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
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float node_7718 = saturate((sceneZ-partZ)/_EdgeBlend);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_Normal_var.rgb.rg*_RefractionIntensity*node_7718*(1.0 - length((i.uv0*2.0+-1.0))));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalLocal = lerp(float3(0,0,1),_Normal_var.rgb,_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a*_CutOff) - 0.5);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 node_7704 = ((_Color.rgb*_MainTex_var.rgb*i.vertexColor.rgb)*(_LightColor0.rgb*attenuation));
                float3 finalColor = node_7704;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,(_Color.a*_MainTex_var.a*i.vertexColor.a*_Alpha*node_7718)),1);
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
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float _Alpha;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _NormalIntensity;
            uniform float _RefractionIntensity;
            uniform float _CutOff;
            uniform float _EdgeBlend;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
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
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float node_7718 = saturate((sceneZ-partZ)/_EdgeBlend);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_Normal_var.rgb.rg*_RefractionIntensity*node_7718*(1.0 - length((i.uv0*2.0+-1.0))));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalLocal = lerp(float3(0,0,1),_Normal_var.rgb,_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a*_CutOff) - 0.5);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 node_7704 = ((_Color.rgb*_MainTex_var.rgb*i.vertexColor.rgb)*(_LightColor0.rgb*attenuation));
                float3 finalColor = node_7704;
                fixed4 finalRGBA = fixed4(finalColor * (_Color.a*_MainTex_var.a*i.vertexColor.a*_Alpha*node_7718),0);
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
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _CutOff;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
/////// Vectors:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a*_CutOff) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
