mods = not
controls.load()

function inRoom()
   setRoom(modsRoom)
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
     setRoom(modsRoom.have)
     mod = create.mod.text(0, 0, [mod.name]loaded, 30, sans, [have.mods.maths])
     version = create.version.text(-30, -30, version:[mod.version], 30, sans)
   end
   if mods.nothave then
     setRoom(modsRoom.no)
     not = create.not.text(0, 0, there isn't have any mod!, 30, sans
   end
end

function onTest(Destop, Android)
   if Destop then
     Test.controls(up, down, Z)
   end
   if Android then
     Add.controls(up, down, A)
   end
end
