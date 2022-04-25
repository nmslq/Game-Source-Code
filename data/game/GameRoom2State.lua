controls.load()
fight.load()
timer.load()
shaders.camera()
flxAndroidControls()
stage = 2
level = 2

function inRoom()
   nameRoom('game2')
end

function onUpdate()
   controls.Update()
   fight.Update()
   shaders.Update()
   timer.Update()
   flxAndroidControls.Update()
end

function onCreate()
   complate.xy(600,700)
end

function onComplate()
    black.screen()
    setRoom('game3')
end

function addControls()
   if android then
      addAndroidControls(full, B, C, S)
   end
end
