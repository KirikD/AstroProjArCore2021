using UnityEngine;

namespace AssetBundles
{
    public class Example1 : MonoBehaviour
    {
        private AssetBundleManager abm;

        private void Start()
        {
            abm = new AssetBundleManager();
            abm.SetBaseUri("http://kirikd.ru/EpsonServer/Arctic/Model08.android.unity3d");
            abm.Initialize(OnAssetBundleManagerInitialized);
        }

        private void OnAssetBundleManagerInitialized(bool success)
        {
            if (success) {
                abm.GetBundle("BundleNameHere", OnAssetBundleDownloaded);
            } else {
                Debug.LogError("Error initializing ABM.");
            }
        }

        private void OnAssetBundleDownloaded(AssetBundle bundle)
        {
            if (bundle != null) {
                // Do something with the bundle
                Debug.Log("AAA");
                abm.UnloadBundle(bundle);
            }

            abm.Dispose();
        }
    }
}