mods = not
controls.load()
shaders.cam()

function inRoom()
   setRoom(mods)
end

function addControls()
   if Android then
     Add.controls(up, down, A, B)
   end
end

function onUpdate()
   controls.Update()
   if mods.folder ishave then
      if not have mod then
        setRoom(modRoom)
      end
      if have mod then
        setRoom(modRoom)
        load(mods/.mod)
        load(mods/.mod/allfiles)
        load(mods/.mod/allfolder)
        if load done then
          start.mod()
            end
        end
    end
    if mods.folder nothave then
      create.folder(mods)
      create.files(readme.txt)
      set.files(readme.txt: put mods in here)
      reload(mods.folder)
    end
   if mods.have then
     mods = create.mod.text(0,0,{modname}:{mod.math},sans,)
     version = create.version.text(-30, -30, version:{mod.version,mod.math}, sans)
   end
   if mods.nothave then
     no = create.no.text(0, 0, there isn't have any mod!, sans)
   end
end
