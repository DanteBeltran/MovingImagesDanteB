-----------------------------------------------------------------------------------------
-- Title: MovingImages
-- Name: Dante B
-- Course: ICS3C
-- This program will display images the move across the screen at different speeds.
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- set scroll speed
scrollSpeed = 3

-- backround image with widht and height
local backroundImage = display.newImageRect("Images/background.png", 2048, 1536)

--character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)
local octopus = display.newImageRect("Images/octopus.png", 200, 200)
local rocketship = display.newImageRect("Images/rocketship.png", 200, 200)

-- load sounds
local backgroundMusic = audio.loadSound("Sounds/Background Music.mp3")

--play sounds
audio.play(backgroundMusic)

-- set the image to be transparent
beetleship.alpha = 0
octopus.alpha = 0
rocketship.alpha = 0

-- set the initial x and y position of the beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3
octopus.x = 0
octopus.y = display.contentHeight/4 * 3
rocketship.x = 1000
rocketship.y = display.contentHeight/8
-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed * 2
	-- change the transparency of the ship every time it moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
	-- add the scroll speed to the x-value of the ship
	octopus.x = octopus.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	octopus.alpha = octopus.alpha + 0.01
	octopus.rotation = octopus.x * 2
		-- add the scroll speed to the x-value of the ship
	rocketship.x = rocketship.x + - scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	rocketship.alpha = rocketship.alpha + 0.01
end



-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)
