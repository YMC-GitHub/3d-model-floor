-- -----------------     config     ------------
PROJECT_PATH="D:\\code-store\\maxscript\\3d-model-floor"
SCRIPT_PATH=PROJECT_PATH+"\\src\\"

-- -----------------     function   ------------
-- open, run,free and close ms file
fn importMs file =(
    local module=undefined
    module=openFile file
    execute module
    free module
    close module
)

-- -----------------  import module ------------
file=SCRIPT_PATH+"data-construt-set.ms"
getFileSize file
importMs file


-- -----------------  usage module ------------
--f = YmcSet()
--f.size