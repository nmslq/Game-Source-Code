controls.load()
flxAndroidControls()
fight.load()
timer.load()
shaders.camera()
stage = 3
level = 3

function inRoom()
   nameRoom('game3')
end

function onUpdate()
   controls.Update()
   fight.Update()
   shaders.Update()
   flxAndroidControls.Update()
   timer.Update()
end

function onCreate()
   complate.xy(600,700)
end

function onComplate()
    black.screen()
    setRoom('game4')
end

function addControls()
   if android then
      addAndroidControls(full, B, C, S)
   end
end
