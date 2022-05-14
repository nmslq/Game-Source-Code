controls.load()
tools.load()
shaders.camera()
flxAndroidControls()
item = 0

function inRoom()
   nameRoom('menu')
end

function onCreate()
   title = create.sprite(0, 100, 'title')
   title.setObjectScale(1.5,1)
   version = create.text(-300, -300, 'version:{getBuildVersion}')
   setObjectFont('version', 'sans')
   setObjectSize('version', 15)
   start = create.text(0, 30, 'start', 'sans')
   mods = create.text(0, 0, 'mods', 'sans')
   credits = create.text(0, -30, 'credits')
   setObjectFont('credits', 'sans')
   options = create.text(0, -60, 'options')
   setObjectFont('options', 'sans')
   exit = create.text(0, -90, 'exit')
   setObjectFont('exit', 'sans')
   bg = create.sprite(0, 0, 'menu')
   bg.setObjectScale(FlxG.screenHeight,FlxG.screenWidth)
end

function onUpdate()
   controls.Update()
   tools.Update()
   shaders.Update()
   flxAndroidControls.Update()
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
     item = item + 1
   end
   if 'down' then
     item = item - 1
   end
end

function addControls()
   if android then
      addAndroidControls('up, down, A')
   end
end
