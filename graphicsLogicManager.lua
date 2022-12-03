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
QUICK_MENU_Y = TOP_MENU_Y + TOP_MENU_HEIGHT
QUICK_MENU_HEIGHT = 30
QUICK_MENU_COLOR = toRGB("#51557E")

-- Tab bar
TAB_BAR_Y = QUICK_MENU_Y + QUICK_MENU_HEIGHT
TAB_BAR_HEIGHT = 30
TAB_BAR_COLOR = toRGB("#816797")

-- Status bar
STATUS_BAR_Y_OFFSET = 0
STATUS_BAR_HEIGHT = 20
STATUS_BAR_COLOR = toRGB("#1B2430")

-- Line number indicator
LINE_NUMBER_X = 0
LINE_NUMBER_Y_START = TAB_BAR_Y + TAB_BAR_HEIGHT
LINE_NUMBER_WIDTH = 50
LINE_NUMBER_COLOR = toRGB("#D6D5A8")

-- Code body (display area)
CODE_BODY_X = LINE_NUMBER_X + LINE_NUMBER_WIDTH
CODE_BODY_Y_START = LINE_NUMBER_Y_START
CODE_BODY_COLOR = toRGB("#FFFFFF")
CODE_BODY_TEXT_COLOR = toRGB("#000000")
CODE_BODY_LINE_HEIGHT = 10
CODE_BODY_TEXT_FONT = love.graphics.newFont("assets/Courier Prime.ttf", CODE_BODY_LINE_HEIGHT)



-- MAIN UI DRAWING FUNCTION

function drawUi()
	
	-- Background
	setBackground()

	-- Code body
	drawCodeBody()

	-- Line number indicator
	drawLineNumber()

	-- Top menu bar
	drawTopMenu()

	-- Quick menu bar
	drawQuickMenu()

	-- Tab bar
	drawTabBar()

	-- Status bar
	drawStatusBar()

end



-- UI PART FUNCTION DEFINITIONS

-- Window setup function (call in love.load)
function windowSetup()

	love.window.setMode(INITIAL_WINDOW_WIDTH, INITIAL_WINDOW_HEIGHT, {resizable=true})

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

-- Function to draw tab bar
function drawTabBar()

	-- Draw menu bar
	menuBar(TAB_BAR_Y, TAB_BAR_HEIGHT, TAB_BAR_COLOR)

end

-- Function to draw status bar (bottom)
function drawStatusBar()

	-- Draw menu bar
	menuBar((love.graphics.getHeight() - STATUS_BAR_HEIGHT - STATUS_BAR_Y_OFFSET), STATUS_BAR_HEIGHT, STATUS_BAR_COLOR)

end

-- Function to draw line number indicator
function drawLineNumber()

	-- Draw body block
	bodyBlock(LINE_NUMBER_X, LINE_NUMBER_Y_START, (love.graphics.getHeight() - STATUS_BAR_HEIGHT - STATUS_BAR_Y_OFFSET), LINE_NUMBER_WIDTH, LINE_NUMBER_COLOR)

end

-- Function to draw code body
function drawCodeBody()

	-- Draw body block
	bodyBlock(CODE_BODY_X, CODE_BODY_Y_START, (love.graphics.getHeight() - STATUS_BAR_HEIGHT - STATUS_BAR_Y_OFFSET), (love.graphics.getWidth() - LINE_NUMBER_WIDTH), CODE_BODY_COLOR)

	-- Render code text
	renderText(CODE_BODY_X, CODE_BODY_Y_START, currentVertScrollLevel, currentHorScrollLevel, {"line1", "line2", "line3"}, CODE_BODY_TEXT_COLOR, (love.graphics.getHeight() - STATUS_BAR_HEIGHT - STATUS_BAR_Y_OFFSET - TAB_BAR_Y - TAB_BAR_HEIGHT), CODE_BODY_TEXT_FONT, CODE_BODY_LINE_HEIGHT)

end