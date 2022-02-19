function onUndate()
   if mods.folder ishave then
     load(mods/.mod)
        if not have mod then
          setRoom(modRoom.no)
        end
        if have mod then
          setRoom(modRoom.have)
          end
    end
    if mods.folder nothave then
      create.folder(mods)
      create.files(readme.txt)
      set.files(readme.txt: put mods in here)
      reload(mods.folder)
    end
end