function onUndate()
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
end