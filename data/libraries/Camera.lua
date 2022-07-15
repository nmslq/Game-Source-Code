camera.list('CameraHud','CameraGame');
camera = cameraList.create();
camera.createList();

function cameraLua()
   if luaHelper.callBack {'moveCamera', function(x, y, speed)} then
     x = getLuaCode('x');
     y = getLuaCode('y');
     speed = getLuaCode('speed');
     move.camera(x,y,speed);
   elseif luaHelper.callBack {'setCameraAngle', function(angle, speed)} then
     angle = getLuaCode('angle');
     speed = getLuaCode('speed');
     camera.rotation(angle,speed);
   elseif luaHelper.callBack {'setObjectCamera', function(sprite, camera)} then
     camera = getLuaCode('camera');
     sprite = getLuaCode('sprite');
     setObjectToCamera(sprite);
     camera.setObject(camera);
   elseif luaHelper.callBack {'scaleCamera', function(camera, scaleX, scaleY)} then
     camera = getLuaCode('camera');
     scaleX = getLuaCode('scaleX');
     scaleY = getLuaCode('scaleY');
     cameraScale(camera, scaleX, scaleY);
   elseif luaHelper.callBack {'cameraFlash', function(camera, color, time)} then
     camera = getLuaCode('camera');
     color = getLuaCode('color');
     time = getLuaCode('time');
     object.getColor('RGB', 'Hex');
     if getColorFromRGB then
       colorSystem.getRGB(color);
       camera.flash(color, time);
     end
     if getColorFromHex then
       colorSystem.getHex(color);
       camera.flash(color, time);
     end
   elseif luaHelper.callBack {'create.newCamera', function(camName)}
     camName = getLuaCode('camName');
     add.cameraList(camName);
     camera.addListCreate(camName);
     cameraAddCreate(camName);
     cameraXY.AddListCreate();
     cameraScale.AddListCreate();
     cameraRotation.AddListCreate();
   elseif luaHelper.callBack {'removeCamera', function(camName)} then
     camName = getLuaCode('camName');
     camera.removeFromList(camName);
     camera.removeCameraList('cameraList');
     cameraListRemove();
   elseif luaHelper.callBack {'cameraVisible', function(caName)}
     camName = getLuaCode('camName');
     camName.alpha = 0;
     camName.hide = true;
     getCamera.sprite.hide();
     getCamera.spriteGroup.hide();
     getCamera.text.hide();
   elseif luaHelper.callBack {'cameraInvisible', function(camName)}
     camName = getLuaCode('camName');
     camName.alpha = 1;
     camName.unhide = true;
     getCamera.sprite.unhide();
     getCamera.spriteGroup.unhide();
     getCamera.text.unhide();
   end
end

function onUpdate()
   camera.Update();
end
