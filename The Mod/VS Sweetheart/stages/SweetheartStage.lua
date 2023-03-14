function onCreate()
    --BG
    makeLuaSprite('bruh', '', 0, 0)
    makeGraphic('bruh', 1280, 720, '000000')
    setObjectCamera('bruh', 'camHud')
    addLuaSprite('bruh', true)
	
	
	makeLuaSprite('gradient', 'background/gradient', 0, 0)
	scaleObject('gradient', 1.25, 1.25)
	setObjectCamera('gradient', 'camHud')
	addLuaSprite('gradient', false)
	setProperty('gradient.alpha', 0.6)
	screenCenter('gradient')

	makeLuaSprite('background', 'background/sweetheartBG', -450, -70);
	scaleObject('background', 1.25, 1.25);
	addLuaSprite('background', false);
    
    makeLuaSprite('happybackground', 'background/sweetheartBGHappy', -450, -70);
	scaleObject('happybackground', 1.25, 1.25);
	addLuaSprite('happybackground', false);
    
    makeLuaSprite('background2electricboogaloo', 'background/sweetheartBGDesat', -450, -70);
	scaleObject('background2electricboogaloo', 1.25, 1.25);
	addLuaSprite('background2electricboogaloo', false);

    --UI
    makeLuaSprite('Outline', '', 0, -180)
    makeGraphic('Outline', 610, 260, 'ffffff')
    setObjectCamera('Outline', 'game')
    addLuaSprite('Outline', true)

    makeLuaSprite('Box', '', 5, -175)
    makeGraphic('Box', 600, 250, '000000')
    setObjectCamera('Box', 'game')
    addLuaSprite('Box', true)

    makeLuaText('BfGf', 'What will BF and GF do?', getTextWidth('scoreTxt'), 400, 5)
    setTextSize('BfGf', 35)
    setTextFont('BfGf', 'omori_font.ttf')
    addLuaText('BfGf')
    
    makeLuaText('sweetheartText1', 'SWEETHEART became HAPPY', getTextWidth('scoreTxt'), 400, 5)
    setTextSize('sweetheartText1', 35)
    setTextFont('sweetheartText1', 'omori_font.ttf')
    addLuaText('sweetheartText1')
    
end

function onCreatePost()
    setProperty('boyfriend.x', -400)
    setProperty('boyfriend.y', 280)
    setProperty('gf.x', 660)
    setProperty('gf.y', 280)
    setPropertyFromClass('GameOverSubstate', 'characterName', 'BFDead')

    for i=0,3 do
		setPropertyFromGroup('strumLineNotes', i, 'x', -500)
	end
    
    setPropertyFromGroup('strumLineNotes', 4, 'x', 412)
    setPropertyFromGroup('strumLineNotes', 5, 'x', 524)
    setPropertyFromGroup('strumLineNotes', 6, 'x', 636)
    setPropertyFromGroup('strumLineNotes', 7, 'x', 748)
	
    setProperty('boyfriend.visible', false)
    setProperty('gf.visible', false)
    setProperty('Box.y', -500)
    setProperty('Outline.y', -505)
    setProperty('BfGf.alpha', 0)
    setProperty('sweetheartText1.alpha', 0)
    setProperty('background.visible', false)
    setProperty('happybackground.visible', false)
    setProperty('background2electricboogaloo.visible', false)
end

function onUpdate()
    cameraSetTarget('dad')
end

function onGameOver()
    cameraSetTarget('boyfriend')
	return Function_Continue;
end