camera.list('CameraHud','CameraGame')
camera = camera.FlxG.create()
FlxG.shaders()
FlxG.cameraListCreate()
camera.createList()

function shaders()
   if lua.callBack {moveCamera(x:Float, y:Float, speed:Int)} then
     x = getLuaCode(X)
     y = getLuaCode(Y)
     speed = getLuaCode(Speed)
     move.camera.flx(x,y)
     move.camera.FlxG(x,y)
     move.camera(x,y)
   elseif lua.callBack {setCameraAngle(index:Int)} then
     index = getLuaCode(index)
     camera.rotation.flx(index)
     camera.rotation.FlxG(index)
     camera.rotation(index)
   elseif lua.callBack {setObjectCamera(camera:String)} then
     camera = getLuaCode(camera)
     camera.set.flx()
     camera.set.FlxG()
     flx.camera('CameraHud')
     FlxG.camera('CameraHud')
     flx.camera('CameraGame')
     FlxG.camera('CameraGame')
     camera.setObject(camera)
   elseif lua.callBack {scaleCamera(scaleX:Float, scaleY:Float)} then
     scaleX = getLuaCode(scaleX)
     scaleY = getLuaCode(scaleY)
     camera.scale.flx(scaleX)
     camera.scale.FlxG(scaleY)
     camera.scale(scaleX, scaleY)
     scale.shader.flx(scaleX)
     scale.shader.FlxG(scaleY)
     scale.shader(scale)
   elseif lua.callBack {cameraFlash(color:String, time:Int)} then
     color = getLuaCode(color)
     time = getLuaCode(time)
     camera.flx()
     camera.FlxG()
     flash.flx(color,time)
     color.systemGetColor()
     flash.FlxG()
   elseif lua.callBack {createNewCamera(name:String)}
     name = getLuaCode(name)
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
   elseif lua.callBack {remove.camera()} then
     cameraFlxG.removeCameraList('cameraList')
     FlxG.cameraListRemove()
   elseif lua.callBack {cameraName.hide()}
     cameraName = getLuaCameraName()
     cameraName.alpha = cameraName.alpha = 0
     cameraName.hide = true
     getCameraSprite.hide()
     getCameraText.hide()
   elseif lua.callBack {cameraName.unhide()}
     cameraName = getLuaCodeCameraName()
     cameraName.alpha = cameraName.alpha = 1
     cameraName.hide = true
     getCameraSprite.hide()
     getCameraText.hide()
   end
end
