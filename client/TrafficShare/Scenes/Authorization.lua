local composer = require("composer")
local widget = require("widget")

local scene = composer.newScene()
local backObject = display.newGroup()
local frontObject = display.newGroup()

local function showAuth()

	local sceneGroup = scene.view
	scene.logo = display.newCircle( frontObject, CenterX, CenterY*0.4, Width*0.15)
	scene.logo:setFillColor(0.2,0.3,1)

	scene.fieldInputNameBack = display.newImageRect("Images/rectRounded1.png",Width*0.6,Height * 0.05)
	scene.fieldInputNameBack.x = CenterX
	scene.fieldInputNameBack.y = CenterY*0.8

	scene.fieldInputName = native.newTextField( CenterX, CenterY*0.8, Width*0.55, Height * 0.04 )
	scene.fieldInputName.hasBackground  = false

	scene.fieldInputName.Font = Font
	scene.fieldInputName.inputType = "number"
	scene.fieldInputName:resizeFontToFitHeight()
	table.insert(frontObject,scene.fieldInputName)

	scene.textName = display.newText({
	    text = "Ваше имя",     
	    x = CenterX*0.9,
	    y = CenterY*0.7, 
	    width = Width*0.5,
	    font = native.systemFont,   
	    fontSize = 40*ScaleFont,
	    align = "left"  -- Alignment parameter
	})
	scene.textName:setFillColor(0,0,0)
	scene.textName.align = "left"
	
	--------------------------------------------------------------------------------------------------

	scene.fieldInputBack = display.newImageRect("Images/rectRounded1.png",Width*0.6,Height * 0.05)
	scene.fieldInputBack.x = CenterX
	scene.fieldInputBack.y = CenterY

	scene.fieldInput = native.newTextField( CenterX, CenterY, Width*0.55, Height * 0.04 )
	scene.fieldInput.hasBackground  = false

	scene.fieldInput.Font = Font
	scene.fieldInput.inputType = "number"
	scene.fieldInput:resizeFontToFitHeight()
	table.insert(frontObject,scene.fieldInput)

--------------------------------------------------------------------------------------------------

	scene.textNumber = display.newText({
	    text = "Номер телефона",     
	    x = CenterX*0.9,
	    y = CenterY*0.9, 
	    width = Width*0.5,
	    font = native.systemFont,   
	    fontSize = 40*ScaleFont,
	    align = "left"  -- Alignment parameter
	})
	scene.textNumber:setFillColor(0,0,0)
	scene.textNumber.align = "left"

--------------------------------------------------------------------------------------------------

	scene.textReg = display.newText({
	    text = "Зарегистрироваться",     
	    x = display.contentCenterX,
	    y = display.contentCenterY*1.53, 
	    width = Width*0.6,
	    height = Height * 0.05,
	    font = native.systemFont,   
	    fontSize = 44 * ScaleFont,
	    align = "center"  -- Alignment parameter
	})

--------------------------------------------------------------------------------------------------

	scene.textNumber:setFillColor(0,0,0)
	scene.textNumber.align = "left"
	scene.buttonReg = widget.newButton(
	    {
	        onEvent = function (event)
	        	if ( "ended" == event.phase ) then
	       			print( "Button was pressed and released" )
	   			end
	        end,
	        emboss = false,
	        -- Properties for a rounded rectangle button
	        shape = "roundedRect",
	        width = Width*0.6,
	        height = Height * 0.05,
	        cornerRadius = 40,
	        fontSize = 40*ScaleFont,
	        fillColor = {default = {36/255,122/255,191/255,1}, over = {36/255,122/255,191/255,0.5}}
	    }
	)
	scene.buttonReg.x = display.contentCenterX
	scene.buttonReg.y = display.contentCenterY*1.5
	frontObject:insert(scene.buttonReg)
	frontObject:insert(scene.textReg)

	--------------------------------------------------------------------------------------------------

end


function scene:create(event)
	local sceneGroup = self.view
	table.insert(sceneGroup,backObject)
	table.insert(sceneGroup,frontObject)
	scene.background = display.newRect( backObject, CenterX, CenterY, Width, Height )
	showAuth()

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