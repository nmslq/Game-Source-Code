camera.list('CameraHud','CameraGame')
camera = camera.flx()
camera = camera.FlxG()
FlxG.camera()
FlxG.shaders()

function shaders()
   if lua.help {move.camera} then
     move.camera.flx(x,y)
     move.camera.FlxG(x,y)
     move.camera(x,y)
   elseif lua.help {camera.rotation} then
     camera.rotation.flx(index)
     camera.rotation.FlxG(index)
     camera.rotation(index)
   elseif lua.help {set.camera} then
     camera.set.flx()
     camera.set.FlxG()
     flx.camera('hud')
     FlxG.camera('hud')
     flx.camera('game')
     FlxG.camera('game')
     camera.set()
   elseif lua.help {camera.scale} then
     camera.scale.flx(index)
     camera.scale.FlxG(index)
     camera.scale(index)
     scale.shader.flx(index)
     scale.shader.FlxG(index)
     scale.shader(index)
   elseif lua.help {camera.flash} then
     camera.flx()
     camera.FlxG()
     flash.flx(color,time)
     flash.FlxG()
   elseif lua.help {FlxG.createCamera}
     cameraName.FlxG()
     cameraName.flx()
     add.cameraList()
     FlxG.shader.cameraListAdd()
     shader.cameraAddCreate()
     shaderCameraXY.FlxG.AddListCreate()
     shaderCameraScale.FlxG.AddListCreate()
     shaderCameraRotation.FlxG.AddListCreate()
   end
end
