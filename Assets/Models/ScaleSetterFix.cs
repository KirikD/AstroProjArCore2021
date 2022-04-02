using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScaleSetterFix : MonoBehaviour
{
    private void Start()
    {
        scalOneSet = this.transform.localScale.x;
    }
    public float scalOneSet = 1;
    private void LateUpdate() { this.transform.localScale = new Vector3(scalOneSet, scalOneSet, scalOneSet); }
}
