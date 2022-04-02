using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class ButtonStartAnim : MonoBehaviour
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
    public bool IsActive = false;  bool isWaitAnim = true;
    public void AnimPlay()
    {
        IsActive = !IsActive;               //if inventory is already True it will set it to false And the other way around.
                                            //all with the same key press that can be changed in the inspector. AnimationByButton

        //-----------------------------------------------
        if (IsActive == true )
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
                        allMarkers[i].transform.GetChild(0).gameObject.GetComponent<AnimationByButton>().PlayStopAnimation(true);
                    }
                    catch { }
                }
            }
        }
        else
        {
            if (isWaitAnim)
            {
                isWaitAnim = false; Invoke(nameof(ButtonStartAnim.WaitAnim),3);
                recordIco.SetActive(true);    //if the boolean is true
                stopIco.SetActive(false);
                for (int i = 0; i < allMarkers.Length; i++)
                {
                    try
                    {
                        allMarkers[i].transform.GetChild(0).gameObject.GetComponent<AnimationByButton>().PlayStopAnimation(false);
                    }
                    catch { }
                }
            }
        }
        this.gameObject.GetComponent<Image>().enabled = false;
    }
    void WaitAnim() 
    {
        isWaitAnim = true;
    }
    public void ReloadThisLevelBtt()
    {
        Application.LoadLevel(Application.loadedLevel);
    }
}
