using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PrefabParenter : MonoBehaviour
{
    public NewBandleLoader newBandleLoader;
    void Start()
    {
        newBandleLoader = GameObject.Find("FirstLoadAssetsSpace").GetComponent<NewBandleLoader>();

        try
        {
            for (int i = 0; i < newBandleLoader.ObjectsGam.Length; i++)
            {
                if (name == newBandleLoader.ObjectsGam[i].name)
                    ObjectsGameobj = newBandleLoader.ObjectsGam[i];
            }

            ObjectsGameobj.transform.SetParent(this.gameObject.transform, false);
            ObjectsGameobj.SetActive(true);
        }
        catch
        { // если мы не можем стащить префаб то скачиваем его с интернета сноваа
          this.gameObject.GetComponent<NewBandleLoader>().enabled = true;
        }
    }
    public GameObject ObjectsGameobj;
    public string name;
    // Update is called once per frame

}
