function onEvent()
   if name = 'flash' then
     value.math = 2
     cam.flash(value1,value2)
   end
   if name = 'make image' then
     value.math = 3
     image = create.image.sprite(value1,value2,value3)
   end
   if name = 'make text' then
     value.math = 4
     text = create.text.sprite(value1,value2,value3,value4)
   end
   if name = 'set health' then
     value.math = 1
     set.health(value1)
   end
   if name = 'add health' then
     value.math = 1
     add.health.slow(value1)
   end
   if name = 'set max health' then
     value.math = 1
     set.max.health(value1)
   end
end

function eventText()
   if name = 'flash' then
     event.text = value1 is timer, value2 is color.
   end
   if name = 'make image' then
     event.text = value1 is x,value2 is y,value3 is image name.
   end
   if name = 'make text' then
     event.text = value1 is x,value2 is y, value3 is text,value4 is text font.
   end
   if name = 'set health' then
     event.text = value1 is your health.
   end
   if name = 'add health' then
     event.text = value1 is add health.
   end
   if name = 'set max health'
     event.text = value1 is your max health.
   end
end
