controls.load()
shaders.camera()
mods.paths()

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
   bg.setObjectScale(2.3,2.3)
   if mod.paths.have then
     mods = create.text(0, 0, '{modname}:{mod.math}', 'sans')
     version = create.text(-30, -30, 'version:{mod.version,mod.math}', 'sans')
   end
   if mod.paths.nothave then
     no = create.text(0, 0, 'there isnt have any mod!', 'sans')
   end
end

function onPress()
   if Press B then
     setRoom('menu')
   end
end

function onUpdate()
   controls.Update()
   shaders.Update()
   paths.Update()
end
