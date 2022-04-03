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
    [Header("точка обжект анимации к которой парентим дочерний обжект")]
    public Transform[] AnimPoint; public int AnimIndex;
    GameObject thisMainObj; // это главный обект этого маркера
    void Start()
    {
        string value = this.gameObject.name.Substring(0, this.gameObject.name.Length - 7);
        this.gameObject.name = value; // убрали дурацкую надпись клоне

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
    public void MarkerListUpdated() // вызываем когда доп маркер появился в мире
    {
      //  thisMainObj = this.transform.GetChild(0).transform.gameObject;
        allMarkers = GameObject.FindGameObjectsWithTag("MarkerTarg");
       // IndicatorMeshTest.enabled = false;

    }
    // Массив со всеми маркерами
    public GameObject[] allMarkers;
    int AdderCucle = 0;
    string oldName  =""; GameObject oldObjGeom; GameObject oldMarker;

    [Header("Дистанция с которой начинаем взаимодействовать")]
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

            // Если приблизились выводим имя
            if (dist < DistanceAction && allMarkers[AdderCucle].name != transform.gameObject.name )
            {

             
                if (oldName.Length < 3)
                {            // единыжды вызываем
                    if (oldName != allMarkers[AdderCucle].name) //&& allMarkers[AdderCucle].GetComponent<DistanceEventMaster>().IndicatorMeshTest.enabled
                    {
                        oldMarker = allMarkers[AdderCucle];
                        oldName = allMarkers[AdderCucle].name;

                        Debug.Log("<color=green>CollisionWidth: </color>" + allMarkers[AdderCucle].name);
                        AllVariantsActionsBaseNameSort(allMarkers[AdderCucle].gameObject.name); // допустим взаимодействуем с астеройдом пишем сюда имя астеройда
                        //DebugTXT[(int)UnityEngine.Random.Range(0,20)].text = "" + allMarkers[AdderCucle].name + " || " + transform.position;
                        //DebugUniqueTXT.text = this.gameObject.name + " || " + allMarkers[AdderCucle].name + " || " + transform.position;
                        oldObjGeom = allMarkers[AdderCucle].transform.GetChild(0).gameObject;
                    }

                }
            }
            // Если отдалились то у этого обжекта выводим имя
            if (dist > DistanceAction && allMarkers[AdderCucle].name != transform.gameObject.name)
            {
                if (oldName == allMarkers[AdderCucle].name) //&& allMarkers[AdderCucle].GetComponent<DistanceEventMaster>().IndicatorMeshTest.enabled
                {

                    //oldMarker = null;
                    oldName = " ";
                    Debug.Log("<color=yellow>CollisionWidth: </color>" + allMarkers[AdderCucle].name);
                    DistantedOffMarker(allMarkers[AdderCucle].gameObject.name); // отдалились 
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
    // сортируем массив по имени
    void AllVariantsActionsBaseNameSort(string nam) // выполняем когда приблизили к маркеру
    {
        for (int i = 0; i < AllVariantsActionsBase.Count; i++)
        {
            if (AllVariantsActionsBase[i].name == nam)
            {
               // DebugTXT[1].text = "AllVar " + nam; DebugTXT[2].text = "AllVar " + AllVariantsActionsBase[i].name + " || " + transform.position;
                AnimIndex = AllVariantsActionsBase[i].AnimIndexID;
                this.Invoke(AllVariantsActionsBase[i].ParentObjFunc, allMarkers[AdderCucle].transform, AllVariantsActionsBase[i].delayA); // парент функ
                this.Invoke(AllVariantsActionsBase[i].AnimPlayFunc, allMarkers[AdderCucle].transform, AllVariantsActionsBase[i].delayB); // Аним функ
                this.Invoke(AllVariantsActionsBase[i].BaseFunc, allMarkers[AdderCucle].transform, AllVariantsActionsBase[i].delayС); // Аниматор функ
              
            }
        }
    }
    void DistantedOffMarker(string nam) // выполняем отдалились от маркера
    {
        for (int i = 0; i < AllVariantsActionsBase.Count; i++)
        {
            if (AllVariantsActionsBase[i].name == nam)
            {
              //  DebugTXT[1].text = "AllVar " + nam; DebugTXT[2].text = "AllVar " + AllVariantsActionsBase[i].name + " || " + transform.position;          
                this.Invoke(AllVariantsActionsBase[i].FuncOtdalF_A, allMarkers[AdderCucle].transform, AllVariantsActionsBase[i].delayE); // парент функ
                this.Invoke(AllVariantsActionsBase[i].FuncOtdalF_B, allMarkers[AdderCucle].transform, AllVariantsActionsBase[i].delayF); // Аним функ


            }
        }
    }
    [SerializeField]
    public List<ActionsWhenCollision> AllVariantsActionsBase = new List<ActionsWhenCollision>();

    [System.Serializable]
    public class ActionsWhenCollision
    {
        [SerializeField]
        [Header("имя обекта на которое мы производим воздействие")]
        public string name; // имя обекта на которое мы производим воздействие
        //[Header("Если заполнено то с этим обектом тоже выполняем взаимодействие")]
        //public string thisName; //

        [Header("Функция которую мы выполняем с дочерним обжектом и время через (парент)")]
        public string ParentObjFunc = "NullFunc"; public float delayA = 0.01f;
       // [Header("Анимированный индекс обжект с анимацией")]
        public int AnimIndexID;
        [Header("Вторая Функция которую мы выполняем с дочерним обжектом и время через (запуск анимации)")]
        public string AnimPlayFunc = "NullFunc"; public float delayB = 0.01f;
        [Header("Базовая Функция которую мы выполняем с дочерним обжектом и время через (аниматор точка плей)")]
        public string BaseFunc = "NullFunc"; public float delayС = 0.01f;
        // возможности при взаимодействии: 1 запуск анимации 2 выполнение какой либо инвоук функции через стринг список функций снизу


        [Header("Отдалили функция Первая")]
        public string FuncOtdalF_A = "NullFunc"; public float delayE = 2.5f;
        [Header("Отдалили функция Вторая")]
        public string FuncOtdalF_B = "NullFunc"; public float delayF = 4.5f;

    }


    public void NullFunc(Transform isOpenClose) {    } // пустая функция заглушка

    public void SetParentObject(Transform MainObj) // парентим к
    {
        Debug.Log("<color=red>SetParentObject: </color>" + MainObj.gameObject.name);
      //  DebugTXT[3].text = "Parent  " + MainObj.gameObject.name;
      MainObj.GetChild(0).SetParent(this.transform.GetChild(AnimIndex), true); // мы берем в маркере обжект который всегда в иерархии 0  и парентим его к анимированному поинту который всегда номер 1 имеет

    }
    public void PlayAnimation(Transform MainObj) // парентим к
    {
        Debug.Log("<color=blue>PlayAnimation: </color>" + MainObj.gameObject.name);

    }
    public void PlayAnimator(Transform MainObj) // парентим к
    {
      //  DebugTXT[4].text = "PlayAnim  " + MainObj.gameObject.name;
        Debug.Log("<color=black>PlayAnimator: </color>" + MainObj.gameObject.name);

        transform.GetChild(AnimIndex).GetComponent<Animator>().Rebind();
        transform.GetChild(AnimIndex).GetComponent<Animator>().Update(0f);
        transform.GetChild(AnimIndex).GetComponent<Animator>().speed = 1.0f;
        try { for (int ai = 0; ai < AnimPoint.Length; ai++)  AnimPoint[ai].GetComponent<AnimatorFunc>().PlayStopAnimator(); } catch { }
    }
    // cписок функций что делаем в случае разрыва связей
    public void DeParent(Transform poss) // убираем парент
    {  //  трали вали куча кода
        Debug.Log("<color=red>DeParent: </color>" + poss.gameObject.name);
        poss.SetParent(null);
    }

    public void GrozaInCiclonFunctionOn(Transform MainObj) // выполняем это на самом обекте на котором скрипт
    { transform.GetChild(0).GetChild(AnimIndex).gameObject.SetActive(true); Debug.Log("<color=red>GrozaInCiclonFunctionOn: </color>" + MainObj.gameObject.name);  }// гроза  
    public void GrozaInCiclonFunctionOff(Transform MainObj) // выполняем это на самом обекте на котором скрипт
    { transform.GetChild(0).GetChild(AnimIndex).gameObject.SetActive(false); }// гроза  
    // возвращаем планету на место при разрыве маркеров их связи по расстоянию
    public void ReturnPlanetParent(Transform pos) // убираем парент
    {  //  трали вали куча кода
        Debug.Log(thisMainObj.name + "<color=black> ReturnPlanetParent: </color>" + oldObjGeom.name + " || " + oldMarker.name);
        oldObjGeom.transform.SetParent(oldMarker.transform,false);
        oldObjGeom.transform.SetSiblingIndex(0);
        oldObjGeom.transform.localPosition = new Vector3(0.0f, 0.0f, 0.0f); oldObjGeom.transform.localScale = Vector3.one;
        // спрашиваем майн обжект у скрипта другого обжекта

    }

    public void ReturnPlanetOnMarkerLost() // возвращаем планету если маркер скрылся
    {  //  трали вали куча кода
        //Debug.Log(thisMainObj.name + "<color=black> ReturnPlanetParent: </color>" + oldObjGeom.name + " || " + oldMarker.name);
        thisMainObj.transform.SetParent(transform, false);
        thisMainObj.transform.SetSiblingIndex(0);
        thisMainObj.transform.localPosition = new Vector3(0.0f, 0.0f, 0.0f); oldObjGeom.transform.localScale = Vector3.one;
        // спрашиваем майн обжект у скрипта другого обжекта

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