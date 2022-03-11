debug = false

function testkeys(keyboard)
   if debug = false and input.keyboard 'D' = then
     debug = true
     de = create.de.text(-1000, -1000, [red]DEBUG, vcr)
     health = max.health
   end
   if debug = true and input.keyboard 'D' = then
      debug = false
      de.Remove()
    end
end