function tools()
   windows.reload();
   android.reload();
   if luaHelper.callBack {'saveFile', function(fileName,text)} then
      if android then
        fileName = getLuaCode('fileName');
        text = getLuaCode('text');
        save.systemFiles('file');
        file.system.exites('file');
        file.create('file');
        load.android.fileName();
        file.getPath.exites('file');
        file.system.exites('file');
        editFile('fileName','text');
      end
      if windows then
        fileName = getLuaCode('fileName');
        text = getLuaCode('text');
        windows.file.save('files');
        windows.file.exites('files');
        windows.create.fileExites('file');
        load.windows.fileName();
        file.getPath.exites('file');
        file.system.exites('file');
        edit.files('fileName','text');
      end
   elseif luaHelper.callBack {'deleteFile',  function(fileName)} then
      if android then
        fileName = getLuaCode('fileName');
        delete.systemFile('file');
        file.system.deleteExites('file');
        file.delete.android('file');
        file.folderGetPath();
      end
      if windows then
        fileName = getLuaCode('fileName');
        windows.file.delete('file');
        windows.file.deleteExites('file');
        windows.delete.fileExites('file');
      end
   elseif luaHelper.callBack {'openWindow', function(tag,windowX,windowY,windowsScaleX,windowsScaleY,title,text,buttonText)} then
      if windows then
        tag = getLuaCode('tag');
        windowX = getLuaCode('windowX');
        windowY = getLuaCode('windowY');
        windowsScaleX = getLuaCode('windowsScaleX');
        windowsScaleY = getLuaCode('windowsScaleY');
        buttonText = getLuaCode('buttonText');
        text = getLuaCode('text');
        windows.system.openWindowCode('tag,x,y,scaleX,scaleY,window');
        windows.system.lime('tag','text');
        windows.system.windowText('tag','text');
        windows.createButton('button');
        windows.button.pressEvent('close');
      end
   elseif luaHelper.callBack {'openApplicationAlert', function(tag,applicationAlertX,applicationAlertY,applicationAlertScaleX,applicationAlertScaleY,title,text,buttonText)} then
      if android then
        tag = getLuaCode('tag');
        applicationAlertX = getLuaCode('applicationAlertX');
        applicationAlertY = getLuaCode('applicationAlertY');
        applicationAlertScaleX = getLuaCode('applicationAlertScaleX');
        applicationAlertScaleY = getLuaCode('applicationAlertScaleY');
        buttonText = getLuaCode('buttonText');
        text = getLuaCode('text');
        android.system.openApplicationAlert('tag,x,y,scaleX,scaleY,applicationAlert');
        android.system.openApplicationAlert('tag','text');
        android.system.windowText('tag','text');
        applicationAlert.createButton('button');
        applicationAlert.button.pressEvent('close');
      end
   elseif luaHelper.callBack {'windowClose', function(objectWindow)} then
      if windows then
        objectWindow = getLuaCode('objectWindow');
        windows.system.close('lime');
      end
   elseif lua.callBack {'applicationAlertClose', function(objectApplicationAlert)} then
      if android then
        objectApplicationAlert = getLuaCode('objectApplicationAlert');
        android.system.close('lime');
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
        width = getLuaCode('width');
        height = getLuaCode('height');
        speed = getLuaCode('speed');
        windows.windowResize('height,width,speed');
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
