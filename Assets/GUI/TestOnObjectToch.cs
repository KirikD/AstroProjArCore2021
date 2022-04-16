using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestOnObjectToch : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    void Update()
    {
        // Code for OnMouseDown in the iPhone. Unquote to test.
        RaycastHit hit = new RaycastHit();
        for (int i = 0; i < Input.touchCount; ++i)
        {
            if (Input.GetTouch(i).phase.Equals(TouchPhase.Began))
            {
                // Construct a ray from the current touch coordinates
                Ray ray = Camera.main.ScreenPointToRay(Input.GetTouch(i).position);
                if (Physics.Raycast(ray, out hit))
                {
                    Destroy(this.gameObject);
                    //hit.transform.gameObject.SendMessage("OnMouseDown");

                }
            }
        }
    }
}
