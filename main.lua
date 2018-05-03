-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Clara Mackay
-- Date: April 19, 2018
-- Description: This calls the splash screen to load itself.
-----------------------------------------------------------------------------------------

-- Hiding Status Bar
display.setStatusBar(display.HiddenStatusBar)

-----------------------------------------------------------------------------------------

-- Use composer library
local composer = require( "composer" )

-----------------------------------------------------------------------------------------

-- Go to the intro screen
composer.gotoScene( "splash_screen" )