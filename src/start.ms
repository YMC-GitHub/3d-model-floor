-- -----------------     config     ------------
PROJECT_PATH="D:\\code-store\\maxscript\\3d-model-floor"
SCRIPT_PATH=PROJECT_PATH+"\\src\\"

-- -----------------     function   ------------
-- open, run,free and close ms file
fn importMs file =(
    local module=undefined
	local size=undefined
	local hasFile=undefined
	hasFile=doesFileExist floorMax
	if hasFile==undefined then return hasFile
	size=getFileSize file
	if size == "0L" then(
		print file+"is empty"
	)else(
		--getFileSize file
		module=openFile file
		if module!=undefined then(
			execute module
			free module
			close module
		)
	)
)

-- -----------------  import module ------------
fun=SCRIPT_PATH+"function.ms"
file=SCRIPT_PATH+"data-construt-set.ms"
--getFileSize file
floorMax=SCRIPT_PATH+"floor-max.ms"
floorMat=SCRIPT_PATH+"floor-mat.ms"
floorShot=SCRIPT_PATH+"floor-screenshot.ms"
modelExportMs=SCRIPT_PATH+"floor-export.ms"
importMs fun
importMs file
importMs floorMax
importMs floorMat
importMs floorShot
importMs modelExportMs

/*
PROJECT_PATH="D:/code-store/maxscript/3d-model-floor"
GetDirectories (PROJECT_PATH+"/*")
getFiles (PROJECT_PATH+"/src/*.ms")
getFiles (PROJECT_PATH+"/dist/*.ms")
*/
/*
PROJECT_PATH="D:/code-store/maxscript/3d-model-floor"
SCRIPT_PATH=PROJECT_PATH+"/src/"
file=SCRIPT_PATH+"data-construt-set.ms"
fun=SCRIPT_PATH+"function.ms"
floorMax=SCRIPT_PATH+"floor-max.ms"
floorMat=SCRIPT_PATH+"floor-mat.ms"
floorShot=SCRIPT_PATH+"floor-screenshot.ms"
--getFileSize floorMax
importMs fun
importMs file
importMs floorMax
importMs floorMat
importMs floorShot
*/
-- -----------------  usage module ------------
--f = YmcSet()
--f.size
