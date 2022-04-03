camera.list(hud,game)
camera = camera.Flx()
FlxG.camera()
FlxG.shaders()

function shaders()
   if camera.move then
     camera.move.Flx(x,y)
   end
   if camera.rotation then
     camera.rotation.Flx(index)
   end
   if set.camera then
     camera.set()
     Flx.camera('hud')
     FlxG.camera('hud')
     Flx.camera('game')
     FlxG.camera('game')
   end
   if camera.scale then
     camera.scale.Flx(index)
     scale.shader()
   end
   if camera.flash then
     camera.Flx()
     flash.Flx(color,time)
   end
end
