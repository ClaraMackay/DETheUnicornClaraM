-----------------------------------------------------------------------------------------
--
-- splash_screen.lua
-- Created by: Clara Mackay
-- Date: April 25, 2018
-- Description: This is the splash screen of the game. It displays the 
-- company logo that moves across the screen 
-----------------------------------------------------------------------------------------
-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- change the background colour
display.setDefault ("background", 164/255, 195/255, 231/255)
-----------------------------------------------------------------------------------------

-- Use Composer Library
local composer = require( "composer" )

-- Name the Scene
sceneName = "splash_screen"

-----------------------------------------------------------------------------------------

-- Create Scene Object
local scene = composer.newScene( sceneName )

----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------
 
-- The local variables for this scene

local horseSounds = audio.loadSound("Sounds/horse-whinny.mp3")
local horseSoundChannel

-- Rosella local variables
local Rosella
local scrollXSpeedRosella = 10
local scrollYSpeedRosella = 0

-- Rose1 local variables
local Rose1
local scrollXSpeedRose1 = 10
local scrollYSpeedRose1 = 0

-- Rose2 local variables
local Rose2
local scrollXSpeedRose2 = 10
local scrollYSpeedRose2 = 0

-- Rose3 local variables
local Rose3
local scrollXSpeedRose3 = 18
local scrollYSpeedRose3 = 0

-- Rose4 local variables
local Rose4
local scrollXSpeedRose4 = 16
local scrollYSpeedRose4 = 0

-- Rose5 local variables
local Rose5
local scrollXSpeedRose5 = 16
local scrollYSpeedRose5 = 0

-- Rose6 local variables
local Rose6
local scrollXSpeedRose6 = 16
local scrollYSpeedRose6 = 0

-- play the horse sound effect
horseSoundChannel = audio.play(horseSounds)

--------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
--------------------------------------------------------------------------------------------



-- The function that moves the Rosella across the screen
local function moveRosella()
    Rosella.x = Rosella.x + scrollXSpeedRosella
    Rosella.y = Rosella.y + scrollYSpeedRosella
end

-- The function that moves the Rose across the screen
local function moveRose1()
    Rose1.x = Rose1.x + scrollXSpeedRose1
    Rose1.y = Rose1.y + scrollYSpeedRose1
end

local function rotateRose1()
    -- rotates Rose1
    Rose1.rotation = Rose1.rotation + 3 
end

local function moveRose2()
    Rose2.x = Rose2.x + scrollXSpeedRose2
    Rose2.y = Rose2.y + scrollYSpeedRose2
end

local function rotateRose2()
    -- rotates Rose2
    Rose2.rotation = Rose2.rotation + 2.5 
end

local function moveRose3()
    Rose3.x = Rose3.x + scrollXSpeedRose3
    Rose3.y = Rose3.y + scrollYSpeedRose3
end

local function rotateRose3()
    -- rotates Rose3
    Rose3.rotation = Rose3.rotation + 3 
end

local function moveRose4()
    Rose4.x = Rose4.x + scrollXSpeedRose4
    Rose4.y = Rose4.y + scrollYSpeedRose4
end

local function rotateRose4()
    -- rotates Rose4
    Rose4.rotation = Rose4.rotation + -5 
end

local function moveRose5()
    Rose5.x = Rose5.x + scrollXSpeedRose5
    Rose5.y = Rose5.y + scrollYSpeedRose5
end

local function rotateRose5()
    -- rotates Rose5
    Rose5.rotation = Rose5.rotation + 7 
end

local function moveRose6()
    Rose6.x = Rose6.x + scrollXSpeedRose4
    Rose6.y = Rose6.y + scrollYSpeedRose4
end

local function rotateRose6()
    -- rotates Rose6
    Rose6.rotation = Rose6.rotation + 5
