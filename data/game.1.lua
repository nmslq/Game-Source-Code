dodge = false
health = 100
controls.load()

function onCreate()
   ch = create.ch.sprite(player.absx, player.abxy, player, 30, 30)
end

function move()
   if W ch.move(0,-10)
   if S ch.move(0,10)
   if A ch.move(-10,0)
   if D ch.move(10,0)
end

function dodge()
   if space dodge = true
   if dodge = true
     ch.anim(dodge)
     no.hit()
     dodge = false
   end
   if dodge = false
     ch.anim(idle)
   end
end

function hit()
   if hit = black then
     health - 15
   end
   if hit = red then
     health -= 0
   end
end

function dead()
   if health = 0 then
     setRoom(menu)
   end
end