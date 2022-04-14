using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InstanceOnLoadd : MonoBehaviour
{
    public GameObject Instt;
    void Start()
    {
        Invoke("gfdhfgjgfhmn",0.25f);

    }

    // Update is called once per frame
    void gfdhfgjgfhmn()
    {
        GameObject Insttt = Instantiate(Instt);
        Insttt.transform.SetParent(this.gameObject.transform.GetChild(0).transform, false);
    }
}
