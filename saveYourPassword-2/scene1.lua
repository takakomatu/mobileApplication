-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local composer = require( "composer" )
 
local scene = composer.newScene()
 
local widget = require ("widget")



local sheetOptions =
{
	--Width and Height should be based on the W and H of each CELL of your sprite sheet
    width = 333,
    height = 333,
    --this should indicate how many cells total that you have on the sheet
    numFrames = 9
}

-- Call the png file for the sprite sheet
local sheet_runningHorse = graphics.newImageSheet( "spritesheet.png", sheetOptions )


    -- sequences table
local sequences_runningHorse = {
    -- consecutive frames sequence
    {
        name = "normalRun",
        --what frame do you start on
        start = 1,
        --how many cells are in the animation
        count = 9,
        --time for each frame
        time=1000,
       -- O, as set currently is an infinite loope
        loopCount = 0,
        loopDirection = "forward"
    }
}
-- display the sprite
local runningHorse = display.newSprite( sheet_runningHorse, sequences_runningHorse )

--position the sprite
runningHorse.x = display.contentCenterX
runningHorse.y = display.contentCenterY+300
 -- play the new sequence
 runningHorse:play() 



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
 
 
 --button loads scene 2
local button = widget.newButton({

width=144,
height=144,
label = "See saved password",
labelColor={default={0.0,1.0,1.0,1.0},},
fontSize=50,
onEvent=onEventListener

})
 
 button.x=380
 button.y=100
 
 sceneGroup:insert(button)
 
 
  --button loads scene 1
 local button = widget.newButton({

width=144,
height=144,
label = "Register password",
labelColor={default={0.0,1.0,1.0,1.0},},
fontSize=50,
onEvent=onEventListener2
})
 
 button.x=380
 button.y=250
 
 sceneGroup:insert(button)
 
 
 
  local button = widget.newButton({

width=144,
height=144,
label = "Type name of the website",
labelColor={default={0.0,1.0,1.0,1.0},},
fontSize=40,
onEvent=onEventListener2
})
 
 button.x=380
 button.y=340
 
 sceneGroup:insert(button)
 
 
 
  --textListener from here
local function textListener( event )
 
    if ( event.phase == "began" ) then
        -- User begins editing "defaultField"
 
    elseif ( event.phase == "ended" or event.phase == "submitted" ) then
        -- Output resulting text from "defaultField"
        print( event.target.text )
 
    elseif ( event.phase == "editing" ) then
        print( event.newCharacters )
        print( event.oldText )
        print( event.startPosition )
        print( event.text )
    end
end

-- Create text field
defaultField = native.newTextField( 380, 385, 400, 40 )
defaultField:addEventListener( "userInput", textListener )





  local button = widget.newButton({

width=144,
height=144,
label = "Type the user name",
labelColor={default={0.0,1.0,1.0,1.0},},
fontSize=40,
onEvent=onEventListener2
})
 
 button.x=380
 button.y=460
 
 sceneGroup:insert(button)
 
  --textListener from here
local function textListener( event )
 
    if ( event.phase == "began" ) then
        -- User begins editing "defaultField"
 
    elseif ( event.phase == "ended" or event.phase == "submitted" ) then
        -- Output resulting text from "defaultField"
        print( event.target.text )
 
    elseif ( event.phase == "editing" ) then
        print( event.newCharacters )
        print( event.oldText )
        print( event.startPosition )
        print( event.text )
    end
end

-- Create text field
defaultField = native.newTextField( 380, 515, 400, 40 )
defaultField:addEventListener( "userInput", textListener )





  local button = widget.newButton({

width=144,
height=144,
label = "Type password",
labelColor={default={0.0,1.0,1.0,1.0},},
fontSize=40,
onEvent=onEventListener2
})
 
 button.x=380
 button.y=580
 
 sceneGroup:insert(button)
 
  --textListener from here
local function textListener( event )
 
    if ( event.phase == "began" ) then
        -- User begins editing "defaultField"
 
    elseif ( event.phase == "ended" or event.phase == "submitted" ) then
        -- Output resulting text from "defaultField"
        print( event.target.text )
 
    elseif ( event.phase == "editing" ) then
        print( event.newCharacters )
        print( event.oldText )
        print( event.startPosition )
        print( event.text )
    end
end

-- Create text field
defaultField = native.newTextField( 380, 630, 400, 40 )
defaultField:addEventListener( "userInput", textListener )




  local button = widget.newButton({

width=144,
height=144,
label = "Type other info",
labelColor={default={0.0,1.0,1.0,1.0},},
fontSize=40,
onEvent=onEventListener2
})
 
 button.x=380
 button.y=695
 
 sceneGroup:insert(button)
 
  --textListener from here
local function textListener( event )
 
    if ( event.phase == "began" ) then
        -- User begins editing "defaultField"
 
    elseif ( event.phase == "ended" or event.phase == "submitted" ) then
        -- Output resulting text from "defaultField"
        print( event.target.text )
 
    elseif ( event.phase == "editing" ) then
        print( event.newCharacters )
        print( event.oldText )
        print( event.startPosition )
        print( event.text )
    end
end

-- Create text field
defaultField = native.newTextField( 380, 745, 400, 40 )
defaultField:addEventListener( "userInput", textListener )





  --Put text on screen to show scene 1 in text
local myText = display.newText( "SaveYourPassword", 0, 0, native.systemFont, 16 )
myText:setFillColor( 1, 0, 0 )
myText.anchorX = 0
--saveYourPassword.png

myText.x = 0
myText.y = 0
myText.size=50
  
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