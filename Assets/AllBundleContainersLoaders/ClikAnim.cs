using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClikAnim : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }
    public bool IsActive = false;
    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            RaycastHit hit;
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out hit, 100.0f))
            {
                IsActive = !IsActive;               //if inventory is already True it will set it to false And the other way around.
                if (IsActive == true)
                {
                    Debug.Log("AA You selected the " + hit.transform.name); // ensure you picked right object
                }
                else 
                {
                    Debug.Log("BB You selected the " + hit.transform.name); // ensure you picked right object
                }
                   
            }
        }
    }
}
