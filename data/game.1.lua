controls.load()
fight.load()
timer.load()
shaders.cam()
stage = 1

function inRoom()
   setRoom(game.1)
end

function onUpdate()
  controls.Update()
  fight.Update()
  shaders.Update()
  timer.Update()
end

function summon()
   if time % 13 == 0 then
      rx = math.random(stage.x)
      ry = math.random(stage.y)
      summon.bullet(rx,ry)
   end
end

function addControls(Android)
   if Android then
      Add.controls(up, down, A, B, C, S)
   end
end
