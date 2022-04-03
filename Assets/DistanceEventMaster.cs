using System;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;
using UnityEngine.UI;
public class DistanceEventMaster : MonoBehaviour
{
    public MeshRenderer IndicatorMeshTest;
    public Text[] DebugTXT;// public Text DebugUniqueTXT;
    // Start is called before the first frame update
    [Header("����� ������ �������� � ������� �������� �������� ������")]
    public Transform[] AnimPoint; public int AnimIndex;
    GameObject thisMainObj; // ��� ������� ����� ����� �������
    void Start()
    {
        string value = this.gameObject.name.Substring(0, this.gameObject.name.Length - 7);
        this.gameObject.name = value; // ������ �������� ������� �����

        thisMainObj = this.transform.GetChild(0).transform.gameObject;

        allMarkers = GameObject.FindGameObjectsWithTag("MarkerTarg") ;
        foreach (GameObject lightuser in allMarkers)
        {
            lightuser.GetComponent<DistanceEventMaster>().MarkerListUpdated();
        }

        GameObject[] gg = GameObject.FindGameObjectsWithTag("DebText");
        DebugTXT = new Text[gg.Length];
        for (int i = 0; i < gg.Length; i++)      DebugTXT[i] = gg[i].GetComponent<Text>();
        rand = (int)UnityEngine.Random.Range(0, 19);
    }
    int rand;
    public void MarkerListUpdated() // �������� ����� ��� ������ �������� � ����
    {
      //  thisMainObj = this.transform.GetChild(0).transform.gameObject;
        allMarkers = GameObject.FindGameObjectsWithTag("MarkerTarg");
       // IndicatorMeshTest.enabled = false;

    }
    // ������ �� ����� ���������
    public GameObject[] allMarkers;
    int AdderCucle = 0;
    string oldName  =""; GameObject oldObjGeom; GameObject oldMarker;

