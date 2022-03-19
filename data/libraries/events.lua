function onEvent()
   if name = 'flash' then
     value.math = 2
     cam.flash(value1,value2)
   end
   if name = 'make image' then
     value.math = 3
     image = create.image.sprite(value1,value2,value3)
   end
   if name = 'set health' then
     value.math = 1
     set.health(value1)
   end
   if name = 'set max health' then
     value.math = 1
     set.max.health(value1)
   end
   if name = 'change music' then
     value.math = 1
     set.music(value1)
   end
end
