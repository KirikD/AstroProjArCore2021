using System.Collections;
using UnityEngine;

namespace AssetBundles
{
    public class Example2 : MonoBehaviour
    {
        private IEnumerator Start()
        {
            AssetBundleManager abm = new AssetBundleManager();
            abm.SetBaseUri("http://kirikd.ru/EpsonServer/Arctic");
            var initializeAsync = abm.InitializeAsync();
            yield return initializeAsync;

            if (initializeAsync.Success) {
                AssetBundleAsync bundle = abm.GetBundleAsync("Model08.android.unity3d");
                yield return bundle;

                if (bundle.AssetBundle != null) {
                    // Do something with the bundle
                    abm.UnloadBundle(bundle.AssetBundle);
                }
            } else {
                Debug.LogError("Error initializing ABM.");
            }


            abm.Dispose();
        }
    }
}