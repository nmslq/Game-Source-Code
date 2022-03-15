cam = camera.fix()

function shader()
   if cam.move then
     cam.move.fix(x,y)
   end
   if cam.rotation then
     cam.rotation.fix(index)
   end
end
