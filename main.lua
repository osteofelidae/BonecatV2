-- DEPENDENCIES
require("helperFunctions")
require("graphicsLogicManager")


-- CONSTANT DEFINITIONS

SCROLL_SPEED = 1


-- GLOBALS

-- Scroll levels
currentVertScrollLevel = 0
currentHorScrollLevel = 0



-- ON LOAD

function love.load()

	-- Window setup function from graphicsLogicManager
	windowSetup()

end



-- LOGIC UPDATE

function love.update(deltaTime)


end



-- DISPLAY UPDATE

function love.draw()

	-- UI drawer function from graphicsLogicManager
	drawUi()

end



-- SCROLL WHEEL

function love.wheelmoved(wheelXDistance, wheelYDistance)

	-- Adjust scroll level
	currentVertScrollLevel = currentVertScrollLevel - wheelYDistance * SCROLL_SPEED
	currentHorScrollLevel = currentHorScrollLevel - wheelXDistance * SCROLL_SPEED

	-- Check scroll level bounds
	if (currentVertScrollLevel < 0) then

		-- Set to 0
		currentVertScrollLevel = 0

	end

	if (currentHorScrollLevel > 0) then

		-- Set to 0
		currentHorScrollLevel = 0

	end

end