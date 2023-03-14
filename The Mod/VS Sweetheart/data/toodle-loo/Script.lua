function onCreate()
    makeLuaSprite('white', '', 0, 0)
    makeGraphic('white', 1280, 720, 'FFFFFF')
    setObjectCamera('white', 'other')
    addLuaSprite('white', true)
    setProperty('white.visible', false)
end

function onStepHit()
    if curStep == 4 then
        setProperty('bruh.alpha', 0)
    elseif curStep == 308 or curStep == 324 or curStep == 340 or curStep == 356 or curStep == 372 then
        setProperty('bruh.alpha', 0)
        runTimer('time', 0.01)
    elseif curStep == 372 then
        doTweenAlpha('aaaaaaa', 'CamHUD', 0, 1, 'linear')
    elseif curStep == 387 or curStep == 1684 then
        setProperty('white.visible', true)
        runTimer('whiteFlash', 0.05)
    elseif curStep >= 387 then
        setProperty('gradient.visible', false)
        setProperty('pink.visible', false)
        doTweenY('weee', 'Outline', -155, 1, 'expoOut')
        doTweenY('weeehehehe', 'Box', -150, 1, 'expoOut')
        setProperty('background.visible', true)
        setProperty('boyfriend.visible', true)
        setProperty('gf.visible', true)
        doTweenAlpha('textomggg', 'BfGf', 1, 0.7, 'linear')
        setProperty('scoreTxt.visible', false)
        setProperty('timeBar.visible', false)
        setProperty('timeBarBG.visible', false)
        setProperty('timeTxt.visible', false)
        setProperty('bruh.visible', false)
        setProperty('healthBar.angle', 90)
        setProperty('healthBarBG.angle', 90)
        setProperty('healthBar.x', 960)
        setProperty('healthBarBG.x', 960)
        screenCenter('healthBar', 'y')
        screenCenter('healthBarBG', 'y')
        setProperty('iconP1.visible', false)
        setProperty('iconP2.visible', false)
    end
    if curStep == 660 or curStep == 724 or curStep == 900 or curStep == 1028 or curStep == 1412 or curStep == 1940 or curStep == 2068 then
        setProperty('defaultCamZoom', 0.95)
    elseif curStep == 664 or curStep == 727 or curStep == 964 or curStep == 1092 or curStep == 2004 or curStep == 2132 then
        setProperty('defaultCamZoom', 1)
    elseif curStep == 667 or curStep == 732 then
        setProperty('defaultCamZoom', 1.1)
    elseif curStep == 672 or curStep == 736 or curStep == 1148 or curStep == 1540 or curStep == 2196 then
        setProperty('defaultCamZoom', 0.9)
    elseif curStep >= 1668 and curStep < 1683 then
        setProperty('bruh.visible', true)
    elseif curStep >= 1683 then
        setProperty('background.visible', false)
        setProperty('bruh.visible', false)
        setProperty('happybackground.visible', true)
        removeLuaText('BfGf')
        doTweenAlpha('sheshappy', 'sweetheartText1', 1, 0.7, 'linear')
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'time' then
        doTweenAlpha('ayy', 'bruh', 1, 1, 'linear')
    elseif tag == 'whiteFlash' then
        doTweenAlpha('removewhiteflash', 'white', 0, 0.5, 'linear')
    end
end