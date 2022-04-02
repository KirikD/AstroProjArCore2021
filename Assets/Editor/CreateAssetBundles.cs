using UnityEditor;
using UnityEngine;
using System.IO;

public class CreateAssetBundlesA
{
    [MenuItem("Assets/Build AssetBundlesA")]
    static void BuildAllAssetBundlesA()
    {
        string assetBundleDirectory = "Assets/StreamingAssets";
        if (!Directory.Exists(Application.streamingAssetsPath))
        {
            Directory.CreateDirectory(assetBundleDirectory);
        }
        BuildPipeline.BuildAssetBundles(assetBundleDirectory, BuildAssetBundleOptions.None, EditorUserBuildSettings.activeBuildTarget);
    }
}
