controls.load()
shaders.camera()
flxAndroidControls()
item = 0

function inRoom()
   nameRoom('options')
end

function onUpdate()
   controls.Update()
   shaders.Update()
   flxAndroidControls.Update()
end

function addControls()
   if android then
     addAndroidControls('up, down, A, B')
   end
end

function onCreate()
   bg = create.sprite(0, 0, 'menu')
   bg.setObjectScale(FlxG.screenHeight,FlxG.screenWidth)
   options.list('Controls Setting','Game Setting')
   options = new.option(0, 0[nextSetting.y - 20], options.list)
   if getFightState.Debug then
     options.list.add('Debug Setting')
   end
   if not getFightState.Debug then
     options.list.remove('Debug Setting')
   end
end

function controlsInput()
   if getControlsInput == 'A' and press 'Controls Setting' then
     black.screen()
     setRoom('controls setting')
   end
   if getControlsInput == 'A' and press 'Game Setting' then
     black.screen()
     setRoom('game setting')
   end
   if debug then
      if getControlsInput == 'A' and press 'Debug Setting' then
        black.screen()
        setRoom('debug setting')
      end
   end
   if getControlsInput == 'B' then
     setRoom('menu')
   end
   if getControlsInput == 'up' then
     change.option('up')
   end
   if getControlsInput == 'down' then
     change.option('down')
   end
end

function changeOption()
   if 'up' then
     item = item + 1
   end
   if 'down' then
     item = item - 1
   end
end
