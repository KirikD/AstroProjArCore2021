using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScaleKostil : MonoBehaviour
{
    GameObject planetScalObj;

    int adder = 0;

    void Update()
    {

        Debug.Log("tr " + transform.parent.gameObject.name);

        adder++; 
        if (adder == 8)
        {
            if (transform.childCount == 0) 
                { this.gameObject.GetComponent<ScaleKostil>().enabled = false; adder = 0; }
            else
                 planetScalObj = transform.GetChild(0).gameObject;

           // Debug.Log("tr " + transform.parent.gameObject.name);

            if(planetScalObj == null) { this.gameObject.GetComponent<ScaleKostil>().enabled = false; adder = 0; }
        }
        if (adder > 80)
            { this.gameObject.GetComponent<ScaleKostil>().enabled = false; adder = 0;  }

        if (adder > 8)
            planetScalObj.transform.localScale = planetScalObj.transform.localScale * 0.99f;
           
        

       


      //  }
    }
}
