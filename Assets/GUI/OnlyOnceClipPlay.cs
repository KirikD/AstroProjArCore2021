using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnlyOnceClipPlay : MonoBehaviour
{
    public bool isOcupporedOtherAudio = false;
    public float OcupporedTimeFl;
    void OcuppTime()
    {
        isOcupporedOtherAudio = false;
        CancelInvoke("OcuppTime"); CancelInvoke("OcuppTime");
    }

    // Update is called once per frame
    public void OcupporedOtherAudio()
    {
        isOcupporedOtherAudio = true;
        Invoke("OcuppTime", OcupporedTimeFl);
    }
}
