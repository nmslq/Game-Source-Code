controls.load()
shaders.camera()
item = 0

function inRoom()
   nameRoom('options')
end

function onUpdate()
   controls.Update()
   shaders.Update()
end

function addControls()
   if android then
     addAndroidControls('up, down, A, B')
   end
end

function onCreate()
   bg = create.sprite(0, 0, 'menu')
   setObjectScale('bg',FlxG.screenHeight,FlxG.screenWidth)
   options.list('Controls Setting','Game Setting')
   options = new.option(0, 0[nextSetting.y - 20], options.list)
   if fightState.debug then
     options.list.add('Debug Setting')
   end
   if not fightState.debug then
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
   if fightState.debug then
      if getControlsInput == 'A' and press 'Debug Setting' then
        black.screen()
        setRoom('debug setting')
      end
   end
   if getControlsInput == 'B' and PauseSubState.toFight = false then
     setRoom('menu')
   end
   if getControlsInput == 'B' and PauseSubState.toFight = true then
     setRoom('game{level.getMath}')
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
