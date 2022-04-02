using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.Networking;
// https://gist.github.com/yaeda/5410868  хорошая подсказка по бандлам
public class LoadFromFileExample : MonoBehaviour
{
    void Start()
    {
        StartCoroutine(DownloadBundles());

/*
        var myLoadedAssetBundle
            = AssetBundle.LoadFromFile(Path.Combine(Application.streamingAssetsPath, "myassetBundle"));
        if (myLoadedAssetBundle == null)
        {
            Debug.Log("Failed to load AssetBundle!");
            return;
        }
        var prefab = myLoadedAssetBundle.LoadAsset<GameObject>("MyObject");
        Instantiate(prefab);*/
    }
    IEnumerator InstantiateObject()
    {
        string url = "http://kirikd.ru/EpsonServer/Arctic/Model08.android.unity3d";
        var request
            = UnityEngine.Networking.UnityWebRequestAssetBundle.GetAssetBundle(url, 0);
        float pro = request.downloadProgress;
        Debug.Log("Loaded^ " + pro);
        yield return request.SendWebRequest();
        AssetBundle bundle = UnityEngine.Networking.DownloadHandlerAssetBundle.GetContent(request);
        GameObject cube = bundle.LoadAsset<GameObject>("Cube");
        GameObject sprite = bundle.LoadAsset<GameObject>("Sprite");
        Instantiate(cube);
        Instantiate(sprite);
    }
    public uint crc = 3720593779;//copied from http://safebuild.net/hari/bundle/kitchen.manifest
    public string url = "http://kirikd.ru/EpsonServer/Arctic/Model08.android.unity3d";
    public string AssetName;
    uint version =0;
    IEnumerator DownloadBundles()
    {
        using (var uwr = new UnityWebRequest(url, UnityWebRequest.kHttpVerbGET))
        {
            uwr.downloadHandler = new DownloadHandlerAssetBundle(url, version, 0);
            float pro = uwr.downloadProgress;
            Debug.Log("Loaded^ " + pro);
            yield return uwr.SendWebRequest();
            AssetBundle bundle = DownloadHandlerAssetBundle.GetContent(uwr);
            if (AssetName == " ")
            {
                Instantiate(bundle.mainAsset);
            }
            else
            {
                //GameObject go=bundle.LoadAsset<GameObject>(AssetName);
                GameObject go = bundle.LoadAsset(AssetName) as GameObject;
                Instantiate(go);
            }

            bundle.Unload(false);
        }
    }

    IEnumerator GetAssetBundle()
    {
        UnityWebRequest www = UnityWebRequestAssetBundle.GetAssetBundle("http://kirikd.ru/EpsonServer/Arctic/Model08.android.unity3d");
        float pro = www.downloadProgress;
        Debug.Log("Loaded^ " + pro);
        yield return www.SendWebRequest();

        if (www.result != UnityWebRequest.Result.Success)
        {
            Debug.Log(www.error);
        }
        else
        {
            AssetBundle bundle = DownloadHandlerAssetBundle.GetContent(www);
        }
    }

}