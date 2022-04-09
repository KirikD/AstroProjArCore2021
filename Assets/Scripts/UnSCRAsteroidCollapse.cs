using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnSCRAsteroidCollapse : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }
    public GameObject EnableEffect; // эффект который запускаем когда сколлапсились
    public string[] planetsNames;
    void OnTriggerEnter(Collider other)
    {
        //  
        for (int i = 0; i < planetsNames.Length; i++)
        {
            if (other.gameObject.name == planetsNames[i] || other.tag == "DebText")
            {
                Debug.Log("CollapsErtgh!!" + planetsNames[i]);
                //Destroy(this.gameObject);

              
                Invoke("DelXlam", 3);
                this.gameObject.SetActive(false);

                EnableEffect.transform.SetParent(null, true);
                EnableEffect.SetActive(true);
            }
        }
    }
    void DelXlam()
    {
     //  Invoke("ShowlXlam", 3);
       
        //Destroy(this.gameObject.GetComponent<UnSCRAsteroidCollapse>());
        this.gameObject.SetActive(true);
        EnableEffect.SetActive(false);
        EnableEffect.transform.SetParent(transform, true);
        EnableEffect.transform.localPosition = Vector3.zero;
    }
    void ShowlXlam()
    {
      this.gameObject.SetActive(true); EnableEffect.SetActive(false);
    }
        void OnTriggerExit(Collider other)
    {
        if (other.gameObject.name == "Earth")
        //Object name is the name of the GameObject you want to check for collisions with.
        {
            //What you want to do on trigger enter
        }
    }


}
