dodge = false
health = 100

function onCreate()
   player = create.player.sprite(player.absx, player.abxy, player, 30, 30)
   add.animate(ch,idle)
   add.animate(ch,left)
   add.animate(ch,right)
   add.animate(ch,up)
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
   redbullet = create.redbullet.sprite(redbullet.x, redbullet.y, redbullet, 30, 30)
   add.animate(redbullet,redbullet)
   if bullet.r = player
     hit()
   end
end

function dodge()
   if space.dodge = true
   if dodge = true
     play.animate(player.dodge)
     no.hit()
     dodge = false
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
     setRoom(menu)
   end
end