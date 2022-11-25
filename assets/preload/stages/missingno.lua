function onCreate()  
	consistentPositionX = -670
    consistentPositionY = -240

    makeAnimatedLuaSprite('BG_Assets3', 'stages/missingno/images/noshadow', consistentPositionX + 30, consistentPositionY - 10);
    addAnimationByPrefix('BG_Assets3', 'BG_Assets3', 'Bg Sky', 24, true);  
    objectPlayAnimation('BG_Assets3', 'BG_Assets3', true)
    scaleObject('BG_Assets3', 6, 6)  
    setScrollFactor('BG_Assets3',0.3,0.3)
    addLuaSprite('BG_Assets3', false);

    makeAnimatedLuaSprite('BG_Assets', 'stages/missingno/images/noshadow', consistentPositionX, consistentPositionY);
    addAnimationByPrefix('BG_Assets', 'BG_Assets', 'Bg Ocean', 24, true);  
    objectPlayAnimation('BG_Assets', 'BG_Assets', true)
    scaleObject('BG_Assets', 6, 6)  
    addLuaSprite('BG_Assets', false);
    setScrollFactor('BG_Assets',0.4,0.4)


    makeAnimatedLuaSprite('BG_Assets2', 'stages/missingno/images/noshadow', consistentPositionX, consistentPositionY + 10);
    addAnimationByPrefix('BG_Assets2', 'BG_Assets2', 'Bg Wave', 24, true);  
    objectPlayAnimation('BG_Assets2', 'BG_Assets2', true)
    scaleObject('BG_Assets2', 6, 6)  
    addLuaSprite('BG_Assets2', false);

    makeAnimatedLuaSprite('ground', 'stages/missingno/images/ground', consistentPositionX, consistentPositionY + 10);
    addAnimationByPrefix('ground', 'BG_Assets2', 'ground', 24, true);  
    objectPlayAnimation('ground', 'BG_Assets2', true)
    scaleObject('ground', 6, 6)  
    addLuaSprite('ground', false);
    setProperty('ground.visible',false)

setProperty('BG_Assets3.antialiasing', false)
setProperty('BG_Assets.antialiasing', false)
setProperty('BG_Assets2.antialiasing', false)
  setProperty('ground.antialiasing', false)
  setProperty('skipCountdown',true)

end
local distort = 0
function onCreatePost()
    setProperty('gf.visible',false)
    setProperty('iconP2.alpha',0)
    setProperty('dad.alpha',0)
    setProperty('camHUD.alpha',0)
 
end
function onBeatHit()
    if curBeat % 4 == 0 and not (getProperty("dad.animation.curAnim.name"):sub(1,4) == "sing" ) then
        triggerEvent("Play Animation",'idle-alt','dad')
    end
end
