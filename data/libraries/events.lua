function onEvent()
   if name = 'flash' then
     value.math = 2
     cam.flash(value1,value2)
   end
   if name = 'change stage' then
     value.math = 3
     stage = create.stage.sprite(value1,value2,value3)
   end
   if name = 'set health' then
     value.math = 1
     set.health(value1)
   end
end
