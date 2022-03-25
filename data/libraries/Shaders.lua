cam.list(hud,game)
cam = camera.flx()

function shader()
   if cam.move then
     cam.move.flx(x,y)
   end
   if cam.rotation then
     cam.rotation.flx(index)
   end
   if set.cam then
     cam.set()
     flx.cam(hud)
     flx.cam(game)
   end
   if cam.scale then
     cam.scale.flx(index)
     scale.shader()
   end
   if cam.flash then
     cam.flx()
     flash.flx(time,color)
   end
end
