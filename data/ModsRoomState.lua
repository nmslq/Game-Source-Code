controls.load()
shaders.camera()
modPathsOpen()
flxAndroidControls()
item = 0

function inRoom()
   nameRoom('mods')
end

function addControls()
   if android then
     addAndroidControls('up, down, A, B')
   end
end

function onCreate()
   bg = create.sprite(0, 0, 'menu')
   setObjectScale('bg',FlxG.screenHeight,FlxG.screenWidth)
   if modPaths.modHave then
     mods = create.text(0, 0, '{modname}:{mod.math}')
     setObjectFont('mods', 'sans')
     version = create.text(-30, -30, 'version:{mod.version,mod.math}')
     setObjectFont('version', 'sans')
   end
   if modPaths.modNotHave then
     no = create.text(0, 0, 'there isnt have any mod!')
     setObjectFont('no', 'sans')
   end
end

function controlsInput()
   if getControlsInput == 'B' then
     setRoom('menu')
   end
   if getControlsInput == 'up' then
     change.mod('up')
   end
   if getControlsInput == 'down' then
     change.mod('down')
   end
end

function changeMod()
   if 'up' then
     item = item + 1
   end
   if 'down' then
     item = item - 1
   end
end

function onUpdate()
   controls.Update()
   shaders.Update()
   flxAndroidControls.Update()
end
