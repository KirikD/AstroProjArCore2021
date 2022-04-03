using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotationAX : MonoBehaviour {
    public float speedX = 120.0f;
    public float speedY = 120.0f;
    public float speedZ = 120.0f;
    void Update () {
        this.transform.Rotate(Vector3.up, Time.deltaTime * speedX);
        this.transform.Rotate(Vector3.forward, Time.deltaTime * speedY);
        this.transform.Rotate(Vector3.left, Time.deltaTime * speedZ);
        
    }
   
}
