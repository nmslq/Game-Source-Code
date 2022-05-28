dodge = false
max.health = 100
health = 100
dodgeMath = 0
dodge.time = 0.046312
difficulty = 'normal'
complete = false
shaders.camera()
FlxVideo()
moster.health = 50
debug = false
timer = 0
intro = 0
damage = 5

function timerUpdate()
   timer = timer + 1
end

function controlsInput()
   if getControlsInput == 'B' then
     setRoomInSubState('pause')
   elseif getControlsInput == 'S' then
      shoot()
   elseif getControlsInput == 'C' then
      player.moveSpeed = 10
    end
end

function onCreate()
   player = create.animatedSprite(player.x,player.y,'player')
   player.set.camera('CameraGame')
   add.animation.loop('player','idle','idle')
   add.animation('player','left','left')
   add.animation('player','right','right')
   add.animation('player','right','up')
   add.animation('player','dodge','dodge')
   add.animation('player','shoot','shoot')
   add.animation('player','jump','jump')
   complete.itemCreate(0,0,'complete')
   getLevelCompleteData('XY')
   gameLevelGetDataComplete()
end

function move()
   player.moveSpeed = 5
   if getControlsInput == 'left' then
     player.moveTo(playerX - player.moveSpeed,playerY)
     play.animate('player','left')
     shaders.move.camera(player.x,player.y)
   elseif getControlsInput == 'right' then
     player.moveTo(playerX + player.moveSpeed,playerY)
     play.animate('player','right')
     shaders.move.camera(player.x,player.y)
   elseif getControlsInput == 'up' then
     player.moveTo(playerX,playerY + 5)
     play.animate('player','jump')
     shaders.move.camera(player.x,player.y)
   elseif noMove then
     play.animation.loop('player','idle')
   end
end

function onUpdate()
   shaders.Update()
   if bullet.isHave then
      if bulletColorVar == nil then
        bullet.rotation(bullet.rotation + 1)
      end
      if bulletColorVar == 'red' then
        redbullet.rotation(redbullet.rotation + 1)
      end
   end
   if playerNear.complete then
     Complete()
     complete = true
   end
   if playerHit.saw then
     dead()
   end
   if getCurAnim.finished == 'intro' then
     intro.removeSprite()
   end
end

function saw(x,y)
   x = getLuaCodeX()
   Y = getLuaCodeY()
   saw = create.animatedSprite(x,y,'stages/saw')
   saw.setScrollFactor(1,1)
   add.animation.loop('saw','saw','saw')
   play.animation.loop('saw','saw')
   saw.set.camera('CameraGame')
end

function debug()
   if debug == false and FlxG.inputKeyboard 'D' == then
     debug = true
     debug = create.text(-1000, -1000, 'DEBUG')
     setObjectFont('debug', 'vcr')
     setObjectColor('debug', 'FlxG.Red["255,0,0"]')
     debug.set.camera('CameraHud')
     health = max.health
   end
   if debug == true and FlxG.inputKeyboard 'D' == then
      debug = false
      debug.removeText()
   end
end

function complete()
   if complete == true then
     getCompleteEndDataDo()
     getEndDataDo()
     startGetComplateEndDataDo()
     complete = false
   end
end

function blackScreen()
   black = create.sprite(0, -1000, nil)
   black.setObjectScale(2,2)
   black.set.camera('CameraGame')
   black.y = black.y - 10
end

function addDamage()
   killMosterMath.Update()
   if killMoster++ then
     damage = damage + 0.3
   elseif killMoster== in 0.1min then
     damage = damage - 0.5
   elseif damage > 25 then
     damage = 25
   end
end

function bullet()
   bullet = create.animatedSprite(bullet.x, bullet.y, 'bullet')
   add.animation.loop('bullet','bullet','bullet')
   bullet.setColorVar(nil)
   bullet.set.camera('CameraGame')
   play.animate.loop('bullet','bullet')
   redbullet = create.redbullet.animatedSprite(redbullet.x, redbullet.y, 'redbullet')
   add.animation.loop('redbullet','redbullet','redbullet')
   redbullet.setColorVar('red')
   bullet.set.camera('CameraGame')
   play.animate.loop('redbullet','redbullet')
   if bulletHit.player then
     hit()
   end
end

function moster()
   moster = create.animatedSprite(moster.x, moster.y, 'moster')
   add.animtion.loop('moster','idle','idle')
   add.animation('moster','left','left')
   add.animation('moster','right','right')
   moster.set.camera('CameraGame')
   if mosterHit.player then
     hit()
   end
   if mosterHit.shbu then
     hit(moster)
   end
end

function intro()
   intro.mathRandom(0, 4)
   intro = create.animatedSprite(0, 0, 'ready')
   add.animtion('intro', 'intro','Ready? WALLOP!')
   playSound('intro/'intro)
end

function knock()
   knock = create.animatedSprite(0, 0, 'konck')
   add.animtion('knock', 'knock','A KNOCKOUT!')
   playSound('intro/knock')
end

function mosterMove()
   moster.moveSpeed = 5
   mosterMove = idle
   getPlayerX = setMosterMove($anim$)
   getPlayerY = setMosterMove($anim$)
   if mosterMove == 'left' then
     moster.moveTo(mosterX - moster.moveSpeed,playerY)
     play.animate('moster','left')
   elseif mosterMove == 'right' then
     moster.moveTo(mosterX + moster.moveSpeed,mosterY)
     play.animate('moster','right')
   elseif mosterMove == 'idle' then then
     play.animation.loop('moster','idle')
   end
end

function dodge()
   dodgeMath = getDodgeLevelMath()
   if dodgeMath = nil then
     dodgeMath = 0
   end
   if dodge == true and dodgeMath > 0 and FlxG.inputKeyboard 'space' == then
     play.animation('player','dodge')
     dodge.time = dodge.time - 0.001
   end
   if dodge.time == 0 then
     dodge = false
     dodge.time = 0.046312
   end
end

function difficulty()
   if difficulty == 'easy' then
     max.health = 250
   end
   if difficulty == 'normal' then
     max.health = 150
   end
   if difficulty == 'hard' then
     max.health = 90
   end
   if difficulty == 'hell' then
     max.health = 30
   end
   if difficulty == 'nightmare' then
     max.health = 1
   end
end

function shoot()
   timerUpdate()
   play.animation('player','shoot')
   shbu = create.sprite(player.getGunX,player.getGunY,'shotb')
   shbu.set.camera('CameraGame')
   play.sound('shoot')
   shbu.x = shbu.x + 3
   if shbuHit.moster then
     moster.kill()
   end
   if timer >= 4 then
     play.animate.loop('player','idle')
   end
   if timer >= 30 then
     shbu.removeSprite()
   end
end

function hit(moster)
   moster.health = moster.health - damage
end

function hit()
   if bulletHitColor = nil then
     health = health - 15
   end
   if bulletHitColor = red then
     health = 0
   end
   if no.hitBullet then
     health = health -= 0
   end
end

function dead()
   if health == 0 then
     setRoom('die')
   end
end