    [Header("��������� � ������� �������� �����������������")]
    public float DistanceAction = 3;
    void Update()
    {
       // DebugUniqueTXT.text = this.gameObject.name + IndicatorMeshTest.enabled +" || " + transform.position;
        if (IndicatorMeshTest.enabled)
        {
          
            if (AdderCucle > allMarkers.Length - 2)
                AdderCucle = -1;
            AdderCucle += 1;
            float dist = Vector3.Distance(allMarkers[AdderCucle].transform.position, transform.position);

            // ���� ������������ ������� ���
            if (dist < DistanceAction && allMarkers[AdderCucle].name != transform.gameObject.name )
            {

             
                if (oldName.Length < 3)
                {            // �������� ��������
                    if (oldName != allMarkers[AdderCucle].name) //&& allMarkers[AdderCucle].GetComponent<DistanceEventMaster>().IndicatorMeshTest.enabled
                    {
                        oldMarker = allMarkers[AdderCucle];
                        oldName = allMarkers[AdderCucle].name;

                        Debug.Log("<color=green>CollisionWidth: </color>" + allMarkers[AdderCucle].name);
                        AllVariantsActionsBaseNameSort(allMarkers[AdderCucle].gameObject.name); // �������� ��������������� � ���������� ����� ���� ��� ���������
                        //DebugTXT[(int)UnityEngine.Random.Range(0,20)].text = "" + allMarkers[AdderCucle].name + " || " + transform.position;
                        //DebugUniqueTXT.text = this.gameObject.name + " || " + allMarkers[AdderCucle].name + " || " + transform.position;
                        oldObjGeom = allMarkers[AdderCucle].transform.GetChild(0).gameObject;
                    }

                }
            }
            // ���� ���������� �� � ����� ������� ������� ���
            if (dist > DistanceAction && allMarkers[AdderCucle].name != transform.gameObject.name)
            {
                if (oldName == allMarkers[AdderCucle].name) //&& allMarkers[AdderCucle].GetComponent<DistanceEventMaster>().IndicatorMeshTest.enabled
                {

                    //oldMarker = null;
                    oldName = " ";
                    Debug.Log("<color=yellow>CollisionWidth: </color>" + allMarkers[AdderCucle].name);
                    DistantedOffMarker(allMarkers[AdderCucle].gameObject.name); // ���������� 
                                                                                //if (oldObjGeom != null)
                }
            }

        }
       // DebugTXT[rand].text = "    " + transform.parent.gameObject.name + "   " + oldName + " || " + this.gameObject.name + " || " + transform.parent.localPosition.x + " || " + transform.parent.localPosition.y + " || " + transform.parent.localPosition.z + " || ";
    }
    public void SetMadkerDistDal() 
    {    
        transform.position = new Vector3(UnityEngine.Random.Range(-999,999) , UnityEngine.Random.Range(-999, 999), UnityEngine.Random.Range(-999, 999)); Invoke("InvMadkerDistDal", 0.29f); Invoke("InvMadkerDistDal", 0.5f);
        ReturnPlanetOnMarkerLost();
    }
    void InvMadkerDistDal()
    {      transform.position = new Vector3(UnityEngine.Random.Range(-999, 999), UnityEngine.Random.Range(-999, 999), UnityEngine.Random.Range(-999, 999));  }
    // ��������� ������ �� �����
    void AllVariantsActionsBaseNameSort(string nam) // ��������� ����� ���������� � �������
    {
        for (int i = 0; i < AllVariantsActionsBase.Count; i++)
        {
            if (AllVariantsActionsBase[i].name == nam)
            {
               // DebugTXT[1].text = "AllVar " + nam; DebugTXT[2].text = "AllVar " + AllVariantsActionsBase[i].name + " || " + transform.position;
                AnimIndex = AllVariantsActionsBase[i].AnimIndexID;
                this.Invoke(AllVariantsActionsBase[i].ParentObjFunc, allMarkers[AdderCucle].transform, AllVariantsActionsBase[i].delayA); // ������ ����
                this.Invoke(AllVariantsActionsBase[i].AnimPlayFunc, allMarkers[AdderCucle].transform, AllVariantsActionsBase[i].delayB); // ���� ����
                this.Invoke(AllVariantsActionsBase[i].BaseFunc, allMarkers[AdderCucle].transform, AllVariantsActionsBase[i].delay�); // �������� ����
              
            }
        }
    }
    void DistantedOffMarker(string nam) // ��������� ���������� �� �������
    {
        for (int i = 0; i < AllVariantsActionsBase.Count; i++)
        {
            if (AllVariantsActionsBase[i].name == nam)
            {
              //  DebugTXT[1].text = "AllVar " + nam; DebugTXT[2].text = "AllVar " + AllVariantsActionsBase[i].name + " || " + transform.position;          
                this.Invoke(AllVariantsActionsBase[i].FuncOtdalF_A, allMarkers[AdderCucle].transform, AllVariantsActionsBase[i].delayE); // ������ ����
                this.Invoke(AllVariantsActionsBase[i].FuncOtdalF_B, allMarkers[AdderCucle].transform, AllVariantsActionsBase[i].delayF); // ���� ����


            }
        }
    }
    [SerializeField]
    public List<ActionsWhenCollision> AllVariantsActionsBase = new List<ActionsWhenCollision>();

    [System.Serializable]
    public class ActionsWhenCollision
    {
        [SerializeField]
        [Header("��� ������ �� ������� �� ���������� �����������")]
        public string name; // ��� ������ �� ������� �� ���������� �����������
        //[Header("���� ��������� �� � ���� ������� ���� ��������� ��������������")]
        //public string thisName; //

        [Header("������� ������� �� ��������� � �������� �������� � ����� ����� (������)")]
        public string ParentObjFunc = "NullFunc"; public float delayA = 0.01f;
       // [Header("������������� ������ ������ � ���������")]
        public int AnimIndexID;
        [Header("������ ������� ������� �� ��������� � �������� �������� � ����� ����� (������ ��������)")]
        public string AnimPlayFunc = "NullFunc"; public float delayB = 0.01f;
        [Header("������� ������� ������� �� ��������� � �������� �������� � ����� ����� (�������� ����� ����)")]
        public string BaseFunc = "NullFunc"; public float delay� = 0.01f;
        // ����������� ��� ��������������: 1 ������ �������� 2 ���������� ����� ���� ������ ������� ����� ������ ������ ������� �����


        [Header("�������� ������� ������")]
        public string FuncOtdalF_A = "NullFunc"; public float delayE = 2.5f;
        [Header("�������� ������� ������")]
        public string FuncOtdalF_B = "NullFunc"; public float delayF = 4.5f;

    }


    public void NullFunc(Transform isOpenClose) {    } // ������ ������� ��������

