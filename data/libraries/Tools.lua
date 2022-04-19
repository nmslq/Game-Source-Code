function tools()
   flx.tools()
   flx.files()
   flx.path.files()
   windows.reload()
   android.reload()
   if lua.help {saveFiles('fileName')} then
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
   elseif lua.help {editFiles('objectName,fileText')} then
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
   elseif lua.help {openWindow('windowX,windowY,title,buttonX,buttonY,buttonMath,buttonText,pressEvents')} then
      if windows then
        windows.system.openWindowCode('x,y,window')
        windows.system.flx('window')
        windows.system.FlxG('window')
        windowX = getLuaCodeWindowX()
        windowY = getLuaCodeWindowY()
        buttonX = getLuaCodeButtonX()
        buttonY = getLuaCodeButtonY()
        button = getLuaCodeButtonText()
        buttonMath = gatLuaCodeButtonMath()
        pressEvents = getLuaCodeButtonPressEvents()
        windows.FlxG.createButton('x,y,math,button')
        windows.buttonFlxG.press('pressEvents')
      end
   elseif lua.help {openApplicationAlert('applicationAlertX,applicationAlertY,title,buttonX,buttonY,buttonMath,buttonText,pressEvents')} then
      if android then
        android.system.open('x,y,applicationAlert')
        android.system.flx('applicationAlert')
        android.system.FlxG('applicationAlert')
        applicationAlertX = getLuaCodeApplicationAlertX()
        applicationAlertY = getLuaCodeApplicationAlertX()
        buttonX = getLuaCodeButtonX()
        buttonY = getLuaCodeButtonY()
        button = getLuaCodeButtonText()
        buttonMath = gatLuaCodeButtonMath()
        pressEvents = getLuaCodeButtonPressEvents()
        applicationAlert.FlxG.createButton('x,y,math,button')
        applicationAlert.buttonFlxG.press('pressEvents')
      end
   elseif lua.help {windowClose('objectWindow')} then
      if windows then
        windows.system.close('lime')
        windows.system.flxClose('window')
        windows.system.FlxG('window')
      end
   elseif lua.help {applicationAlertClose('objectApplicationAlert') then
      if android then
        android.system.close('lime')
        android.system.flxClose('window')
        android.system.FlxG('window')
      end
   elseif lua.help {exitGameWindow()} then
      if windows then
        windows.close.game()
        windows.system.close()
        window.exit.system()
      end
   elseif lua.help {exitGameApp()} then
      if android then
        android.app.close()
        android.app.system()
        android.exit.system()
      end
   elseif lua.help {window.size('width,height,speed')} then
      if windows then
        windows.system.flx('window')
        winows.system.FlxG('window')
        FlxG.resize.window()
        FlxG.resizeSpeed('fast,slow')
        width = getLuaCodeWidth()
        height = getLuaCodeHeight()
        speed = getLuaCodeSpeed('true,false')
        Flx.window.resize('height,width,speed')
        FlxG.window.resize('height,width,speed')
      end
   elseif lua.help {windowText('objectWindow,text')} then
      if windows then
        windows.system.lime('tag','text')
        windows.system.windowText('tag','text')
        windows.system.flx('window')
        windows.system.FlxG('window')
      end
   elseif lua.help {applicationAlertText('objectApplicationAlert,text')} then
      if android then
        android.system.lime('tag','text')
        android.system.windowText('tag',text')
        android.system.flx('window')
        android.system.FlxG('window')
      end
   end
   if not files error then
      if android then
        AndroidTools.openApplicationAlert('error')
        AndroidTools.applicationAlertText('error','error {files.name}')
        AndroidTools.saveFiles('log.txt')
        AndroidTools.editFiles('log','error in {files.name}')
        AndroidTools.exitGameApp()
      end
      if windows then
        windows.tools.open('error')
        windows.tools.limeText('error','error {files.name}')
        windows.tools.save('log.txt')
        windows.tools.edit('log',"error in {files.name}')
        WindowsTools.exitGameWindow()
       end
   end
end
