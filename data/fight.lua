dodge = false
max.health = 100
health = 100
timer.load()

function onCreate()
   player = create.player.sprite(player.absx, player.abxy, player, 30, 30)
   add.animate(player,idle)
   add.animate(player,left)
   add.animate(player,right)
   add.animate(player,up)
   add.animate(player,dodge)
   add.animate(player,shoot)
end

function onUpdate()
    timer.Update()
    if timer % 6 == 0 then
       if bullet.isative then
          if bullet.color == nil then
            play.animate(bullet,bullet)
          end
          if bullet.color == red then
            play.animate(redbullet,redbullet)
          end
      end
  end
end

function move()
   if left.key.move.ch(5,0)
   play.animate(player,left)
   if right.key.move.ch(0,5)
   play.animate(player,right)
   if nomove then
   play.animate.loop(player,idle)
end

function bullet()
   bullet = create.bullet.sprite(bullet.x, bullet.y, bullet, 30, 30)
   add.animate(bullet,bullet)
   bullet.color.set(nil)
   redbullet = create.redbullet.sprite(redbullet.x, redbullet.y, redbullet, 30, 30)
   add.animate(redbullet,redbullet)
   bullet.color.set(red)
   if bullet.r = player
     hit()
   end
end

function dodge()
   if space.dodge = true
   if dodge = true
     play.animate(player,dodge)
     no.hit()
     dodge = false
   end
end

function shoot()
   play.sound(shoot)
   play.animate(player,shoot)
   summon.shbu(shotb,player.gun.x,player.gun.y)
   shbu.x = shbu.x + 3
   if shbu.hit moster or bullet then
     moster.kill()
   end
   if timer >= 4 then
   play.animate(player,idle)
   end
   if timer >= 30 then
   shbu.romove()
   end
end

function hit()
   if hit.color = nil then
     health - 15
   end
   if hit.color = red then
     health -= 0
   end
end

function dead()
   if health = 0 then
     setRoom(die)
   end
end