end
-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -- set the background to be black
    display.setDefault("background", 164/255, 195/255, 231/255)

    -- Insert the Rosella image
    Rosella = display.newImageRect("Images/CompanyLogoRosella.png", 1001, 1001)

    -- Insert the Rose1 image
    Rose1 = display.newImageRect("Images/Rose.png", 300, 300)

        -- Insert the Rose1 image
    Rose2 = display.newImageRect("Images/Rose.png", 300, 300)

        -- Insert the Rose1 image
    Rose3 = display.newImageRect("Images/Rose.png", 300, 300)

        -- Insert the Rose1 image
    Rose4 = display.newImageRect("Images/Rose.png", 300, 300)

    Rose5 = display.newImageRect("Images/Rose.png", 300, 300)

        -- Insert the Rose1 image
    Rose6 = display.newImageRect("Images/Rose.png", 300, 300)

    -- set the initial x and y position of the Rosella
    Rosella.x = 0
    Rosella.y = display.contentHeight*6/10

 -- set the initial x and y position of the Rose
    Rose1.x = 0
    Rose1.y = display.contentHeight*1/10

 -- set the initial x and y position of the Rose
    Rose2.x = 0
    Rose2.y = display.contentHeight*2/10

 -- set the initial x and y position of the Rose
    Rose3.x = 0
    Rose3.y = display.contentHeight*3/10

 -- set the initial x and y position of the Rose
    Rose4.x = 0
    Rose4.y = display.contentHeight*7/10

     -- set the initial x and y position of the Rose
    Rose5.x = 0
    Rose5.y = display.contentHeight*8/10

     -- set the initial x and y position of the Rose
    Rose6.x = 0
    Rose6.y = display.contentHeight*9/10

    -- Insert objects into the scene group in order to ONLY be associated with this scene
    sceneGroup:insert( Rosella )

    -- Insert objects into the scene group in order to ONLY be associated with this scene
    sceneGroup:insert( Rose1 )

     -- Insert objects into the scene group in order to ONLY be associated with this scene
    sceneGroup:insert( Rose2 )

     -- Insert objects into the scene group in order to ONLY be associated with this scene
    sceneGroup:insert( Rose3 )

    -- Insert objects into the scene group in order to ONLY be associated with this scene
    sceneGroup:insert( Rose4 )

         -- Insert objects into the scene group in order to ONLY be associated with this scene
    sceneGroup:insert( Rose5 )

     -- Insert objects into the scene group in order to ONLY be associated with this scene
    sceneGroup:insert( Rose6 )

end -- function scene:create( event )
--------------------------------------------------------------------------------------------

-- The function called when the scene is issued to appear on screen
function scene:show( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    local phase = event.phase

    -----------------------------------------------------------------------------------------

    -- Called when the scene is still off screen (but is about to come on screen).
    if ( phase == "will" ) then
       
    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then
        -- start the splash screen music
       audio.play(HorseSound)

        -- Call the moveRosella function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", moveRosella)

        -- Call the moveRose1 function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", moveRose1)       
        
        -- Call the rotateRose1 function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", rotateRose1)

        -- Call the moveRose1 function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", moveRose2)       
        
        -- Call the rotateRose1 function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", rotateRose2)    

        -- Call the moveRose1 function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", moveRose3)       
        
        -- Call the rotateRose1 function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", rotateRose3)

        -- Call the moveRose1 function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", moveRose4)       
        
        -- Call the rotateRose1 function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", rotateRose4)

                -- Call the moveRose1 function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", moveRose5)       
        
        -- Call the rotateRose1 function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", rotateRose5)

                -- Call the moveRose1 function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", moveRose6)       
        
        -- Call the rotateRose1 function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", rotateRose6)
    end

end --function scene:show( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to leave the screen
function scene:hide( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    local phase = event.phase

    -----------------------------------------------------------------------------------------

    -- Called when the scene is on screen (but is about to go off screen).
    -- Insert code here to "pause" the scene.
    -- Example: stop timers, stop animation, stop audio, etc.
    if ( phase == "will" ) then  

    -----------------------------------------------------------------------------------------

    -- Called immediately after scene goes off screen.
    elseif ( phase == "did" ) then
        
        -- stop the jungle sounds channel for this screen
        audio.stop( )
    end

end --function scene:hide( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to be destroyed
function scene:destroy( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------


    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.
end -- function scene:destroy( event )

-----------------------------------------------------------------------------------------
-- EVENT LISTENERS
-----------------------------------------------------------------------------------------

-- Adding Event Listeners
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene


