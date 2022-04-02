using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationByButton : MonoBehaviour
{
    public Animation anim;
    void Start()
    {
        anim = gameObject.GetComponent<Animation>();
        //anim["Scene"].layer = 123; // Close
        anim.Stop();
       // anim["Open"].speed = 0.5f;
       // anim.Play("Open");
    }

    // Update is called once per frame
    public void PlayStopAnimation(bool isPlay)
    {
        if (isPlay)
        {
            //Debug.Log("PP");
            anim.Stop();
            anim["Scene"].normalizedTime = 0;
            anim["Scene"].speed = 0.5f;

            anim.Play("Scene");
           
        }
        else
        {
            anim.Stop();
            anim["SceneC"].normalizedTime = 0;
            anim["SceneC"].speed = 0.5f;
           
            anim.Play("SceneC");
            
        }
    }
}
