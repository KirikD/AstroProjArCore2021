using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LangsSetter : MonoBehaviour
{

    public string RussianLang, PolskiLang, GermanyLang, FranchLang, AddLangA, AddLangB, AddLangC , AddLangD , AddLangE, EndLangF;

    string curSelLang;
    void Start()
    {
        CurLangTXT = GetComponent<Text>();
        curSelLang = PlayerPrefs.GetString("LangLang");
        SetLang(curSelLang);
    }

    public void ChoseLang(string langIndex)
    {
        PlayerPrefs.SetString("LangLang", langIndex);
        curSelLang = langIndex;
        SetLang(curSelLang);
     
    }

    public Text CurLangTXT;
    // Update is called once per frame
     void SetLang(string langIndex)
    {
        switch (langIndex)
        {
            case "RussianLang":
                print("RussianLang" + this.gameObject.name);
                CurLangTXT.text = RussianLang;
                break;
            case "PolskiLang":
                print("PolskiLang" + this.gameObject.name);
                CurLangTXT.text = PolskiLang;
                break;
            case "GermanyLang":
                print("GermanyLang" + this.gameObject.name);
                CurLangTXT.text = GermanyLang;
                break;
            case "FranchLang":
                print("FranchLang" + this.gameObject.name);
                CurLangTXT.text = FranchLang;
                break;
            case "AddLangA":
                print("AddLangA" + this.gameObject.name);
                CurLangTXT.text = AddLangA;
                break;
            case "AddLangB":
                print("AddLangB" + this.gameObject.name);
                CurLangTXT.text = AddLangB;
                break;
            case "AddLangC":
                print("AddLangC" + this.gameObject.name);
                CurLangTXT.text = AddLangC;
                break;
            case "AddLangD":
                print("AddLangD" + this.gameObject.name);
                CurLangTXT.text = AddLangD;
                break;
            case "AddLangE":
                print("AddLangE" + this.gameObject.name);
                CurLangTXT.text = AddLangE;
                break;
            case "EndLangF":
                print("EndLangF" + this.gameObject.name);
                CurLangTXT.text = EndLangF;
                break;
            default:
                print("NoLang" + this.gameObject.name);

                break;
        }
    
    }
}
