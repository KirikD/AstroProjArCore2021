using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ReloadShader : MonoBehaviour
{
    public string ShaderName;
    public string TexName; public string TexPath;
    public string ColorN;  public Color ColorV;
    public string[] ShadNames;
    public Texture texture;
    void Start()
    {
        Material material = new Material(Shader.Find(ShaderName));
        
        //Load a Texture (Assets/Resources/Textures/texture01.png)
        texture = Resources.Load<Texture2D>(TexPath);
        
        // assign the material to the renderer
        GetComponent<Renderer>().material = material;

        // заполним из массива параметры
        for (int i = 0; i < ShadNames.Length; i++)
        {
            GetComponent<Renderer>().material.SetFloat(ShadNames[i].Split('@')[0], float.Parse(ShadNames[i].Split('@')[1]) );
        }
        // текстуру после всего
        material.SetTexture(TexName, texture);
        GetComponent<Renderer>().material.SetTexture(TexName, texture);
        GetComponent<Renderer>().material.SetColor(ColorN, ColorV);
    }


}
