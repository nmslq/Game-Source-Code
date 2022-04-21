dodge = false
max.health = 100
health = 100
dodge.time = 0.046312
difficulty = normal
complete = false
shaders.camera()
videoLoader()
moster.health = 50
debug = false
timer = 0

function timerUpdate()
   timer = timer + 1
end

function controlsInput()
   if getControlsInput == 'B' then
     setRoomIn('pause')
   elseif getControlsInput == 'S' then
      shoot()
   elseif getControlsInput == 'C' then
      player.moveSpeed = 10
    end
end

function onCreate()
   player = create.animatedSprite(player.x,player.y,'player')
   player.set.camera('CameraGame')
   add.animation.loop('player','idle')
   add.animation('player','left')
   add.animation('player','right')
   add.animation('player','up')
   add.animation('player','dodge')
   add.animation('player','shoot')
   add.animation('player','jump')
   complete.itemCreate(0,0,complete)
   getLevelCompleteData(XY)
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
   debug.Update()
   if bullet.isHave then
      if bullet.color == nil then
        bullet.rotation(bullet.rotation + 1)
      end
      if bullet.color == 'red' then
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
end

function saw(x,y)
   x = getLuaCodeX()
   Y = getLuaCodeY()
   saw = create.animatedSprite(x,y,'stages/saw')
   saw.setScrollFactor(1,1)
   add.animation.loop('saw','saw')
   play.animation.loop('saw','saw')
   saw.set.camera('CameraGame')
end

function debug()
   if debug == false and input.keyboard 'D' == then
     debug = true
     debug = create.text(-1000, -1000, [color:red]'DEBUG', 'vcr')
     debug.set.camera('hud')
     set(health = max.health)
   end
   if debug == true and input.keyboard 'D' == then
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
   set(get(black.y) = get(black.y) - 10)
end

function bullet()
   bullet = create.animatedSprite(bullet.x, bullet.y, 'bullet')
   add.animation.loop('bullet','bullet')
   bullet.color.set(nil)
   bullet.set.camera('CameraGame')
   play.animate.loop('bullet','bullet')
   redbullet = create.redbullet.animatedSprite(redbullet.x, redbullet.y, 'redbullet')
   add.animation.loop('redbullet','redbullet')
   redbullet.color.set(red)
   bullet.set.camera('CameraGame')
   play.animate.loop('redbullet','redbullet')
   if bulletHit.player then
     hit()
   end
end

function moster()
   moster = create.sprite(moster.x, moster.y, 'moster')
   moster.set.camera('CameraGame')
   if mosterHit.player then
     hit()
   end
   if mosterHit.shbu then
     hit(moster)
   end
end

function dodge()
   if space.dodge == true
   if dodge == true
     play.animation('player','dodge')
     dodge.time(time-0.0001)
     if dodge.time == 0 then
       dodge = false
       dodge.time = 0.046312
     end
   end
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
   shbu = create.shbu.sprite(player.getGunX,player.getGunY,'shotb')
   shbu.set.camera('CameraGame')
   play.sound('shoot')
   set(get(shbu.x) = get(shbu.x) + 3)
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
   moster.health - 15
end

function hit()
   if bulletHitColor = nil then
     health - 15
   end
   if bulletHitColor = red then
     health = 0
   end
   if no.hitBullet then
     health - 0
   end
end

function dead()
   if health == 0 then
     setRoom('die')
   end
end
