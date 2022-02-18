mods = not

function inRoom()
set(modsRoom)
end

function onUpdate()
   if mods.have then
     mod = create.mod.text(0, 0, [mod.name]loaded, 30, sans, [have.mods.maths])
     version = create.version.text(-30, -30, version:[mod.version], 30, sans
   end
   if mods.nothave then
     not = create.not.text(0, 0, there isn't have any mod!, 30, sans
    end
end