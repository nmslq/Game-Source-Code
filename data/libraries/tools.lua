function tools()
   windows.reload()
   android.reload()
   if save then
      if android then
        save.android.sys.files(androidname)
        files.create.android(androidname)
        end
       if windows then
         windows.files(windowsname)
         windows.create.files(windowsname)
       end
   end
   if edit then
      if android then
        load.android.files.name()
        change.android.files()
        edit.files(android)
      end
      if windows then
        load.windows.files.name()
        change.windows.files()
        edit.files(windows)
      end
   end
   if open then
      if windows then
        windows.sys.open(win)
      end
      if android then
        android.sys.open(win)
      end
   end
   if close then
      if windows then
        windows.sys.close(win)
      end
      if android then
        android.sys.close(win)
      end
   end
   if exit then
      if windows then
        windows.close.game()
      end
      if android then
        android.app.close()
      end
   end
   if win then
      if windows then
        change.open.windows(text)
      end
      if android then
        change.open.android(text)
      end
   end
   if not files then
      if android then
        android.tools.open(error)
        android.tools.win(error {files.name})
        android.tools.save(log.txt)
        android.tools.edit(log,error in {files.name})
      end
      if windows then
        windows.tools.open(error)
        windows.tools.win(error {files.name})
        windows.tools.save(log.txt)
        windows.tools.edit(log,error in {files.name})
       end
   end
end