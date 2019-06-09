

display.setStatusBar( display.HiddenStatusBar )
_G.Width = display.pixelWidth
_G.Height = display.pixelHeight
_G.CenterX = display.contentCenterX
_G.CenterY = display.contentCenterY
_G.Font = native.systemFont
_G.ScaleFont = display.pixelWidth / display.contentWidth

local userClass = require("Classes.User")
_G.User = userClass:new({})
local composer = require("composer")

composer.gotoScene("Scenes.Destination")



