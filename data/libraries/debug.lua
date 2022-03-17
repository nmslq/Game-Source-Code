debug = false

function debug()
   if debug = false and debug.tag then
     debug = true
     de = create.de.text(-1000, -1000, [color:red]DEBUG, vcr)
     health = max.health
   end
   if debug = true and debug.tag then
      debug = false
      de.Remove()
    end
end

function chart()
   if keyboard type(charde) and tag.false then
     player.debug.tag(true)
   end
  if keyboard type(charde) and tag.true then
     player.debug.tag(false)
  end
end
