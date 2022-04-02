using UnityEngine;
using System.Collections;
[RequireComponent(typeof(AudioSource))]
public class AudioWWW : MonoBehaviour
{
    public string url = "http://kirikd.ru/Files/TestSound.mp3";
    public AudioSource source;
 
    IEnumerator Start()
    {
        source = GetComponent<AudioSource>();
        using (var www = new WWW(url))
        {
            yield return www;
            source.clip = www.GetAudioClip();
        }
    }

    void Update()
    {
        if (!source.isPlaying && source.clip.isReadyToPlay)
            source.Play();
    }
}