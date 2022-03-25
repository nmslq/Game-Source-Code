function tools()
   flx.tools()
   flx.files()
   flx.path.files()
   windows.reload()
   android.reload()
   if save then
      if android then
        save.android.sys.files(name)
        files.sys.exites(name)
        files.create.android(name)
        end
       if windows then
         windows.files.save(name)
         windows.files.exites(name)
         windows.create.files(name)
       end
   end
   if edit then
      if android then
        load.android.files.name()
        getPath.exites(files)
        files.sys.exites(files)
        change.android.files()
        edit.files(android)
      end
      if windows then
        load.windows.files.name()
        getPath.exites(files)
        files.sys.exites(files)
        change.windows.files()
        edit.files(windows)
      end
   end
   if open then
      if windows then
        windows.sys.open(win)
        windows.sys.flx(window)
      end
      if android then
        android.sys.open(win)
        android.sys.flx(window)
      end
   end
   if close then
      if windows then
        windows.sys.close(win)
        windows.sys.flx(window)
      end
      if android then
        android.sys.close(win)
        android.sys.flx(window)
      end
   end
   if exit then
      if windows then
        windows.close.game()
        windows.sys.close()
      end
      if android then
        android.app.close()
        android.app.sys()
      end
   end
   if window.size then
     windows.sys.flx(window)
     size.window()
     size.slow()
     size.fast()
     window.resize()
   end
   if win then
      if windows then
        change.open.windows(tag,text)
        windows.sys.flx(window)
      end
      if android then
        change.open.android(tag,text)
        android.sys.flx(window)
      end
   end
   if not files then
      if android then
        android.tools.open(error)
        android.tools.win(error,error {files.name})
        android.tools.save(log.txt)
        android.tools.edit(log,error in {files.name})
        exit.game.tools()
      end
      if windows then
        windows.tools.open(error)
        windows.tools.win(error,error {files.name})
        windows.tools.save(log.txt)
        windows.tools.edit(log,error in {files.name})
        exit.game.tools()
       end
   end
end
