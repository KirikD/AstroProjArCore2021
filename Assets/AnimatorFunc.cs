using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimatorFunc : MonoBehaviour
{
    public Animator AnimatR;
    ScaleKostil scaleKostil;
    void Start()
    {
        AnimatR = GetComponent<Animator>();
        // GetComponent<Animator>().Play("StateName");
        AnimatR.speed = 0;
        scaleKostil = GetComponent<ScaleKostil>();
    }

    // Update is called once per frame
    public void PlayStopAnimator()
    {
       
        AnimatR.speed = 1;
        //enabb = true;
        scaleKostil.enabled = true;
        Debug.Log("AnimatorFunc " + scaleKostil.gameObject.name);
    }

  /*  GameObject planetScalObj;

    int adder = 0;
    bool enabb = false;
    void Update()
    {

        if (enabb)
        {
            adder++;
            if (adder == 2)
            {
                if (transform.childCount == 0)
                { enabb = false; adder = 0; }
                else
                    planetScalObj = transform.GetChild(0).gameObject;

                // Debug.Log("tr " + transform.parent.gameObject.name);

                if (planetScalObj == null) { this.gameObject.GetComponent<ScaleKostil>().enabled = false; adder = 0; }
            }
            if (adder > 75)
            { enabb = false; adder = 0; }

            if (adder > 2)
                planetScalObj.transform.localScale = planetScalObj.transform.localScale * 0.99f;

        }




        //  }
    }*/
}
