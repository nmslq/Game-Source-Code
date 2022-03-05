controls.load()
fight.load()

function inRoom()
   setRoom(game.1)
end

function onUpdate()
  controls.Update()
  fight.Update()
end

function summon()
   if time % 13 == 0 then
      summon.bullet()
   end
end