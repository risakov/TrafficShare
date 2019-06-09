local composer = require("composer")
local widget = require("widget")

local scene = composer.newScene()
local frontObject = display.newGroup()
local backObject = display.newGroup()

local function typeOfATransport()
	scene.datePicker = widget.newDatePickerWheel(currYear, currMonth, currDay)
	scene.datePicker.anchorChildren = true
	scene.datePicker.anchorX = display.contentCenterX
	scene.datePicker.anchorY = display.contentCenterY
	scene.datePicker.x = display.contentCenterX
	scene.datePicker.y = 0
    sceneGroup:insert(scene.datePicker)
end
function scene:create(event)

	local sceneGroup = self.view
	table.insert(sceneGroup,backObject)
    table.insert(sceneGroup,frontObject)
    typeOfATransport()
   	
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