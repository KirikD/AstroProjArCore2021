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
    private void OnEnable()
    {
        anim.Stop(); 
        anim["Scene"].normalizedTime = 0;
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
    public bool IsActive = false; bool isWaitAnim = true;
    // Update is called once per frame
    /* void Update()
     {

             LayerMask lm = 1 << 10;
             RaycastHit hit;
             //Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);

           /*  Ray ray = Camera.main.ScreenPointToRay(Input.GetTouch(0).position);
             if (Input.GetTouch(0).phase == TouchPhase.Began)
                 if (Physics.Raycast(ray, out hit, 100.0f, lm))
             {
                 IsActive = !IsActive;               //if inventory is already True it will set it to false And the other way around.
                 if (IsActive == true)
                 {
                     if (isWaitAnim)
                     {
                         isWaitAnim = false; Invoke(nameof(WaitAnim), 3);
                         PlayStopAnimation(true);
                         Debug.Log("AA You selected the " + hit.transform.name); // ensure you picked right object
                         GetComponent<AudioPlayUrlRequest>().PlayAudd();
                     }
                 }
                 else
                 {
                     if (isWaitAnim)
                     {
                         isWaitAnim = false; Invoke(nameof(WaitAnim), 3);
                         PlayStopAnimation(false);
                         Debug.Log("BB You selected the " + hit.transform.name); // ensure you picked right object
                         GetComponent<AudioPlayUrlRequest>().StopAudd();
                     }
                 }

             }
     }*/
   
   /* void Update()
    {
        RaycastHit hit = new RaycastHit();
        for (int i = 0; i < Input.touchCount; ++i)
        {
            if (Input.GetTouch(i).phase.Equals(TouchPhase.Began))
            {
                // Construct a ray from the current touch coordinates
                Ray ray = Camera.main.ScreenPointToRay(Input.GetTouch(i).position);
                if (Physics.Raycast(ray, out hit))
                {   //hit.transform.gameObject.SendMessage("OnMouseDown");
                    IsActive = !IsActive;               //if inventory is already True it will set it to false And the other way around.
                    if (IsActive == true)
                    {
                        if (isWaitAnim)
                        {
                            isWaitAnim = false; Invoke(nameof(WaitAnim), 3);
                            PlayStopAnimation(true);
                            Debug.Log("AA You selected the " + hit.transform.name); // ensure you picked right object
                            GetComponent<AudioPlayUrlRequest>().PlayAudd();
                        }
                    }
                    else
                    {
                        if (isWaitAnim)
                        {
                            isWaitAnim = false; Invoke(nameof(WaitAnim), 3);
                            PlayStopAnimation(false);
                            Debug.Log("BB You selected the " + hit.transform.name); // ensure you picked right object
                            GetComponent<AudioPlayUrlRequest>().StopAudd();
                        }
                    }
                    //////////////
                }
            }
        }
    }*/
    void WaitAnim()
    {
        isWaitAnim = true;
    }
}
