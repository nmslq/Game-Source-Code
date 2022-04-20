dodge = false
max.health = 100
health = 100
dodge.time = 0.046312
difficulty = normal
complete = false
timer.load()
debug.load()
shaders.camera()
moster.health = 50

function onPress()
   if input.keyboard 'B' or press 'B' == then
     setRoomIn('pause')
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
   complete.itemCreate(0,0,complete)
   getLevelCompleteData(XY)
   gameLevelGetDataComplete()
end

function move()
   if left.key.move.player(5,0)
     play.animate('player','left')
     shaders.move.camera(player.x,player.y)
   elseif right.key.move.player(0,5)
     play.animate('player','right')
     shaders.move.camera(player.x,player.y)
   elseif nomove then
     play.animation.loop('player','idle')
   end
end

function onUpdate()
   shaders.Update()
   debug.Update()
   if bullet.ishave then
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
     set(max.health = 250)
   end
   if difficulty == 'normal' then
     set(max.health = 150)
   end
   if difficulty == 'hard' then
     set(max.health = 90)
   end
   if difficulty == 'hell' then
     set(max.health = 30)
   end
   if difficulty == 'nightmare' then
     set(max.health = 1)
   end
end

function shoot()
   timer.Update()
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
   set(get(moster.health) - 15)
end

function hit()
   if bulletHitColor = nil then
     set(get(health) - 15)
   end
   if bulletHitColor = red then
     set(get(health) = 0)
   end
   if no.hitBullet then
     set(get(health) - 0)
   end
end

function dead()
   if health == 0 then
     setRoom('die')
   end
end
