using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScaleKostil : MonoBehaviour
{
    GameObject planetScalObj;

    int adder = 0;

    void Update()
    {



            adder++; 
        if (adder == 2)
        {
            if (transform.childCount == 0) 
                { this.gameObject.GetComponent<ScaleKostil>().enabled = false; adder = 0; }
            else
                 planetScalObj = transform.GetChild(0).gameObject;

            //Destroy(planetScalObj.GetComponent<ScaleSetterFix>());

            if(planetScalObj == null) { this.gameObject.GetComponent<ScaleKostil>().enabled = false; adder = 0; }
        }
        if (adder > 75)
            { this.gameObject.GetComponent<ScaleKostil>().enabled = false; adder = 0;  }

        if (adder > 2)
            planetScalObj.transform.localScale = planetScalObj.transform.localScale * 0.99f;
           
        

       


      //  }
    }
}
