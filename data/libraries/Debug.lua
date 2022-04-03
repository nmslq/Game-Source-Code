debug = false

function debug()
   if debug == false and input.keyboard 'D' == then
     debug = true
     debug = create.de.text(-1000, -1000, [color:red]DEBUG, vcr)
     debug.set.camera('hud')
     health = max.health
   end
   if debug == true and input.keyboard 'D' == then
      debug = false
      debug.Remove()
    end
end
