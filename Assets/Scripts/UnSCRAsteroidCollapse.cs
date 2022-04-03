using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnSCRAsteroidCollapse : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }
    public GameObject EnableEffect;
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.name == "Earth")
        //Object name is the name of the GameObject you want to check for collisions with.
        {
            Debug.Log("CollapsErtgh!!");
            //Destroy(this.gameObject);
           
            EnableEffect.SetActive(true);
            Invoke("DelXlam",9);
            this.gameObject.GetComponent<MeshRenderer>().enabled = false;
        }
    }
    void DelXlam()
    {
        Destroy(EnableEffect);
        Destroy(this.gameObject.GetComponent<UnSCRAsteroidCollapse>());
        this.gameObject.SetActive(false);
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
