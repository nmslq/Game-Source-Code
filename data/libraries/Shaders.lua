camera.list('CameraHud','CameraGame')
camera = camera.FlxG.create()
FlxG.shaders()
FlxG.cameraListCreate()
camera.createList()

function shaders()
   if lua.callBack {moveCamera(x, y, speed)} then
     x = getLuaCode(X)
     y = getLuaCode(Y)
     speed = getLuaCode(Speed)
     move.camera.flx(x,y)
     move.camera.FlxG(x,y)
     move.camera(x,y)
   elseif lua.callBack {setCameraAngle(angle)} then
     angle = getLuaCode(angle)
     camera.rotation.flx(angle)
     camera.rotation.FlxG(angle)
     camera.rotation(angle)
   elseif lua.callBack {setObjectCamera(spr, cam)} then
     camera = getLuaCode(cam)
     spr = getLuaCode(spr)
     camera.set.flx()
     camera.set.FlxG()
     flx.camera('CameraHud')
     FlxG.camera('CameraHud')
     flx.camera('CameraGame')
     FlxG.camera('CameraGame')
     camera.setObject(cam)
   elseif lua.callBack {scaleCamera(scaleX, scaleY)} then
     scaleX = getLuaCode(scaleX)
     scaleY = getLuaCode(scaleY)
     camera.scale.flx(scaleX)
     camera.scale.FlxG(scaleY)
     camera.scale(scaleX, scaleY)
     scale.shader.flx(scaleX)
     scale.shader.FlxG(scaleY)
     scale.shader(scale)
   elseif lua.callBack {cameraFlash(color, time)} then
     color = getLuaCode(color)
     time = getLuaCode(time)
     camera.flx()
     camera.FlxG()
     flash.flx(color,time)
     color.systemGetColor()
     flash.FlxG()
   elseif lua.callBack {createNewCamera(camName)}
     camName = getLuaCode(camName)
     cameraName.FlxG()
     cameraName.flx()
     add.cameraList()
     FlxG.shader.cameraListAdd()
     FlxG.addCamera()
     shaderCamera.addListCreateFlxG()
     shader.cameraAddCreate()
     shaderCameraXY.FlxG.AddListCreate()
     shaderCameraScale.FlxG.AddListCreate()
     shaderCameraRotation.FlxG.AddListCreate()
   elseif lua.callBack {remove.camera(camName)} then
     camName = getLuaCode(camName)
     camera.removeFromList(camName)
     cameraFlxG.removeCameraList('cameraList')
     FlxG.cameraListRemove()
   elseif lua.callBack {cameraName.hide()}
     cameraName = getLua(cameraName)
     cameraName.alpha = cameraName.alpha = 0
     cameraName.hide = true
     getCameraSprite.hide()
     getCameraText.hide()
   elseif lua.callBack {cameraName.unhide()}
     cameraName = getLuaCode(cameraName)
     cameraName.alpha = cameraName.alpha = 1
     cameraName.hide = true
     getCameraSprite.hide()
     getCameraText.hide()
   end
end
