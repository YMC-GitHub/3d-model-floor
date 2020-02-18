PROJECT_PATH="D:\\code-store\\maxscript\\3d-model-floor"
MAX_PATH=PROJECT_PATH+"\\dist\\model\\"
MODE_NAME="floor"

actionMan.executeAction 0 "40021"  -- Selection: Select All
-- 保存为.max
MAX_FILE=MODE_NAME+".max"
file = MAX_PATH + MAX_FILE
--actionMan.executeAction 0 "40007"  -- File: Save File As
--saveMaxFile file #noPrompt selectedOnly:true
saveMaxFile file clearNeedSaveFlag:true quiet:true
-- 导出为.fbx
MAX_FILE=MODE_NAME+".fbx"
file = MAX_PATH + MAX_FILE
exportfile file #noPrompt selectedOnly:true using:FBXEXP
