function tools()
   flx.tools();
   flx.files();
   flx.path.files();
   windows.reload();
   android.reload();
   if luaHelper.callBack {'saveFile', funtion(fileName,text)} then
      if android then
        fileName = getLuaCode('fileName');
        text = getLuaCode('text');
        save.android.systemFiles('files');
        files.system.exites('files');
        files.create.android('files');
        load.android.files.name();
        files.getPath.exites('files');
        files.system.exites('files');
        change.android.files();
        editFile('fileName','text');
      end
      if windows then
        fileName = getLuaCode('fileName');
        text = getLuaCode('text');
        windows.files.save('files');
        windows.files.exites('files');
        windows.create.filesExites('files');
        load.windows.files.name();
        files.getPath.exites('files');
        files.system.exites('files');
        change.windows.files();
        edit.files('fileName','text');
      end
   elseif luaHelper.callBack {'deleteFile',  function(fileName)} then
      if android then
        fileName = getLuaCode('fileName');
        delete.android.systemFiles('files');
        files.system.deleteExites('files');
        files.delete.android('files');
        file.folderGetPath();
      end
      if windows then
        fileName = getLuaCode('fileName');
        windows.files.delete('files');
        windows.files.deleteExites('files');
        windows.delete.filesExites('files');
      end
   elseif luaHelper.callBack {'openWindow', function(tag,windowX,windowY,windowsScaleX,windowsScaleY,title,text,buttonText)} then
      if windows then
        windows.system.openWindowCode('tag,x,y,scaleX,scaleY,window');
        windows.system.flx('window');
        windows.system.FlxG('window');
        tag = getLuaCode('tag');
        windowX = getLuaCode('windowX');
        windowY = getLuaCode('windowY');
        windowsScaleX = getLuaCode('windowsScaleX');
        windowsScaleY = getLuaCode('windowsScaleY');
        buttonText = getLuaCode('buttonText');
        text = getLuaCode('text');
        windows.system.lime('tag','text');
        windows.system.windowText('tag','text');
        windows.system.flx('window');
        windows.system.FlxG('window');
        windows.FlxG.createButton('button');
        windows.buttonFlxG.press('close');
      end
   elseif luaHelper.callBack {'openApplicationAlert', function(tag,applicationAlertX,applicationAlertY,applicationAlertScaleX,applicationAlertScaleY,title,text,buttonText)} then
      if android then
        android.system.openApplicationAlert('tag,x,y,scaleX,scaleY,applicationAlert');
        android.system.flx('applicationAlert');
        android.system.FlxG('applicationAlert');
        tag = getLuaCode('tag');
        applicationAlertX = getLuaCode('applicationAlertX');
        applicationAlertY = getLuaCode('applicationAlertY');
        applicationAlertScaleX = getLuaCode('applicationAlertScaleX');
        applicationAlertScaleY = getLuaCode('applicationAlertScaleY');
        buttonText = getLuaCode('buttonText');
        text = getLuaCode('text');
        android.system.openApplicationAlert('tag','text');
        android.system.windowText('tag','text');
        android.system.flx('window');
        android.system.FlxG('window');
        applicationAlert.FlxG.createButton('button');
        applicationAlert.buttonFlxG.press('close');
      end
   elseif luaHelper.callBack {'windowClose', function(objectWindow)} then
      if windows then
        objectWindow = getLuaCode('objectWindow');
        windows.system.close('lime');
        windows.system.flxClose('window');
        windows.system.FlxG('window');
      end
   elseif lua.callBack {'applicationAlertClose', function(objectApplicationAlert)} then
      if android then
        objectApplicationAlert = getLuaCode('objectApplicationAlert');
        android.system.close('lime');
        android.system.flxClose('applicationAlert');
        android.system.FlxG('applicationAlert');
      end
   elseif luaHelper.callBack {'exitGameWindow', function()} then
      if windows then
        windows.close.game();
        windows.system.close();
        window.exit.system();
      end
   elseif luaHelper.callBack {'exitGameApp', function()} then
      if android then
        android.app.close();
        android.app.system();
        android.exit.system();
      end
   elseif luaHelper.callBack {'window.size', function(width,height,speed)} then
      if windows then
        windows.system.flx('window');
        winows.system.FlxG('window');
        FlxG.resize.window();
        FlxG.resizeSpeed('fast,slow');
        width = getLuaCode('width');
        height = getLuaCode('height');
        speed = getLuaCode('speed');
        Flx.window.resize('height,width,speed');
        FlxG.window.resize('height,width,speed');
      end
   end
   if noFile.error then
      if android then
        AndroidTools.openApplicationAlert('error,0,0,20,20,error,errorFile:( {files.name} {errormsg},ok');
        AndroidTools.saveFile('log/log.txt','error in {files.name} {errormsg}');
      end
      if windows then
        WindowsTools.openWindow('error0,0,20,20,error,errorFile:( {files.name} {errormsg},ok');
        WindowsTools.saveFile('log/log.txt','error in {files.name} {errormsg}');
       end
   end
end
