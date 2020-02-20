#!/bin/sh

#
git lfs install
#add image file
git lfs track "*.png"
git lfs track "*.jpg"
git lfs track "*.jpeg"
git lfs track "*.gif"
git lfs track "*.psd"
git lfs track "*.ico"

#add movie file
git lfs track "*.mp4"

#add files for unity
git lfs track "*.zip"
git lfs track "*.unitypackage"

#add files for 3dmax
git lfs track "*.max"
git lfs track "*.mat"
git lfs track "*.fbx"

#file-usage
#./scripts/git-lfs.sh
