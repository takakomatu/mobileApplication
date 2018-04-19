-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require( "composer" )
 
local scene = composer.newScene()
 
local widget = require ("widget")



-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function onEventListener(event)
	
	composer.gotoScene("scene2")
end

function onEventListener2(event)
	
	composer.gotoScene("scene1")
end
function scene:create( event )
 
    local sceneGroup = self.view
   
 
end
 
  -- Code here runs when the scene is first created but has not yet appeared on screen
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
 
 
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 --Button Goes to Scene 2
local button = widget.newButton({

width=144,
height=144,
labelColor={default={1.0,1.0,1.0,1.0},},
fontSize=50,
onEvent=onEventListener

})
 
 button.x=380
 button.y=400
 
 sceneGroup:insert(button)
 
 
  --Button Goes to Scene 1
 local button = widget.newButton({

width=144,
height=144,
defaultFile="Icon-72@2x.png",
label = "go to the menu",
labelColor={default={1.0,1.0,1.0,1.0},},
fontSize=50,
onEvent=onEventListener2

})
 
 button.x=380
 button.y=1200
 
 sceneGroup:insert(button)
 
 -- Put Scene Text On Screen

local myText = display.newText( "Saved password", 0, 0, native.systemFont, 16 )
myText:setFillColor( 1, 1, 1 )
myText.anchorX = 0
myText.x = 220
myText.y = 50
myText.size=45
  
 sceneGroup:insert (myText)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene