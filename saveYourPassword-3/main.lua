-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local background = display.newImageRect( "wallpaper.jpg", 860, 1470 )
background.x = display.contentCenterX
background.y = display.contentCenterY

local composer = require ("composer")

composer.gotoScene ("scene1")

local defaultField
 
 
 
