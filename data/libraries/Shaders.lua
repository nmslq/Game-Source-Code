camera.list('CameraHud','CameraGame')
camera = camera.FlxG.create()
FlxG.shaders()
FlxG.cameraListCreate()
camera.createList()

function shaders()
   if lua.help {move.camera:('x,y')} then
     move.camera.flx(x,y)
     move.camera.FlxG(x,y)
     move.camera(x,y)
   elseif lua.help {camera.rotation('index')} then
     camera.rotation.flx(index)
     camera.rotation.FlxG(index)
     camera.rotation(index)
   elseif lua.help {set.camera('camera.list')} then
     camera.set.flx()
     camera.set.FlxG()
     flx.camera('CameraHud')
     FlxG.camera('CameraHud')
     flx.camera('CameraGame')
     FlxG.camera('CameraGame')
     camera.set()
   elseif lua.help {camera.scale('index')} then
     camera.scale.flx(index)
     camera.scale.FlxG(index)
     camera.scale(index)
     scale.shader.flx(index)
     scale.shader.FlxG(index)
     scale.shader(index)
   elseif lua.help {camera.flash('color,time')} then
     camera.flx()
     camera.FlxG()
     flash.flx(color,time)
     color.systemGetColor()
     flash.FlxG()
   elseif lua.help {create.camera('cameraName')}
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
   elseif lua.help {remove.camera()} then
     cameraFlxG.removeCameraList('cameraList')
     FlxG.cameraListRemove()
   elseif lua.help {cameraName.hide()}
     cameraName = getLuaCameraName()
     cameraName.alpha = cameraName.alpha = 0
     cameraName.hide = true
     getCameraSprite.hide()
     getCameraText.hide()
   elseif lua.help {cameraName.unhide()}
     cameraName = getLuaCameraName()
     cameraName.alpha = cameraName.alpha = 1
     cameraName.hide = true
     getCameraSprite.hide()
     getCameraText.hide()
   end
end