    public void SetParentObject(Transform MainObj) // �������� �
    {
        Debug.Log("<color=red>SetParentObject: </color>" + MainObj.gameObject.name);
      //  DebugTXT[3].text = "Parent  " + MainObj.gameObject.name;
      MainObj.GetChild(0).SetParent(this.transform.GetChild(AnimIndex), true); // �� ����� � ������� ������ ������� ������ � �������� 0  � �������� ��� � �������������� ������ ������� ������ ����� 1 �����

    }
    public void PlayAnimation(Transform MainObj) // �������� �
    {
        Debug.Log("<color=blue>PlayAnimation: </color>" + MainObj.gameObject.name);

    }
    public void PlayAnimator(Transform MainObj) // �������� �
    {
      //  DebugTXT[4].text = "PlayAnim  " + MainObj.gameObject.name;
        Debug.Log("<color=black>PlayAnimator: </color>" + MainObj.gameObject.name);

        transform.GetChild(AnimIndex).GetComponent<Animator>().Rebind();
        transform.GetChild(AnimIndex).GetComponent<Animator>().Update(0f);
        transform.GetChild(AnimIndex).GetComponent<Animator>().speed = 1.0f;
        try { for (int ai = 0; ai < AnimPoint.Length; ai++)  AnimPoint[ai].GetComponent<AnimatorFunc>().PlayStopAnimator(); } catch { }
    }
    // c����� ������� ��� ������ � ������ ������� ������
    public void DeParent(Transform poss) // ������� ������
    {  //  ����� ���� ���� ����
        Debug.Log("<color=red>DeParent: </color>" + poss.gameObject.name);
        poss.SetParent(null);
    }

    public void GrozaInCiclonFunctionOn(Transform MainObj) // ��������� ��� �� ����� ������ �� ������� ������
    { transform.GetChild(0).GetChild(AnimIndex).gameObject.SetActive(true); Debug.Log("<color=red>GrozaInCiclonFunctionOn: </color>" + MainObj.gameObject.name);  }// �����  
    public void GrozaInCiclonFunctionOff(Transform MainObj) // ��������� ��� �� ����� ������ �� ������� ������
    { transform.GetChild(0).GetChild(AnimIndex).gameObject.SetActive(false); }// �����  
    // ���������� ������� �� ����� ��� ������� �������� �� ����� �� ����������
    public void ReturnPlanetParent(Transform pos) // ������� ������
    {  //  ����� ���� ���� ����
        Debug.Log(thisMainObj.name + "<color=black> ReturnPlanetParent: </color>" + oldObjGeom.name + " || " + oldMarker.name);
        oldObjGeom.transform.SetParent(oldMarker.transform,false);
        oldObjGeom.transform.SetSiblingIndex(0);
        oldObjGeom.transform.localPosition = new Vector3(0.0f, 0.0f, 0.0f); oldObjGeom.transform.localScale = Vector3.one;
        // ���������� ���� ������ � ������� ������� �������

    }

    public void ReturnPlanetOnMarkerLost() // ���������� ������� ���� ������ �������
    {  //  ����� ���� ���� ����
        //Debug.Log(thisMainObj.name + "<color=black> ReturnPlanetParent: </color>" + oldObjGeom.name + " || " + oldMarker.name);
        thisMainObj.transform.SetParent(transform, false);
        thisMainObj.transform.SetSiblingIndex(0);
        thisMainObj.transform.localPosition = new Vector3(0.0f, 0.0f, 0.0f); oldObjGeom.transform.localScale = Vector3.one;
        // ���������� ���� ������ � ������� ������� �������

    }
}



namespace UnityEngine
{
    public static class ExtensionMethods
    {

        public static void Invoke(this MonoBehaviour behaviour, string method, object options, float delay)
        {
            behaviour.StartCoroutine(_invoke(behaviour, method, delay, options));
        }

        private static IEnumerator _invoke(this MonoBehaviour behaviour, string method, float delay, object options)
        {
            if (delay > 0f)
            {
                yield return new WaitForSeconds(delay);
            }

            Type instance = behaviour.GetType();
            if (method.Length < 3) method = "NullFunc";
            MethodInfo mthd = instance.GetMethod(method); //Debug.Log("EE^ " + method);
           
            mthd.Invoke(behaviour, new object[] { options });

            yield return null;
        }

    }
}