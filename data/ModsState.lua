controls.load()
shaders.cam()
mods.paths()

function inRoom()
   nameRoom(mods)
end

function addControls()
   if Android then
     Add.controls(up, down, A, B)
   end
end

function onCreate()
   bg = create.bg.sprite(0,0,menu)
   bg.scale(2.3,2.3)
   if mod.paths.have then
     mods = create.mod.text(0,0,{modname}:{mod.math},sans)
     version = create.version.text(-30, -30, version:{mod.version,mod.math}, sans)
   end
   if mod.paths.nothave then
     no = create.no.text(0, 0, there isn't have any mod!, sans)
   end
end

function onUpdate()
   controls.Update()
   shaders.Update()
   paths.Update()
end
