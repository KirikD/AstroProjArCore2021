using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class RotateVarTwo : MonoBehaviour
{

    public GameObject m_objecttorotate;

    [Space]
    public int m_minScale = 1;
    public int m_maxScale = 3;

    private float initialFingersDistance;

    private Vector3 initialScale;
    private float m_firstpoint;
    private float m_secondpoint;

    private int m_inc = 0;
    private void Start()
    {
        m_objecttorotate = this.gameObject;
    }
    void Update()
    {

        if (Input.touchCount == 0)
        {
            m_inc = 0; rotPose = 0;
            return;
        }


        if (m_objecttorotate == null)
        {
            return;
        }


        if (Input.touchCount == 1)
        {
            if (m_inc == 0)
            {
                m_firstpoint = (int)Input.GetTouch(0).position.x;
                m_secondpoint = (int)Input.GetTouch(0).position.x;
            }

            m_inc++;

            if (m_inc <= 10)
            {
                return;
            }

            m_secondpoint = (int)Input.GetTouch(0).position.x;

            if (m_firstpoint < m_secondpoint)
            {
                _Rotating(false);
            }
            else if (m_firstpoint > m_secondpoint)
            {
                _Rotating(true);
            }


            return;
        }

        if (Input.touches.Length == 2)
        {
            _Scaling();
            return;
        }
       // m_objecttorotate.transform.rotation = Quaternion.Euler(0, rotPose, 0);
       // m_objecttorotate.transform.rotation = Quaternion.AngleAxis(rotPose, Vector3.up);
      
      //  
    }
    Quaternion tr;

    private void LateUpdate()
    {
        if (Input.GetKey(KeyCode.A))
            _Rotating(true);
        if (Input.GetKey(KeyCode.S))
            _Rotating(false);
      
        //m_objecttorotate.transform.rotation = Quaternion.Lerp(m_objecttorotate.transform.rotation, tr, Time.deltaTime * 1);
        root = Mathf.Lerp(root, rotPose, Time.deltaTime * 1);
        m_objecttorotate.transform.Rotate(0, root, 0, Space.Self);
        //m_objecttorotate.transform.rotation = Quaternion.AngleAxis(rotPose, Vector3.up);
        if (m_inc >= 10)
        {
            m_firstpoint = (int)Input.GetTouch(0).position.x;
        }
    }
    float root;
   public float rotPose = 0;
    void _Rotating(bool m_right)
    {

        //Debug.Log(m_right);

        if (m_right)
        {
            rotPose = 9; 
            //m_objecttorotate.transform.Rotate(Vector3.up * Time.deltaTime * 200f);
            tr = Quaternion.AngleAxis(rotPose, transform.parent.up);
            // StartCoroutine(ChangeSpeed(100f, 40f, 2f));
        }
        else
        {
            rotPose = -9;
            tr = Quaternion.AngleAxis(rotPose, transform.parent.up);
            //m_objecttorotate.transform.Rotate(Vector3.down * Time.deltaTime * 200f);
            //StartCoroutine(ChangeSpeed(100f, 40f, 2f));
        }
    }
    IEnumerator ChangeSpeed(float v_start, float v_end, float duration)
    {
        float elapsed = 0.0f;
        while (elapsed < duration)
        {
         //   speed = Mathf.Lerp(v_start, v_end, elapsed / duration);
            elapsed += Time.deltaTime;
            yield return null;
        }
      //  speed = v_end;
    }

    void _Scaling()
    {
        if (Input.touches.Length == 2)
        {
            Touch t1 = Input.touches[0];
            Touch t2 = Input.touches[1];

            if (t1.phase == TouchPhase.Began || t2.phase == TouchPhase.Began)
            {
                initialFingersDistance = Vector2.Distance(t1.position, t2.position);
                initialScale = m_objecttorotate.transform.localScale;
            }
            else if (t1.phase == TouchPhase.Moved || t2.phase == TouchPhase.Moved)
            {

                float currentFingersDistance = Vector2.Distance(t1.position, t2.position);
                var scaleFactor = currentFingersDistance / initialFingersDistance;

                Vector3 m_scale = initialScale * scaleFactor;

                m_scale.x = Mathf.Clamp(m_scale.x, m_minScale*0.8f, m_maxScale);
                m_scale.y = Mathf.Clamp(m_scale.y, m_minScale * 0.8f, m_maxScale);
                m_scale.z = Mathf.Clamp(m_scale.z, m_minScale * 0.8f, m_maxScale);
                m_objecttorotate.transform.localScale = m_scale;
                //m_detailstext.text = m_scale.ToString();
            }
        }

    }
}