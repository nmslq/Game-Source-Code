controls.load()
tools.load()
shaders.camera()

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
   if input.keyboard 'A' or press 'A' and Press 'start' == then
     black.screen()
     setRoom('game1')
   end
   if input.keyboard 'A' or press 'A' and Press 'mods' == then
     black.screen()
     setRoom('mods')
   end
   if input.keyboard 'A' or press 'A' and Press 'credits' == then
     black.screen()
     setRoom('credits')
   end
   if input.keyboard 'A' or press 'A' and Press 'options' == then
     black.screen()
     setRoom('options')
   end
   if input.keyboard 'A' or press 'A' and Press 'exit' == then
      if android then
        AndroidTools.exitGameApp()
      end
      if windows then
        WindowsTools.exitGameWindow()
      end
   end
end

function addControls()
   if android then
      addAndroidControls(up, down, A)
   end
end
