controls.load()
fight.load()
timer.load()
shaders.camera()
stage = 1
level = 1

function inRoom()
   nameRoom('game.1')
end

function onUpdate()
  controls.Update()
  fight.Update()
  shaders.Update()
  timer.Update()
end

function summon()
   if time % 13 == 0 then
      rx = math.random('stage.x')
      ry = math.random('stage.y')
      summon.bullet(rx,ry)
   end
end

function onComplate()
    black.screen()
    setRoom('game2')

function addControls()
   if android then
      addAndroidControls(full, B, C, S)
   end
end
