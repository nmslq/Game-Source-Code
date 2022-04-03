dodge = false
max.health = 100
health = 100
dodge.time = 0.046312
difficulty = normal
timer.load()
debug.load()
shaders.camera()

function addControls()
   if input.keyboard 'B' == then
     pause()
   end
end

function onCreate()
   player = create.player.sprite(player.absx,player.absy,player)
   player.set.camera('game')
   add.animate(player,idle)
   add.animate(player,left)
   add.animate(player,right)
   add.animate(player,up)
   add.animate(player,dodge)
   add.animate(player,shoot)
end

function move()
   if left.key.move.player(5,0)
   play.animate(player,left)
   shaders.cam.move(player.x,player.y)
   if right.key.move.player(0,5)
   play.animate(player,right)
   shaders.cam.move(player.x,player.y)
   if nomove then
   play.animate.loop(player,idle)
end

function onUpdate()
   shaders.Update()
   debug.Update()
   if bullet.isative then
      if bullet.color == nil then
        bullet.rotation(bullet.rotation + 1)
      end
      if bullet.color == red then
        redbullet.rotation(redbullet.rotation + 1)
      end
   end
end

function bullet()
   bullet = create.bullet.sprite(bullet.x, bullet.y, bullet)
   add.animate(bullet,bullet)
   bullet.color.set(nil)
   bullet.set.camera('game')
   play.animate.loop(bullet,bullet)
   redbullet = create.redbullet.sprite(redbullet.x, redbullet.y, redbullet)
   add.animate(redbullet,redbullet)
   redbullet.color.set(red)
   bullet.set.camera('game')
   play.animate.loop(redbullet,redbullet)
   if bullet.r == player
     hit()
   end
end

function moster()
   moster.health = 50
   moster = create.moster.sprite(moster.x, moster.y, moster)
   moster.set.camera('game')
   if moster.hit player then
     hit()
   end
   if moster.hit bullet then
     hit()
   end
end

function dodge()
   if space.dodge == true
   if dodge == true
     play.animate(player,dodge)
     dodge.time(time-0.0001)
     if dodge.time == 0 then
       dodge = false
       dodge.time = 0.046312
     end
   end
   end
end

function difficulty()
   if difficulty == easy then
     set.max.health(250)
   end
   if difficulty == normal then
     set.max.health(150)
   end
   if difficulty == hard then
     set.max.health(90)
   end
   if difficulty == hell then
     set.max.health(30)
   end
end

function shoot()
   timer.Update()
   play.animate(player,shoot)
   shbu = create.shbu.sprite(player.getGunX,player.getGunY,shotb)
   shbu.set.camera('game')
   play.sound(shoot)
   shbu.x = shbu.x + 3
   if shbu.hit moster then
     moster.kill()
   end
   if timer >= 4 then
   play.animate.loop(player,idle)
   end
   if timer >= 30 then
   shbu.remove()
   end
end

function hit()
   if hit.color = nil then
     health - 15
   end
   if hit.color = red then
     health -= 0
   end
   if no.hit then
     health - 0
   end
end

function dead()
   if health == 0 then
     setRoom(die)
   end
end
