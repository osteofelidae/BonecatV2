-- CONSTANT DEFINITIONS

-- Window
INITIAL_WINDOW_WIDTH = 1200
INITIAL_WINDOW_HEIGHT = 800

-- Background
BACKGROUND_COLOR = toRGB("#FFFFFF")

-- Top menu bar
TOP_MENU_Y = 0
TOP_MENU_HEIGHT = 20
TOP_MENU_COLOR = toRGB("#1B2430")

-- Quick menu bar
QUICK_MENU_Y = TOP_MENU_HEIGHT
QUICK_MENU_HEIGHT = 30
QUICK_MENU_COLOR = toRGB("#51557E")



-- MAIN UI DRAWING FUNCTION

function drawUi()
	
	-- Background
	setBackground()

	-- Top menu bar
	drawTopMenu()

	-- Quick menu bar
	drawQuickMenu()

end



-- UI PART FUNCTION DEFINITIONS

-- Window setup function (call in love.load)
function windowSetup()



end

-- Function to set background
function setBackground()

	-- Set background
	love.graphics.setBackgroundColor(BACKGROUND_COLOR)

end

-- Function to draw top menu bar (file, edit, etc.)
function drawTopMenu()

	-- Draw menu bar
	menuBar(TOP_MENU_Y, TOP_MENU_HEIGHT, TOP_MENU_COLOR)

end

-- Function to draw quick menu bar

function drawQuickMenu()

	-- Draw menu bar
	menuBar(QUICK_MENU_Y, QUICK_MENU_HEIGHT, QUICK_MENU_COLOR)


end