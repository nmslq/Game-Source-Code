camera.list('CameraHud','CameraGame')
camera = camera.FlxG.create()
FlxG.shaders()
FlxG.cameraListCreate()
camera.createList()

function camera()
   if luaHelper.callBack {'moveCamera', function(x, y, speed)} then
     x = getLuaCode('x')
     y = getLuaCode('y')
     speed = getLuaCode('speed')
     move.camera.flx(x,y)
     move.camera.FlxG(x,y)
     move.camera(x,y)
   elseif luaHelper.callBack {'setCameraAngle', function(angle)} then
     angle = getLuaCode('angle')
     camera.rotation.flx(angle)
     camera.rotation.FlxG(angle)
     camera.rotation(angle)
   elseif luaHelper.callBack {'setObjectCamera', function(spr, cam)} then
     camera = getLuaCode('camera')
     spr = getLuaCode('spr')
     camera.set.flx()
     camera.set.FlxG()
     flx.camera('CameraHud')
     FlxG.camera('CameraHud')
     flx.camera('CameraGame')
     FlxG.camera('CameraGame')
     camera.setObject(camera)
   elseif luaHelper.callBack {'scaleCamera', function(scaleX, scaleY)} then
     scaleX = getLuaCode('scaleX')
     scaleY = getLuaCode('scaleY')
     camera.scale.flx(scaleX)
     camera.scale.FlxG(scaleY)
     camera.scale(scaleX, scaleY)
     scale.shader.flx(scaleX)
     scale.shader.FlxG(scaleY)
     scale.shader(scale)
   elseif luaHelper.callBack {'cameraFlash', function(color, time)} then
     color = getLuaCode('color')
     time = getLuaCode('time')
     camera.flx()
     camera.FlxG()
     flash.flx(color,time)
     color.systemGetColor()
     flash.FlxG()
   elseif luaHelper.callBack {'create.newCamera', function(camName)}
     camName = getLuaCode('camName')
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
   elseif luaHelper.callBack {'remove.camera', function(camName)} then
     camName = getLuaCode('camName')
     camera.removeFromList(camName)
     cameraFlxG.removeCameraList('cameraList')
     FlxG.cameraListRemove()
   elseif luaHelper.callBack {'cameraVisible', function(cameraName)}
     cameraName = getLua('cameraName')
     cameraName.alpha = cameraName.alpha = 0
     cameraName.hide = true
     getCameraSprite.hide()
     getCameraText.hide()
   elseif luaHelper.callBack {'cameraInvisible', function(cameraName)}
     cameraName = getLuaCode('cameraName')
     cameraName.alpha = cameraName.alpha = 1
     cameraName.unhide = true
     getCameraSprite.unhide()
     getCameraText.unhide()
   end
end

function onUpdate()
   camera.Update()
end
