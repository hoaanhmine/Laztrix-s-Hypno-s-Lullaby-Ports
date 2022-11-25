
function onCreatePost()

    initLuaShader('desaturation')
    initLuaShader('individualGlitches')


    setSpriteShader('BG_Assets','desaturation')
    setSpriteShader('BG_Assets2','desaturation')
    setSpriteShader('BG_Assets3','desaturation')
    setSpriteShader('ground','desaturation')


  setTextString('centerMark',' - ????????? [' .. string.upper(difficultyName) .. '] -')
end
curdes = 0
biner = 100
function onUpdate()
    songPos = getSongPosition()
	local currentBeat = (songPos/1000)*(curBpm/60)
    doTweenY('dadwoo', 'dad', 50 + (math.cos((currentBeat) + 0) * 20), 1)

    if not mustHitSection then
        setProperty('defaultCamZoom', 0.6)
        cameraSetTarget('dad')
    else
        setProperty('defaultCamZoom', 0.8) -- normal is 0.85
    end

if curStep >= 320 and curStep <= 368 then 
    if curdes < 1 then
    curdes = curdes + 0.001
    end
end
end

function onStepHit()
    if curStep == 120 then
        doTweenAlpha('hud','camHUD',1,2,'expoOut')
    end
    if curStep == 373 then
        doTweenAlpha('hud','camHUD',0,2.5,'expoOut')
    end
    if curStep == 376 then
        biner = 1.2
    end
    if curStep == 384 then
        setProperty('dad.alpha',1)
        setProperty('ground.visible',true)
        setProperty('BG_Assets2.visible',false)
        setProperty('iconP2.alpha',1)

    end
    if curStep == 390 then
        setTextString('centerMark',' - ' .. songName .. ' [' .. string.upper(difficultyName) .. '] -')
        biner = 100
        doTweenAlpha('hud','camHUD',1,2.5,'expoOut')
    end
    if curStep == 643 then
        biner = 1.4
    end
    if curStep == 650 then
        biner = 100
    end
    if curStep == 1942 then
        removeSpriteShader('boyfriend')
        biner = 0.5
        setSpriteShader('dad','individualGlitches')
    end
end