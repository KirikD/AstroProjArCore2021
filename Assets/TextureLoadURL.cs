using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Networking;
using System.IO;
// скрипт загружает текстуру в память телефона и из нее применяет ее
public class TextureLoadURL : MonoBehaviour
{
    public string url; public string NameImage = "PrTexture.jpg";
    public RawImage YourRawImage;
    public Text UrlT, PathT, permissionT;
    void Start()
    {
        // загрузили наш текстуру из базы данных
        Invoke(nameof(LoadTextureFromURL), UnityEngine.Random.Range(0.1f, 1.0f));

        // Если ассет скачан то пытаемся инстансировать его сразу
        OlnlyLoadImg();


    }
    void LoadTextureFromURL()
    {
        // скачиваем префаб
        if (PlayerPrefs.GetInt(url + "B") != 10)
        {
            Debug.Log("OnceAlltime");
            PlayerPrefs.SetInt(url + "B", 10);
            StartCoroutine(DownloadImage(url));
        }
    }
    public Texture2D tex2D;
    IEnumerator DownloadImage(string MediaUrl)
    {
        UnityWebRequest request = UnityWebRequestTexture.GetTexture(MediaUrl);
        yield return request.SendWebRequest();
        if (request.isNetworkError || request.isHttpError)
            Debug.Log(request.error);
        else
        {
            tex2D = ((DownloadHandlerTexture)request.downloadHandler).texture;
            // Application.persistentDataPath
            YourRawImage.texture = tex2D;

            UrlT.text = url;
            SaveImg();
            // сохранили текстуру куда то
            byte[] bytes = tex2D.EncodeToJPG();
            System.IO.File.WriteAllBytes(Application.persistentDataPath + "/" + NameImage, bytes);
            permissionT.text = pathh = "" + Application.persistentDataPath + "/" + NameImage;
            tex2D.Compress(true);

            OlnlyLoadImg();
        }
    }
    public string pathh;
    void SaveImg()
    { 
        NativeGallery.Permission permission = NativeGallery.SaveImageToGallery(YourRawImage.texture as Texture2D, "GalleryTest", NameImage, (success, path) => pathh = path);
        Debug.Log("Permission result: " + permission);
        PathT.text = pathh;      
    }
    public void OlnlyLoadImg()
    {
        pathh = "" + Application.persistentDataPath + "/" + NameImage;
        StartCoroutine(LoadTextureFromCache(pathh));
    }
    public Texture2D tex2DOlnly;
    IEnumerator LoadTextureFromCache(string filePath)
    {
        if (!File.Exists(filePath))
        {
            yield break;
        }
        var www = UnityWebRequestTexture.GetTexture("file://" + filePath);
        yield return www.SendWebRequest();
        //texture loaded
        tex2DOlnly = DownloadHandlerTexture.GetContent(www);
        tex2DOlnly.Compress(true);
        YourRawImage.texture = tex2DOlnly; // тут блок когда мы применяем нашу текстуру
    }

}
