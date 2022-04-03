using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VoxelBusters.Demos.ReplayKit;
using VoxelBusters.ReplayKit;
using UnityEngine.UI;
public class CamRecFunction : MonoBehaviour
{
    public ReplayKitDemo rkd;
    void Start()
    {
        rkd.Initialise();
        Screen.orientation = ScreenOrientation.Portrait;
    }
   // public ReplayKitDemo rkd;
    public UIController uIController;
    public bool IsActive = false;

    public GameObject recordIco,stopIco;

    public void RecordBtt()
    {
            IsActive = !IsActive;               //if inventory is already True it will set it to false And the other way around.
                                             //all with the same key press that can be changed in the inspector.

        //-----------------------------------------------
        if (IsActive == true)
        {
            recordIco.SetActive(false);    //if the boolean is true
            stopIco.SetActive(true);

            rkd.PrepareRecording();
            ReplayKitManager.SetMicrophoneStatus(true);
            rkd.StartRecording();

           // uIController.OnClickStartRecord(); 
        }                                       //You can add her also more things like stopping the time With (Time.timeScale = 0;)
        else                                  //and turn it back with(Time.timeScale = 1;)
        {
            recordIco.SetActive(true);    //if the boolean is true
            stopIco.SetActive(false);
            // uIController.OnClickStopRecord(); 
            rkd.StopRecording();
            Invoke("SaveFileVideo", 1);
            Invoke("PrevRec", 2);
        }
    }
    void SaveFileVideo() { rkd.SavePreview(); }
    void PrevRec() { rkd.Preview(); string filePath = ReplayKitManager.GetPreviewFilePath(); }
}
