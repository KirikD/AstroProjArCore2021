using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections;
using System.Linq;

public class ButtonStartAnim : MonoBehaviour, IPointerDownHandler, IPointerUpHandler
{
    public GameObject[] allMarkers;
    void Start()
    {
        allMarkers = GameObject.FindGameObjectsWithTag("MarkerTarg");
        foreach (GameObject lightuser in allMarkers)
        {
            // lightuser.GetComponent<light>().enabled = false;
        }
        //  this.Invoke("OpenScreen", transform, 2f); //    this.Invoke("SetParent", 5.34f, 2f); // 

    }
    public GameObject recordIco, stopIco;
    public bool IsActive = true;  bool isWaitAnim = true;
    public void AnimPlay()
    {
     
        allMarkers = GameObject.FindGameObjectsWithTag("MarkerTarg");
               //if inventory is already True it will set it to false And the other way around.
                                          //all with the same key press that can be changed in the inspector. AnimationByButton
       
        //-----------------------------------------------
        if (animOnce)
        {
           
            if (IsActive == true)
            {
                if (isWaitAnim)
                {
                    isWaitAnim = false; Invoke(nameof(ButtonStartAnim.WaitAnim), 3);
                    recordIco.SetActive(true);    //if the boolean is true
                    stopIco.SetActive(false);
                    for (int i = 0; i < allMarkers.Length; i++)
                    {
                        try
                        {
                            allMarkers[i].transform.GetChild(0).GetChild(0).gameObject.GetComponent<AnimationByButton>().PlayStopAnimation(false);
                        }
                        catch { }
                    }
                }
            }
            else
            {
                if (isWaitAnim)
                {
                    isWaitAnim = false; Invoke(nameof(ButtonStartAnim.WaitAnim), 3);
                    recordIco.SetActive(false);    //if the boolean is true
                    stopIco.SetActive(true);
                    for (int i = 0; i < allMarkers.Length; i++)
                    {

                        try
                        {
                            allMarkers[i].transform.GetChild(0).GetChild(0).gameObject.GetComponent<AnimationByButton>().PlayStopAnimation(true);
                        }
                        catch { }
                    }
                }
            }
            this.gameObject.GetComponent<Image>().enabled = false;
        }
    }
    bool timeFix;
    public void OnPointerDown(PointerEventData eventData)
    {
      
        Debug.Log("Pointer Test: Point Down");
        timeFix = true;
    }

    public void OnPointerUp(PointerEventData eventData)
    {
        animOnce = true;
        Debug.Log("Pointer Test: Point Up"); 
        timeFix = false;
        Invoke("WaitRes", 1.5f);
    }
    public float timeAdd; bool animOnce = false;
    void FixedUpdate()
    {
        if (timeAdd > 0.06f) animOnce = false;
        if (timeAdd > 0.02f && timeAdd < 0.06f)
        {  AnimPlay();  }



        if (timeFix)
        { timeAdd += Time.deltaTime; }



    }
    void WaitRes()
    {
        timeAdd = 0;
    }
    void WaitAnim() 
    {
        isWaitAnim = true; 
        IsActive = !IsActive;
    }
    public void ReloadThisLevelBtt()
    {
        Application.LoadLevel(Application.loadedLevel);
    }
}
