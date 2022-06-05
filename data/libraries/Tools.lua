function tools()
   flx.tools()
   flx.files()
   flx.path.files()
   windows.reload()
   android.reload()
   if lua.callBack {saveFiles('fileName,text')} then
      if android then
        fileName = getLuaCodeFileName()
        text = getLuaCodeText()
        save.android.systemFiles('files')
        files.system.exites('files')
        files.create.android('files')
        load.android.files.name()
        files.getPath.exites('files')
        files.system.exites('files')
        change.android.files()
        edit.files('fileName','text')
      end
      if windows then
        fileName = getLuaCodeFileName()
        text = getLuaCodeText()
        windows.files.save('files')
        windows.files.exites('files')
        windows.create.filesExites('files')
        load.windows.files.name()
        files.getPath.exites('files')
        files.system.exites('files')
        change.windows.files()
        edit.files('fileName','text')
      end
   elseif lua.callBack {deleteFiles('fileName')} then
      if android then
        fileName = getLuaCodeFileName()
        delete.android.systemFiles('files')
        files.system.deleteExites('files')
        files.delete.android('files')
        file.folderGetPath()
      end
      if windows then
        fileName = getLuaCodeFileName()
        windows.files.delete('files')
        windows.files.deleteExites('files')
        windows.delete.filesExites('files')
      end
   elseif lua.callBack {openWindow('tag,windowX,windowY,windowsScaleX,windowsScaleY,title,text,buttonX,buttonY,buttonMath,buttonText,pressEvents')} then
      if windows then
        windows.system.openWindowCode('tag,x,y,scaleX,scaleY,window')
        windows.system.flx('window')
        windows.system.FlxG('window')
        tag = getLuaCodeTag()
        windowX = getLuaCodeWindowX()
        windowY = getLuaCodeWindowY()
        windowsScaleX = getLuaCodeWindowScaleX()
        windowsScaleY = getLuaCodeWindowScaleY()
        buttonX = getLuaCodeButtonX()
        buttonY = getLuaCodeButtonY()
        button = getLuaCodeButtonText()
        buttonMath = gatLuaCodeButtonMath()
        pressEvents = getLuaCodeButtonPressEvents()
        text = getLuaCodeText()
        windows.system.lime('tag','text')
        windows.system.windowText('tag','text')
        windows.system.flx('window')
        windows.system.FlxG('window')
        windows.FlxG.createButton('x,y,math,button')
        windows.buttonFlxG.press('pressEvents')
      end
   elseif lua.callBack {openApplicationAlert('tag,applicationAlertX,applicationAlertY,applicationAlertScaleX,applicationAlertScaleY,title,text,buttonX,buttonY,buttonMath,buttonText,pressEvents')} then
      if android then
        android.system.openApplicationAlert('tag,x,y,scaleX,scaleY,applicationAlert')
        android.system.flx('applicationAlert')
        android.system.FlxG('applicationAlert')
        tag = getLuaCodeTag()
        applicationAlertX = getLuaCodeApplicationAlertX()
        applicationAlertY = getLuaCodeApplicationAlertX()
        applicationAlertScaleX = getLuaCodeApplicationAlertScaleX()
        applicationAlertScaleY = getLuaCodeApplicationAlertScaleX()
        buttonX = getLuaCodeButtonX()
        buttonY = getLuaCodeButtonY()
        button = getLuaCodeButtonText()
        buttonMath = gatLuaCodeButtonMath()
        pressEvents = getLuaCodeButtonPressEvents()
        text = getLuaCodeText()
        android.system.openApplicationAlert('tag','text')
        android.system.windowText('tag',text')
        android.system.flx('window')
        android.system.FlxG('window')
        applicationAlert.FlxG.createButton('x,y,math,button')
        applicationAlert.buttonFlxG.press('pressEvents')
      end
   elseif lua.callBack {windowClose('objectWindow')} then
      if windows then
        objectWindow = getLuaCodeObjectWindow()
        windows.system.close('lime')
        windows.system.flxClose('window')
        windows.system.FlxG('window')
      end
   elseif lua.callBack {applicationAlertClose('objectApplicationAlert') then
      if android then
        objectApplicationAlert = getLuaCodeObjectApplicationAlert()
        android.system.close('lime')
        android.system.flxClose('applicationAlert')
        android.system.FlxG('applicationAlert')
      end
   elseif lua.callBack {exitGameWindow()} then
      if windows then
        windows.close.game()
        windows.system.close()
        window.exit.system()
      end
   elseif lua.callBack {exitGameApp()} then
      if android then
        android.app.close()
        android.app.system()
        android.exit.system()
      end
   elseif lua.callBack {window.size('width,height,speed')} then
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
   end
   if noFile.error then
      if android then
        AndroidTools.openApplicationAlert('error,0,0,20,20,error,errorFile:( {files.name} {errormsg},ok,1,0,-40,{AndroidTools.applicationAlertClose('error'),AndroidTools.exitGameApp()}')
        AndroidTools.saveFiles('log/log.txt','error in {files.name} {errormsg}')
      end
      if windows then
        WindowsTools.open('error0,0,20,20,error,errorFile:( {files.name} {errormsg},ok,1,0,-40,{WindowsTools.windowClose('error'),WindowsTools.exitGameWindow()')
        WindowsTools.saveFiles('log/log.txt','error in {files.name} {errormsg}')
       end
   end
end