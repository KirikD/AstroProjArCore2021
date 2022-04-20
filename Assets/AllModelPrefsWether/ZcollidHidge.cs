using System.Collections;
using System.Collections.Generic;
using UnityEngine;
// если коллайдеры столкнулись то отключаем меши
public class ZcollidHidge : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {

    }
    public MeshRenderer[] DisabObj; // эффект который запускаем когда сколлапсились
    public string[] planetsNames;
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.name == "")
        { }
        for (int i = 0; i < DisabObj.Length; i++)
            DisabObj[i].enabled = false;
    }
    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.name == "")
        { }
        for (int i = 0; i < DisabObj.Length; i++)
            DisabObj[i].enabled = true;
    }
    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.name == "")
        { }
        for (int i = 0; i < DisabObj.Length; i++)
            DisabObj[i].enabled = false;
    }
    void OnCollisionExit(Collision collision)
    {
        if (collision.gameObject.name == "")
        { }
        for (int i = 0; i < DisabObj.Length; i++)
            DisabObj[i].enabled = true;
    }


}
