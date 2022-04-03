camera.list(hud,game)
camera = camera.Flx()
FlxG.camera()
FlxG.shaders()

function shaders()
   if move.camera then
     move.camera.Flx(x,y)
     move.camera.FlxG(x,y)
     move.camera(x,y)
   end
   if camera.rotation then
     camera.rotation.Flx(index)
     camera.rotation.FlxG(index)
     camera.rotation(index)
   end
   if set.camera then
     camera.set.Flx()
     camera.set.FlxG()
     Flx.camera('hud')
     FlxG.camera('hud')
     Flx.camera('game')
     FlxG.camera('game')
     camera.set()
   end
   if camera.scale then
     camera.scale.Flx(index)
     camera.scale.FlxG(index)
     scale.shader.Flx()
     scale.shader.FlxG()
   end
   if camera.flash then
     camera.Flx()
     camera.FlxG()
     flash.Flx(color,time)
     flash.FlxG()
   end
end
