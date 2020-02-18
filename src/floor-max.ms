/*
-- set units
units.DisplayType=#metric
units.MetricType=#millimeters
units.USType=#ft_Frac_In
units.USFrac=#frac_1_32
units.CustomName="FL"
units.CustomValue=660.0
units.CustomUnit=#feet
units.SystemScale=1.0
units.SystemType=#millimeters
units.formatValue 123.45
units.decodeValue "3.136m"
*/

fn makeFloorMax = (
    -- curd object
--c
mybox = box()  
--r
select mybox
--d
--delete mybox
--u
--select mybox
mybox.name = "floor"
mybox.wirecolor = color 27 177 27
mybox.width = 300
mybox.height = 50
mybox.length = 300
/*
mybox.widthsegs=6
mybox.heightsegs=6
mybox.lengthsegs=6
*/
macros.run "Modifier Stack" "Convert_to_Poly"

-- 制作十字行
subobjectLevel = 2
modPanel.setCurrentObject mybox.baseObject
--mybox.EditablePoly.SetSelection #Edge #{5}
mybox.EditablePoly.SetSelection #Edge #{5, 7}
mybox.EditablePoly.ConnectEdges ()

subobjectLevel = 2
modPanel.setCurrentObject mybox.baseObject
mybox.EditablePoly.SetSelection #Edge #{6, 8,15}
mybox.EditablePoly.ConnectEdges ()

-- 制中间矩形
-- 操作点
subobjectLevel = 1
modPanel.setCurrentObject mybox.baseObject
-- 选中点
mybox.EditablePoly.SetSelection #Vertex #{13}
-- 切角
mybox.vertexChamfer = 50
mybox.EditablePoly.buttonOp #Chamfer


subobjectLevel = 4
modPanel.setCurrentObject mybox.baseObject
mybox.EditablePoly.SetSelection #Face #{10}
mybox.EditablePoly.GrowSelection ()

-- 倒角
mybox.bevelType = 2
mybox.bevelHeight = 5
mybox.bevelOutline = -5
mybox.EditablePoly.buttonOp #Bevel


-- 切换颜色
mybox.wirecolor = color 88 144 225

)

makeFloorMax()