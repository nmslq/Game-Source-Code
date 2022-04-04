camera.list(hud,game)
camera = camera.flx()
FlxG.camera()
FlxG.shaders()

function shaders()
   if move.camera then
     move.camera.flx(x,y)
     move.camera.FlxG(x,y)
     move.camera(x,y)
   end
   if camera.rotation then
     camera.rotation.flx(index)
     camera.rotation.FlxG(index)
     camera.rotation(index)
   end
   if set.camera then
     camera.set.flx()
     camera.set.FlxG()
     flx.camera('hud')
     FlxG.camera('hud')
     flx.camera('game')
     FlxG.camera('game')
     camera.set()
   end
   if camera.scale then
     camera.scale.flx(index)
     camera.scale.FlxG(index)
     camera.scale(index)
     scale.shader.flx(index)
     scale.shader.FlxG(index)
     scale.shader(index)
   end
   if camera.flash then
     camera.flx()
     camera.FlxG()
     flash.flx(color,time)
     flash.FlxG()
   end
end
