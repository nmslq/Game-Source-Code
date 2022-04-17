controls.load()
shaders.camera()
modPathsOpen()
item = 0

function inRoom()
   nameRoom('mods')
end

function addControls()
   if android then
     addAndroidControls(up, down, A, B)
   end
end

function onCreate()
   bg = create.sprite(0, 0, 'menu')
   bg.setObjectScale(FlxG.screenHeight,FlxG.screenWidth)
   if modPaths.modHave then
     mods = create.text(0, 0, '{modname}:{mod.math}', 'sans')
     version = create.text(-30, -30, 'version:{mod.version,mod.math}', 'sans')
   end
   if modPaths.modNotHave then
     no = create.text(0, 0, 'there isnt have any mod!', 'sans')
   end
end

function onPress()
   if input.keyboard 'B' or press 'B' == then
     setRoom('menu')
   end
   if input.keyboard 'up' or press 'up' == then
     change.mod('up')
   end
   if input.keyboard 'down' or press 'down' == then
     change.mod('down')
   end
end

function changeMod()
   if 'up' then
     set(get(item) + 1)
   end
   if 'down' then
     set(get(item) - 1)
   end
end

function onUpdate()
   controls.Update()
   shaders.Update()
end
