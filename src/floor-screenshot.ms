-- 批量创建摄像机，保存渲染图片
-- -----------------   function   -------------
fn dumStr str len = (
  local result=""
  for m=1 to len do (
    result=result+str
  )
  return result
)
-- dumStr "0" 5
-- "00000"

fn formatStr str len prefix = (
  local result=""
  if( str.count<len)then(
    result=(dumStr prefix (len - str.count))+str
  )else(
    result=str
  )
  return result
)
-- formatStr "01" 5 "0" --"00001"
-- formatStr "11" 5 "-" --"---11"

-- -----------------   construt   -------------


-- -----------------   config   -------------
PROJECT_PATH="D:\\code-store\\maxscript\\3d-model-floor"
SCREENSHOT_PATH=PROJECT_PATH+"\\screenshot\\"
TEXTURE_PATH=PROJECT_PATH+"\\dist\\texture\\"
colorSet=YmcSet()
fn renderr = (
  local ca=undefined
  local z=undefined
  local IMAGE_ARR=undefined
  local S_NUM=undefined
  local E_NUM=undefined
  local m=undefined
  local index=undefined
  local file=undefined
  local mat=undefined
  local obj=undefined
  local tobj=undefined
  local aColor=undefined
  -- 背景设置
  -- your can set it by quick key 8
  backgroundColor=(color 248 210 192)
  -- useEnvironmentMap --false
  -- environmentMap --undefined
  -- lightTintColor --(color 255 255 255)
  -- lightTintColorController --Controller:Bezier_Color
  -- lightLevel --1.0
  -- lightLevelController --Controller:Bezier_Float
  -- ambientColor --(color 255 255 255)
  -- ambientColorController --Controller:Bezier_Color

  --backgroundColorController --Controller:Bezier_Color


  -- 某一物体
  -- a=box()
  obj=$
  -- 某一光源
  ambientcolor = (color 255 255 255)
  -- 某一相机
  ca= TargetCamera()
  -- 某一目标
  tobj=targetobject pos:[0,0,0]
  
  -- 相机视图
  --actionMan.executeAction 0 "160"  -- Views: Viewport Camera 1

  -- 设置相机所在位置
  z=700
  z=z-100
  --ca.pos=[0,0,z]
  --ca.pos=[0,z,z]
  ca.pos=[z,z,z]
  -- 设置相机目标位置
  ca.target=tobj

  -- 某些纹理
  IMAGE_ARR=#()
  S_NUM=1
  E_NUM=10
  /*
  for m=S_NUM to E_NUM do (
    index = m as string
    -- file=TEXTURE_PATH+"texture0"+index+".jpg"
    --formatStr index 2 "0" --"---0x"
    file=TEXTURE_PATH+"texture"+(formatStr index 2 "0")+".jpg"
    IMAGE_ARR[m]=file
  )
  S_NUM=1
  E_NUM=IMAGE_ARR.count --24
  */
  -- 某些颜色
  while colorSet.size <=E_NUM do
    ( 
     colorSet.add (color (random 0  255) (random 0  255) (random 0  255))
    )
    

for m=S_NUM to E_NUM do (
  index = m as string
  -- 创建贴图材质
  /*
  mat = standard()
  --mat.name="texture0"+index
  mat.name="texture"+(formatStr index 2 "0")
  mat.diffusemap = bitmaptexture filename:IMAGE_ARR[m]
  */
  -- 某一颜色
  aColor=colorSet.getByIndex (index as Number)
  -- 创建颜色材质
  mat = standard()
  --mat.name="texture0"+index
  mat.name="texture"+(formatStr index 2 "0")
  mat.diffuse =aColor

	-- 赋予物体材质
  obj.material = mat
	-- 物体显示材质
  showtexturemap obj.material on
	-- 渲染对象并存图片
  -- render camera:ca outputFile:(SCREENSHOT_PATH+"demo0"+index+".jpg") vfb:off ?
  render camera:ca outputFile:(SCREENSHOT_PATH+"demo"+(formatStr index 2 "0")+".jpg") vfb:off ?
  )

)
renderr()
