local composer = require("composer")
local widget = require("widget")
require("datePickerWheel")

local scene = composer.newScene()
local backObject = display.newGroup()
local frontObject = display.newGroup()


local function Destination()

	local sceneGroup = scene.view
	local datePicker
--------------------------------------------------------------------------------------------------
	scene.textFrom = display.newText({
	    text = "Откуда?",     
	    x = CenterX*0.8,
	    y = CenterY*0.3, 
	    width = Width*0.5,
	    font = native.systemFont,   
	    fontSize = 40*ScaleFont,
	    align = "left"  -- Alignment parameter
	})
	scene.textFrom:setFillColor(0,0,0)
	scene.textFrom.align = "left"

	scene.fieldFromBack = display.newImageRect("Images/rectRounded1.png",Width*0.8,Height * 0.07)
	scene.fieldFromBack.x = CenterX
	scene.fieldFromBack.y = CenterY*0.5

	scene.fieldFrom = native.newTextField( CenterX, CenterY*0.5, Width*0.65, Height * 0.045 )
	scene.fieldFrom.hasBackground  = false

	scene.fieldFrom.Font = Font
	scene.fieldFrom.inputType = "string"
	scene.fieldFrom:resizeFontToFitHeight()
	table.insert(frontObject,scene.fieldFrom)
	datePicker = widget.newDatePickerWheel(currYear, currMonth, currDay)
	datePicker.anchorChildren = true
	datePicker.anchorX = display.contentCenterX
	datePicker.anchorY = display.contentCenterY
	datePicker.x = display.contentCenterX
	datePicker.y = 0
    sceneGroup:insert(datePicker)

--------------------------------------------------------------------------------------------------

scene.textTo = display.newText({
	    text = "Куда?",     
	    x = CenterX*0.8,
	    y = CenterY*0.7, 
	    width = Width*0.5,
	    font = native.systemFont,   
	    fontSize = 40*ScaleFont,
	    align = "left"  -- Alignment parameter
	})
	scene.textTo:setFillColor(0,0,0)
	scene.textTo.align = "left"

	scene.fieldToBack = display.newImageRect("Images/rectRounded1.png",Width*0.8,Height * 0.07)
	scene.fieldToBack.x = CenterX
	scene.fieldToBack.y = CenterY*0.9

	scene.fieldTo = native.newTextField( CenterX, CenterY*0.9, Width*0.65, Height * 0.045 )
	scene.fieldTo.hasBackground  = false

	scene.fieldTo.Font = Font
	scene.fieldTo.inputType = "string"
	scene.fieldTo:resizeFontToFitHeight()
	table.insert(frontObject,scene.fieldTo)
	
--------------------------------------------------------------------------------------------------

end
function scene:create(event)
	local sceneGroup = self.view
	table.insert(sceneGroup,backObject)
    table.insert(sceneGroup,frontObject)
    scene.background = display.newRect( backObject, CenterX, CenterY, Width, Height )
    Destination()
   	
end

function scene:show(event)

end

function scene:hide(event)

end

function scene:destroy(event)

end

scene:addEventListener("create",scene)
scene:addEventListener("show",scene)
scene:addEventListener("hide",scene)
scene:addEventListener("destroy",scene)

return scene