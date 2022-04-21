controls.load()
tools.load()
shaders.camera()
item = 0

function inRoom()
   nameRoom('menu')
end

function onCreate()
   title = create.sprite(0, 100, 'title')
   title.setObjectScale(1.5,1)
   version = create.text(-300, -300, 'version:{getBuildVersion}','sans')
   version.setObjectSize(15)
   start = create.text(0, 30, 'start', 'sans')
   mods = create.text(0, 0, 'mods', 'sans')
   credits = create.text(0, -30, 'credits', 'sans')
   options = create.text(0, -60, 'options' ,'sans')
   exit = create.text(0, -90, 'exit', 'sans')
   bg = create.sprite(0, 0, 'menu')
   bg.setObjectScale(FlxG.screenHeight,FlxG.screenWidth)
end

function onUpdate()
   controls.Update()
   tools.Update()
   shaders.Update()
end

function onPress()
   if getControlsInput == 'A' and press 'start' then
     black.screen()
     setRoom('game1')
   end
   if getControlsInput == 'A' and press 'mods' then
     black.screen()
     setRoom('mods')
   end
   if getControlsInput == 'A' and press 'credits' then
     black.screen()
     setRoom('credits')
   end
   if getControlsInput == 'A' and press 'options' then
     black.screen()
     setRoom('options')
   end
   if getControlsInput == 'A' and press 'exit' then
      if android then
        AndroidTools.exitGameApp()
      end
      if windows then
        WindowsTools.exitGameWindow()
      end
   end
   if getControlsInput == 'up' then
     change.menu('up')
   end
   if getControlsInput == 'down' then
     change.menu('down')
   end
end

function changeMenu()
   if 'up' then
     set(get(item) + 1)
   end
   if 'down' then
     set(get(item) - 1)
   end
end

function addControls()
   if android then
      addAndroidControls(up, down, A)
   end
end
