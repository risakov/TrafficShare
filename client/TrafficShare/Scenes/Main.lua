
local composer = require("composer")
local widget = require("widget")
local scene = composer.newScene()
local frontObject = display.newGroup()
local backObject = display.newGroup()

local function webViewShow()

    local json = require( "json" )
 
    local function handleResponse( event )
 
        if not event.isError then
            local response = json.decode( event.response )
            print( event.response )
        else
            print( "Error!" )
        end
 
        return
    end

    local webView = native.newWebView( display.contentCenterX, display.contentCenterY*0.87, display.contentWidth*1.08 , display.contentHeight - display.contentHeight*0.097)
    webView:request("index.html", system.ResourceDirectory)
    local sceneGroup = scene.view

    --------------------------------------------------------------------------------------------------

    scene.textReg1 = display.newText({
	    text = "Поехали!",     
	    x = display.contentCenterX,
	    y = display.contentCenterY*1.968, 
	    width = Width*0.34,
	    height = Height * 0.12,
	    font = native.systemFont,   
	    fontSize = 44 * ScaleFont,
	    align = "center"  -- Alignment parameter
	})
	scene.textReg1:setFillColor(0,0,0)

    scene.buttonReg1 = widget.newButton(
	    {
	        onEvent = function (event)
	        	if ( event.phase == "ended" ) then
	        		webView:removeSelf()
	        		scene.buttonReg1:removeSelf()
	        		scene.buttonReg2:removeSelf()
	        		scene.buttonReg3:removeSelf()
	        		scene.textReg1:removeSelf()
	        		scene.textReg2:removeSelf()
	        		scene.textReg3:removeSelf()
	        		composer.removeScene("Scenes.Main")
	       			composer.gotoScene("Scenes.Order")
	   			end
	        end,
	        emboss = false,
	        -- Properties for a rounded rectangle button
	        shape = "Rect",
	        width = Width*0.34,
	        height = Height * 0.12,
	        fontSize = 40*ScaleFont,
	        fillColor = {default = {38/255,255/255,191/255,1}, over = {38/255,255/255,191/255,0.5}}
	    }
	)

	--------------------------------------------------------------------------------------------------

	scene.buttonReg1.x = display.contentCenterX
	scene.buttonReg1.y = display.contentCenterY*1.88
	frontObject:insert(scene.buttonReg1)
	frontObject:insert(scene.textReg1)


    scene.textReg2 = display.newText({
	    text = "Вид транспорта",     
	    x = display.contentCenterX*1.68,
	    y = display.contentCenterY*1.93, 
	    width = Width*0.34,
	    height = Height * 0.12,
	    font = native.systemFont,   
	    fontSize = 44 * ScaleFont,
	    align = "center"  -- Alignment parameter
	})
	scene.textReg2:setFillColor(0,0,0)

	scene.buttonReg2 = widget.newButton(
	    {
	        onEvent = function (event)
	        	if ( "ended" == event.phase ) then
	       			print( "Button was pressed and released" )
	   			end
	        end,
	        emboss = false,
	        -- Properties for a rounded rectangle button
	        shape = "Rect",
	        width = Width*0.34,
	        height = Height * 0.12,
	        fontSize = 40*ScaleFont,
	        fillColor = {default = {38/255,255/255,191/255,1}, over = {38/255,255/255,191/255,0.5}}
	    }
	)
	scene.buttonReg2.x = display.contentCenterX*1.68
	scene.buttonReg2.y = display.contentCenterY*1.88
	frontObject:insert(scene.buttonReg2)
	frontObject:insert(scene.textReg2)

--------------------------------------------------------------------------------------------------

	scene.textReg3 = display.newText({
	    text = "Профиль",     
	    x = display.contentCenterX*0.33,
	    y = display.contentCenterY*1.968, 
	    width = Width*0.34,
	    height = Height * 0.12,
	    font = native.systemFont,   
	    fontSize = 44 * ScaleFont,
	    align = "center"  -- Alignment parameter
	})
	scene.textReg3:setFillColor(0,0,0)

	scene.buttonReg3 = widget.newButton(
	    {
	        onEvent = function (event)
	        	if ( "ended" == event.phase ) then
	       			composer.gotoScene("Scenes.Profile")
	   			end
	        end,
	        emboss = false,
	        -- Properties for a rounded rectangle button
	        shape = "Rect",
	        width = Width*0.329,
	        height = Height * 0.12,
	        fontSize = 40*ScaleFont,
	        fillColor = {default = {38/255,255/255,191/255,1}, over = {38/255,255/255,191/255,0.5}}
	    }
	)

	scene.buttonReg3.x = display.contentCenterX*0.33
	scene.buttonReg3.y = display.contentCenterY*1.88
	frontObject:insert(scene.buttonReg3)
	frontObject:insert(scene.textReg3)
	
	--------------------------------------------------------------------------------------------------

end

function scene:create(event)
	local sceneGroup = self.view
	table.insert(sceneGroup,backObject)
    table.insert(sceneGroup,frontObject)
    webViewShow()
   	
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