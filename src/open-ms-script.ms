
PROJECT_PATH="D:\\code-store\\maxscript\\3d-model-floor"
SCREENSHOT_PATH=PROJECT_PATH+"\\screenshot\\"
SCRIPT_PATH=PROJECT_PATH+"\\src\\"

file=SCRIPT_PATH+"data-construt-set.ms"
try fileIn SCRIPT_PATH+"data-construt-set.ms" catch messageBox "open "+file title:"错误提示"
