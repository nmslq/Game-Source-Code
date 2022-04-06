controls.load()
tools.load()
shaders.camera()

function inRoom()
   nameRoom('menu')
end

function onCreate()
   title = create.title.sprite(0, 100, 'title')
   title.scale(1.5,1)
   version = create.version.text(-300, -300, 'version:{getBuildVersion}','sans')
   start = create.start.text(0, 30, 'start', 'sans')
   mods = create.mods.text(0, 0, 'mods', 'sans')
   credits = create.credits.text(0, -30, 'credits', 'sans')
   options = create.mods.text(0, -60, 'options' ,'sans')
   exit = create.exit.text(0, -90, 'exit', 'sans')
end

function onUpdate()
   controls.Update()
   tools.Update()
   shaders.Update()
end

function onPress()
   if Press start then
     black.screen()
     setRoom('game.1')
   end
   if Press mods then
     black.screen()
     setRoom('mods')
   end
   if Press credits then
     black.screen()
     setRoom('credits')
   end
   if Press options then
     black.screen()
     setRoom('options')
   end
   if Press exit then
     exit.game.tools()
   end
end

function addControls()
   if android then
      addAndroidControls(up, down, A)
   end
end
