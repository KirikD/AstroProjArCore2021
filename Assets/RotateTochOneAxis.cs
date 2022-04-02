using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateTochOneAxis : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    public float rotatespeed = 200f;
    private float _startingPosition;

    void Update()
    {
        if (Input.touchCount > 0)
        {
            Touch touch = Input.GetTouch(0);
            switch (touch.phase)
            {
                case TouchPhase.Began:
                    _startingPosition = touch.position.x;
                    break;
                case TouchPhase.Moved:
                    if (_startingPosition > touch.position.x)
                    {
                        transform.Rotate(Vector3.up, -200 * Time.deltaTime);
                    }
                    else if (_startingPosition < touch.position.x)
                    {
                        transform.Rotate(Vector3.up, rotatespeed * Time.deltaTime);
                    }
                    break;
                case TouchPhase.Ended:
                    Debug.Log("Touch Phase Ended.");
                    break;
            }
        }
    }
}

