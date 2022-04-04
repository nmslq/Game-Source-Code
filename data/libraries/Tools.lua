function tools()
   flx.tools()
   flx.files()
   flx.path.files()
   windows.reload()
   android.reload()
   if save then
      if android then
        save.android.systemFiles('files')
        files.system.exites('files')
        files.create.android('files')
        end
       if windows then
         windows.files.save('files')
         windows.files.exites('files')
         windows.create.filesExites('files')
       end
   end
   if edit then
      if android then
        load.android.files.name()
        files.getPath.exites('files')
        files.system.exites('files')
        change.android.files()
        edit.files('android')
      end
      if windows then
        load.windows.files.name()
        files.getPath.exites('files')
        files.system.exites('files')
        change.windows.files()
        edit.files('windows')
      end
   end
   if open then
      if windows then
        windows.system.open('lime')
        windows.system.Flx('window')
        windows.system.FlxG('window')
      end
      if android then
        android.system.open(win)
        android.system.Flx(window)
        android.system.FlxG('window')
      end
   end
   if close then
      if windows then
        windows.system.close('lime')
        windows.system.FlxClose('window')
        windows.system.FlxG('window')
      end
      if android then
        android.system.close('lime')
        android.system.FlxClose('window')
        android.system.FlxG('window')
      end
   end
   if exit then
      if windows then
        windows.close.game()
        windows.system.close()
        window.exit.system()
      end
      if android then
        android.app.close()
        android.app.system()
        android.exit.system()
      end
   end
   if window.size then
     windows.system.Flx('window')
     winows.system.FlxG('window')
     size.window()
     size.slow()
     size.fast()
     Flx.window.resize()
     FlxG.window.resize()
   end
   if limeText then
      if windows then
        windows.system.lime('tag','text')
        windows.system.windowText('tag','text')
        windows.system.Flx('window')
        windows.system.FlxG('window')
      end
      if android then
        android.system.lime('tag','text')
        android.system.windowText('tag',text')
        android.system.Flx('window')
        android.system.FlxG('window')
      end
   end
   if not files error then
      if android then
        android.tools.open('error')
        android.tools.limeText('error','error {files.name}')
        android.tools.save('log.txt')
        android.tools.edit('log','error in {files.name}')
        exit.game.tools()
      end
      if windows then
        windows.tools.open('error')
        windows.tools.limeText('error','error {files.name}')
        windows.tools.save('log.txt')
        windows.tools.edit('log',"error in {files.name}')
        exit.game.tools()
       end
   end
end
