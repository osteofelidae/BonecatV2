-- HELPER FUNCTION DEFINITIONS

-- Function to draw a button
function button(buttonXPosition, buttonYPosition, buttonWidth, buttonHeight, buttonText, buttonColor, textColor, textFont, buttonAction)

	-- Draw rectangle
	love.graphics.setColor(buttonColor)
	love.graphics.rectangle("fill", buttonXPosition, buttonYPosition, buttonWidth, buttonHeight)

	-- Draw text
	love.graphics.setColor(textColor)
	love.graphics.print(buttonText, textFont, buttonXPosition, buttonYPosition, 0, 1, 1, -5, -5)

	-- Check for clicks
	local leftClicked = love.mouse.isDown(1)
	local mouseX, mouseY = love.mouse.getPosition()

	if (leftClicked) and (buttonXPosition < mouseX) and (mouseX < buttonXPosition + buttonWidth) and (buttonYPosition < mouseY) and (mouseY < buttonXPosition + buttonHeight) then

		-- Perform button function
		buttonAction()

	end

end

-- Function to draw a horizontal menu bar
function menuBar(yPosition, height, color)

	-- Draw rectangle
	love.graphics.setColor(color)
	love.graphics.rectangle("fill", 0, yPosition, love.graphics.getWidth(), height)

end

-- Function to turn hex into rgb table
function toRGB(hexString)

	-- Local variable to do surgery on
	local workingHex = hexString

	-- If first character is hashtag, remove it
	if string.sub(workingHex, 1, 1) then

		-- Set working string to everythign besides its first letter
		workingHex = string.sub(workingHex, 2, #workingHex)

	end

	-- Split into RGB strings
	local R = string.sub(workingHex, 1, 2)
	local G = string.sub(workingHex, 3, 4)
	local B = string.sub(workingHex, 5, 6)

	-- Return converted hex to int, in table
	return {tonumber(R, 16)/255, tonumber(G, 16)/255, tonumber(B, 16)/255, 1}

end