using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelLoader : MonoBehaviour
{
    string SceneN;
    public GameObject LoadingText, loa1, loa2, loa3, loaF1, loaFHidge;
    public bool IsActive = false;
    public GameObject MenyItems;
    public void MainMenyShowBtt()
    {
            IsActive = !IsActive;               //if inventory is already True it will set it to false And the other way around.                                              //all with the same key press that can be changed in the inspecto
        //-----------------------------------------------
        if (IsActive == true)
        {
            MenyItems.SetActive(true);    //if the boolean is true
        }                                       //You can add her also more things like stopping the time With (Time.timeScale = 0;)
        else                                  //and turn it back with(Time.timeScale = 1;)
        {
            MenyItems.SetActive(false);    //if the boolean is true

        }
    }

    public void BttLoadLevel(string scenName)
    {
        SceneN = scenName;
        Invoke("LoadShowA", 0.2f);
        Invoke("LoadShowB", 0.35f);
        Invoke("LoadShowC", 0.45f);
        Invoke("LoadSceneWait", 0.5f);
        LoadingText.SetActive(true);
    }

    // Update is called once per frame
    void LoadSceneWait()
    { 
        SceneManager.LoadScene(SceneN, LoadSceneMode.Single);
    }

    void LoadShowA()
    {     loa1.SetActive(true);  }
    void LoadShowB()
    {     loa2.SetActive(true);  }

    void LoadShowC()
    {      loa3.SetActive(true);  }
    AndroidJavaObject camera = null;
    AndroidJavaObject cameraParameters = null;

    public void ToggleAndroidFlashlight()
    {

        if (camera == null)
        {
            AndroidJavaClass cameraClass = new AndroidJavaClass("android.hardware.Camera");
            camera = cameraClass.CallStatic<AndroidJavaObject>("open", 0);
            if (camera != null)
            {
                cameraParameters = camera.Call<AndroidJavaObject>("getParameters");
                cameraParameters.Call("setFlashMode", "torch");
                camera.Call("setParameters", cameraParameters);
            }
        }
        else
        {
            cameraParameters = camera.Call<AndroidJavaObject>("getParameters");
            string flashmode = cameraParameters.Call<string>("getFlashMode");
            if (flashmode != "torch")
                cameraParameters.Call("setFlashMode", "torch");
            else
                cameraParameters.Call("setFlashMode", "off");

            camera.Call("setParameters", cameraParameters);
        }
    }

    void ReleaseAndroidJavaObjects()
    {
        if (camera != null)
        {
            camera.Call("release");
            camera = null;
        }
    }
    public GameObject OncesStartScrG;
    void Start()
    {
        Resources.UnloadUnusedAssets();
        Invoke("LoadShowFinishA", 0.01f);
        Invoke("LoadShowFinishB", 1.99f);


    }
    private void Awake()
    {
        // ????????? ??????
        if (PlayerPrefs.GetInt("OncesStartScr") != 5)
        {
            Debug.Log("OnceAlltimeOncesStartScr");
            PlayerPrefs.SetInt("OncesStartScr", 5);
            OncesStartScrG.SetActive(true);
        }
        else
        {
            OncesStartScrG.SetActive(false);
        }
    }
    void LoadShowFinishA()
    { loaF1.SetActive(true); }
        void LoadShowFinishB()
    { loaFHidge.SetActive(false); GameObject.Find("CameraFakeFocus").SetActive(false); }

  //  public void AutoFocOncesF()
   // {// GameObject.Find("ARCamera").GetComponent<AutoFocusMod>().AutoFocOnces(); }

    public GameObject[] ObjsArr;
    public  int zoomMax = 1;
    public void ZoomIn(int Val)
    {
      zoomMax += Val; 
      zoomMax = Mathf.Clamp(zoomMax, -3, 20);
      if (Mathf.Clamp(zoomMax, -2, 19) == zoomMax)
      {          
        // if (Val == 1)
        //     ppm.zoomFunc(0.1f);
        //  if (Val == 1)
        //      ppm.zoomFunc(-0.1f);
            if (Val == 1)
        {

            for (int i = 0; i < ObjsArr.Length; i++)
            {
                //ObjsArr[i].transform.localScale += new Vector3(0.1f, 0.1f, 0.1f);
                ObjsArr[i].GetComponent<ScaleSetterFix>().scalOneSet *= 1.1f;
            }
        }
        if (Val == -1)
        {
            for (int i = 0; i < ObjsArr.Length; i++)
            {
                //ObjsArr[i].transform.localScale += new Vector3(-0.1f, -0.1f, -0.1f);
                ObjsArr[i].GetComponent<ScaleSetterFix>().scalOneSet *= 0.9f;
            }

        }
      }
    }


}
