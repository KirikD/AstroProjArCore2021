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
      
        scaleKostil.enabled = true;
        Debug.Log("AnimatorFunc " + scaleKostil.gameObject.name);
    }
}
