mods = not
controls.load()

function inRoom()
   setRoom(modsRoom)
end

function onUpdate()
   controls.Update()
   if mods.have then
     setRoom(modsRoom.have)
     mod = create.mod.text(0, 0, [mod.name]loaded, 30, sans, [have.mods.maths])
     version = create.version.text(-30, -30, version:[mod.version], 30, sans
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