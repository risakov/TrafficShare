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

local function showAuthLegalEntity()
	local sceneGroup = scene.view
	scene.lineForm = display.newLine(frontObject,0,Height*0.15,Width,Height*0.15)
	scene.lineForm:setStrokeColor( 36/255,122/255,191/255, 1 )
	scene.lineForm.strokeWidth = 8

	scene.textForm = display.newText({
	    text = "Форма заявки для юридического лица",     
	    x = CenterX,
	    y = Height*0.1, 
	    width = Width/1.5,
	    font = native.systemFont,   
	    fontSize = 72*ScaleFont,
	    align = "center"  -- Alignment parameter
	})
	scene.textForm:setFillColor(36/255,122/255,191/255, 1)


	scene.fieldInputFIOBack = display.newImageRect(frontObject,"Images/rectRounded1.png",Width*0.6,Height * 0.05)
	scene.fieldInputFIOBack.x = CenterX
	scene.fieldInputFIOBack.y = CenterY*0.5

	scene.fieldInputFIO = native.newTextField( CenterX, CenterY*0.5, Width*0.55, Height * 0.04 )
	scene.fieldInputFIO.hasBackground  = false
	scene.fieldInputFIO.Font = Font
	scene.fieldInputFIO:resizeFontToFitHeight()
	table.insert(frontObject,scene.fieldInputFIO)

	scene.textNameCompany = display.newText({
		parent = frontObject,
	    text = "ФИО:",     
	    x = CenterX*0.9,
	    y = CenterY*0.4, 
	    width = Width*0.5,
	    font = native.systemFont,   
	    fontSize = 40*ScaleFont,
	    align = "left"  -- Alignment parameter
	})
	scene.textNameCompany:setFillColor(0,0,0)
	scene.textNameCompany.align = "left"

	scene.fieldInputCompanyBack= display.newImageRect(frontObject,"Images/rectRounded1.png",Width*0.6,Height * 0.05)
	scene.fieldInputCompanyBack.x = CenterX
	scene.fieldInputCompanyBack.y = CenterY*0.7

	scene.fieldInputCompany = native.newTextField( CenterX, CenterY*0.7, Width*0.55, Height * 0.04 )
	scene.fieldInputCompany.hasBackground  = false
	scene.fieldInputCompany.Font = Font
	scene.fieldInputCompany:resizeFontToFitHeight()
	table.insert(frontObject,scene.fieldInputCompany)

	scene.textCompany = display.newText({
		parent = frontObject,
	    text = "Название компании:",     
	    x = CenterX*0.9,
	    y = CenterY*0.6, 
	    width = Width*0.5,
	    font = native.systemFont,   
	    fontSize = 40*ScaleFont,
	    align = "left"  -- Alignment parameter
	})
	scene.textCompany:setFillColor(0,0,0)
	scene.textCompany.align = "left"


	scene.fieldInputMailBack= display.newImageRect(frontObject,"Images/rectRounded1.png",Width*0.6,Height * 0.05)
	scene.fieldInputMailBack.x = CenterX
	scene.fieldInputMailBack.y = CenterY*0.9

	scene.fieldInputMail = native.newTextField( CenterX, CenterY*0.9, Width*0.55, Height * 0.04 )
	scene.fieldInputMail.hasBackground  = false
	scene.fieldInputMail.Font = Font
	scene.fieldInputMail:resizeFontToFitHeight()
	table.insert(frontObject,scene.fieldInputMail)

	scene.textMail = display.newText({
		parent = frontObject,
	    text = "Электронная почта:",     
	    x = CenterX*0.9,
	    y = CenterY*0.8, 
	    width = Width*0.5,
	    font = native.systemFont,   
	    fontSize = 40*ScaleFont,
	    align = "left"  -- Alignment parameter
	})
	scene.textMail:setFillColor(0,0,0)
	scene.textMail.align = "left"

	scene.fieldInputPhoneBack= display.newImageRect(frontObject,"Images/rectRounded1.png",Width*0.6,Height * 0.05)
	scene.fieldInputPhoneBack.x = CenterX
	scene.fieldInputPhoneBack.y = CenterY*1.1

	scene.fieldInputPhone = native.newTextField( CenterX, CenterY*1.1, Width*0.55, Height * 0.04 )
	scene.fieldInputPhone.hasBackground  = false
	scene.fieldInputPhone.Font = Font
	scene.fieldInputPhone:resizeFontToFitHeight()
	table.insert(frontObject,scene.fieldInputPhone)

	scene.textPhone = display.newText({
		parent = frontObject,
	    text = "Номер телефона:",     
	    x = CenterX*0.9,
	    y = CenterY,
	    width = Width*0.5,
	    font = native.systemFont,   
	    fontSize = 40*ScaleFont,
	    align = "left"  -- Alignment parameter
	})
	scene.textPhone:setFillColor(0,0,0)
	scene.textPhone.align = "left"

	scene.buttonSendForm = widget.newButton(
	    {
	        onEvent = function (event)
	        	if ( "ended" == event.phase ) then
	       			local fullname = scene.fieldInputFIO.text
	       			local phone = scene.fieldInputPhone.text
	       			local mail = scene.fieldInputMail.text
	       			local corporation = scene.fieldInputCompany.text
						 
					local headers = {}
						  
					headers["Content-Type"] = "application/json"
						  
					local params = {}
					params.headers = headers
					params.body = ("{\"fullname\":\"%s\",\"phone'\":\"%s\",\"email\":\"%s\",\"corporation\":\"%s\"}"):format(fullname,phone,mail,corporation)
					print("body" .. params.body)

					network.request( "http://192.168.43.246:8081/entity/add", "POST", function(event)
						if ( event.isError ) then
						    print( "Network error: ", event.response )
						else
						    print ( "RESPONSE: " .. event.response )
						end
					end, params )
				end
				scene.buttonSendForm:setFillColor(1,1,1)
				scene.textSendForm:setFillColor(0,0,0)
				scene.textSendForm.text = "Заявка успешно отправлена. С Вами свяжутся позже."
		    end,
	        emboss = false,
	        shape = "roundedRect",
	        width = Width*0.6,
	        height = Height * 0.05,
	        cornerRadius = 40,
	        fontSize = 40*ScaleFont,
	        fillColor = {default = {36/255,122/255,191/255,1}, over = {36/255,122/255,191/255,0.5}}
	    }
	)
	scene.buttonSendForm.x = display.contentCenterX
	scene.buttonSendForm.y = display.contentCenterY*1.8
	frontObject:insert(scene.buttonSendForm)

	scene.textSendForm = display.newText({
		parent = frontObject,
	    text = "Отправить",     
	    x = display.contentCenterX,
	    y = display.contentCenterY*1.83, 
	    width = Width*0.6,
	    height = Height * 0.05,
	    font = native.systemFont,   
	    fontSize = 46 * ScaleFont,
	    align = "center"
	})
	scene.textSendForm:setFillColor(1,1,1)
	scene.textSendForm.align = "left"
	

	local function onSwitchPress( event )
    	local switch = event.target
   		print( "Switch with ID '"..switch.id.."' is on: "..tostring(switch.isOn) )
	end
 
 	scene.textAccept = display.newText({
		parent = frontObject,
	    text = "Я согласен на обработку персональных данных",     
	    x = display.contentCenterX,
	    y = Height * 0.7, 
	    width = Width*0.6,
	    height = Height * 0.05,
	    font = native.systemFont,   
	    fontSize = 40 * ScaleFont,
	    align = "center"
	})
	scene.textAccept:setFillColor(36/255,122/255,191/255,1)
	scene.textAccept.align = "left"

	scene.checkboxButton = widget.newSwitch(
	    {
	        x = CenterX*0.5,
	        y = Height*0.695,
	        width = Width*0.05,
	        height = Width *0.05,
	        style = "checkbox",
	        id = "Checkbox",
	        onPress = onSwitchPress
	    }
	)
end

function scene:create(event)
	local sceneGroup = self.view
	table.insert(sceneGroup,backObject)
	table.insert(sceneGroup,frontObject)
	scene.background = display.newRect( backObject, CenterX, CenterY, Width, Height )
	--showAuth()
	showAuthLegalEntity()
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