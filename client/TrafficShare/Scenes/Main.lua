
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

    local webView = native.newWebView( display.contentCenterX, display.contentCenterY, display.contentWidth , display.contentHeight )
    webView:request("index.html", system.ResourceDirectory)--

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