using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.Networking;

public class NewBandleLoader : MonoBehaviour
{
    public string UrlBundleDawnload = "http://kirikd.ru/AstroProject/cosmos";
    public string BundleFileFolderName = "AssetData";
    public string BundleFileName = "CosmosFullBundle";

    public string BundleLocalLoadPath = "Не нужно заполнять! поле забивается само!";
    public string PrefabGameobjectName = "asteroids";
    // вестия базы данных ассета любой стринг
    public string AssetDatBaseVersion = "T";
    public bool isReservPref = false;
    void Start()
    {
     //   AssetDatBaseVersion = "T";
        // загрузили наш ассет из базы данных
      //  Invoke(nameof(LoadAssetBundleFromURL), UnityEngine.Random.Range(0.1f, 10.0f));

        if (isReservPref == false)
        {
            AssetDatBaseVersion = "T";
            // загрузили наш ассет из базы данных
            Invoke(nameof(LoadAssetBundleFromURL), UnityEngine.Random.Range(0.1f, 10.0f));

            // Если ассет скачан то пытаемся инстансировать его сразу
            SetInstance();
        }
        if (isReservPref)
        {
            AssetDatBaseVersion = "T";
            Invoke(nameof(LoadAssetBundleFromURL), UnityEngine.Random.Range(0.9f, 2.0f));// загрузили наш ассет из базы данных
            var myLoadedAssetBundle = AssetBundle.LoadFromFile(Application.persistentDataPath + "/" + BundleFileFolderName + "/" + BundleFileName + AssetDatBaseVersion + ".unity3d");
            if (myLoadedAssetBundle == null)
            {
                Debug.Log("Failed to load AssetBundle!");
                return;
            }
            ObjectsGam = new GameObject[ObjectsNames.Length];
            for (int i = 0; i < ObjectsNames.Length; i++)
            { 
                 var prefab = myLoadedAssetBundle.LoadAsset<GameObject>(ObjectsNames[i]);
                ObjectsGam[i] = Instantiate(prefab);
                ObjectsGam[i].transform.SetParent(this.gameObject.transform, false);
                ObjectsGam[i].SetActive(false);
                ObjectsGam[i].name = ObjectsNames[i];
            }
            myLoadedAssetBundle.Unload(false);
        }
    }
    public string[] ObjectsNames; public GameObject[] ObjectsGam;
    void LoadAssetBundleFromURL()
    {
        // скачиваем префаб
        if (PlayerPrefs.GetInt(BundleFileName + AssetDatBaseVersion) != 10)
        {
            Debug.Log("OnceAlltime");
            PlayerPrefs.SetInt(BundleFileName + AssetDatBaseVersion, 10);
            StartCoroutine(downloadAsset(UrlBundleDawnload));
        }
    }
    public GameObject LoaderUI;
    IEnumerator downloadAsset(string URLpath)
    {
        LoaderUI.SetActive(true);
        string url = URLpath;

        UnityWebRequest www = UnityWebRequest.Get(url);
        DownloadHandler handle = www.downloadHandler;

        //Send Request and wait
        yield return www.Send();

        if (www.isNetworkError)
        {

            UnityEngine.Debug.Log("Error while Downloading Data: " + www.error);
        }
        else
        {
            UnityEngine.Debug.Log("Success    " + Application.persistentDataPath + "/" + BundleFileFolderName + "/" + BundleFileName);

            //handle.data

            //Construct path to save it
            string dataFileName = BundleFileName + AssetDatBaseVersion;
            string tempPath = Path.Combine(Application.persistentDataPath, BundleFileFolderName);
            tempPath = Path.Combine(tempPath, dataFileName + ".unity3d");

            //Save
            save(handle.data, tempPath);
        }
    }

    void save(byte[] data, string path)
    {
        //Create the Directory if it does not exist
        if (!Directory.Exists(Path.GetDirectoryName(path)))
        {
            Directory.CreateDirectory(Path.GetDirectoryName(path));
        }

        try
        {
            File.WriteAllBytes(path, data);
            Debug.Log("Saved Data to: " + path.Replace("/", "\\"));
            Invoke(nameof(SetInstance), 1); // инстансируем данные

            //после загрузки ассетов перезагрузим весь уровень! 
            LoaderUI.transform.GetChild(4).gameObject.SetActive(true);
            Invoke(nameof(ReloadAllLevel), 2.2f);
        }
        catch (Exception e)
        {
            Debug.LogWarning("Failed To Save Data to: " + path.Replace("/", "\\"));
            Debug.LogWarning("Error: " + e.Message);
        }
       
    }
    void ReloadAllLevel()
    { Application.LoadLevel(Application.loadedLevel); }    

       void SetInstance()
    {    // и пытаемся инстансировать его
        BundleLocalLoadPath = Application.persistentDataPath + "/" + BundleFileFolderName + "/" + BundleFileName + AssetDatBaseVersion + ".unity3d";
        StartCoroutine(LoadObject(BundleLocalLoadPath));
    }
    GameObject InstancedBandle;
    IEnumerator LoadObject(string path)
    {
        AssetBundleCreateRequest bundle = AssetBundle.LoadFromFileAsync(path);
        yield return bundle;

        AssetBundle myLoadedAssetBundle = bundle.assetBundle;
        if (myLoadedAssetBundle == null)
        {
            Debug.Log("Failed to load AssetBundle!");
            yield break;
        }
       
        AssetBundleRequest request = myLoadedAssetBundle.LoadAssetAsync<GameObject>(PrefabGameobjectName);
        yield return request;

        GameObject obj = request.asset as GameObject;
        
        //obj.transform.Rotate(350.41f, 400f, 20f);  obj.transform.localScale = new Vector3(1.0518f, 0.998f, 1.1793f);

        InstancedBandle = Instantiate(obj);
        //InstancedBandle.transform.localPosition = new Vector3(0.0f, InstancedBandle.transform.localPosition.y, 0.0f);
        InstancedBandle.transform.SetParent(this.gameObject.transform,false);

        myLoadedAssetBundle.Unload(false);
        if (isReservPref)
            InstancedBandle.SetActive(false);
    }
}
