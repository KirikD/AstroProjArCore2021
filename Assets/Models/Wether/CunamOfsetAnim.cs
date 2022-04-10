using UnityEngine;

public class CunamOfsetAnim : MonoBehaviour
{
    public GameObject Volna;
    void Start()
    {
        Invoke("OfsetAnim", 2);
    }

   
    void OfsetAnim()
    {
        Volna.SetActive(true);
        Volna.transform.localPosition = Vector3.one;
    }
}
