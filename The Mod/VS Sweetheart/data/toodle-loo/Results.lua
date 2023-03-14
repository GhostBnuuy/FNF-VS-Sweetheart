local results = false
function onCreate()
	makeLuaText('yoooo', 'BFs party was victorious!', getTextWidth('scoreTxt'), 400, 5)
    setObjectCamera('yoooo', 'other')
    setTextSize('yoooo', 35)
    setTextFont('yoooo', 'omori_font.ttf')
    setTextAlignment('yoooo', 'left')
    addLuaText('yoooo')
    setProperty('yoooo.alpha', 0)

    makeLuaText('scorebs', 'Score: scorelol', getTextWidth('scoreTxt'), 400, 40)
    setObjectCamera('scorebs', 'other')
    setTextSize('scorebs', 35)
    setTextFont('scorebs', 'omori_font.ttf')
    setTextAlignment('scorebs', 'left')
    addLuaText('scorebs')
    setProperty('scorebs.alpha', 0)
	
	makeLuaText('enterlol', 'Press ENTER to continue', getTextWidth('scoreTxt'), 400, 75)
    setObjectCamera('enterlol', 'other')
	setTextSize('enterlol', 35)
    setTextFont('enterlol', 'omori_font.ttf')
    setTextAlignment('enterlol', 'left')
    addLuaText('enterlol')
    setProperty('enterlol.alpha', 0)
end

function onUpdate(elapsed)
    if results then
        if keyJustPressed('accept') then
            endSong()
        end
    end
end

function onUpdatePost(elapsed)
    setTextString('scorebs', 'Score: '.. getProperty('songScore') .. ' | Misses:'.. getProperty('songMisses') .. ' | Rating: '.. math.floor((getProperty('ratingPercent') * 100) * 10) / 10 .. '%')
end

function onEndSong()
	removeLuaSprite('happybackground')
    setProperty('background2electricboogaloo.visible', true)
	
    if not results then
        --hide the hud LOL
        for i=0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
        end
        setProperty('camHUD.visible', false)

        playMusic('ending', 1)
        removeLuaText('sweetheartText1')
        
        playAnim('boyfriend', 'win', false)
        playAnim('gf', 'Victory', false)
        playAnim('dad', 'dead', false)
        runTimer('firstText', 1)
        runTimer('secondText', 2)
        runTimer('thirdText', 3)

        results = true
    return Function_Stop
    end
    return Function_Continue
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'firstText' then
        doTweenAlpha('jinxthecat', 'yoooo', 1, 0.5, 'linear')
    elseif tag == 'secondText' then
        doTweenAlpha('himynameisbigboobs', 'scorebs', 1, 0.5, 'linear')
	elseif tag == 'thirdText' then
		doTweenAlpha('or is it actually maxwell', 'enterlol', 1, 0.5, 'linear')
    end
end