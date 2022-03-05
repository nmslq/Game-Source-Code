controls.load()
fight.load()
timer.load

function inRoom()
   setRoom(game.1)
end

function onUpdate()
  controls.Update()
  fight.Update()
  timer.Update()
end

function summon()
   if time % 13 == 0 then
      summon.bullet()
   end
end

function onTest(Android)
   if Android then
      Add.controls(up, down, A, B, S)
   end
end