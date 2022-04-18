using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
[RequireComponent(typeof(AudioSource))]
public class AudioPlayUrlRequest : MonoBehaviour
{
    public string urlStr;
    void Start()
    {
        audS = GetComponent<AudioSource>();
        StartCoroutine(LoadAudioURL(urlStr));

        onlyOnceClipPlay = GameObject.Find("Canvas").GetComponent<OnlyOnceClipPlay>();
    }
    public AudioClip source;
    AudioSource audS;
    IEnumerator LoadAudioURL(string uri)
    {
        UnityWebRequest www = UnityWebRequest.Get(uri);
        yield return www.SendWebRequest();

        if (www.isNetworkError || www.isHttpError)
        {
            Debug.Log(www.error);
        }
        else
        {
            // Or retrieve results as binary data 
            byte[] results = www.downloadHandler.data;
            var memStream = new System.IO.MemoryStream(results);
            var mpgFile = new NLayer.MpegFile(memStream);
            var samples = new float[mpgFile.Length];
            mpgFile.ReadSamples(samples, 0, (int)mpgFile.Length);

            var clip = AudioClip.Create("foo", samples.Length, mpgFile.Channels, mpgFile.SampleRate, false);
            clip.SetData(samples, 0);
            source = clip;

            audS.clip = source; //audS.Play();

            audS.Stop();
            onlyOnceClipPlay.OcupporedTimeFl = clip.length/7.994f;
            if (onlyOnceClipPlay.isOcupporedOtherAudio == false)
            {
                audS.Play();
                onlyOnceClipPlay.OcupporedOtherAudio();
            }
           

        }
    }
    public void PlaySound()
    {
        onlyOnceClipPlay.OcupporedTimeFl = audS.clip.length / 7.5f;
        if (onlyOnceClipPlay.isOcupporedOtherAudio == false)
        {
            audS.Play();
            onlyOnceClipPlay.OcupporedOtherAudio();
        }
    }
    public  OnlyOnceClipPlay onlyOnceClipPlay;
    public void PlayAudd()
    {
        audS.Play();
    }
    public void StopAudd()
    {
        audS.Stop();
    }
}
