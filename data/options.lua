function inRoom()
   nameRoom(options)
end

function onCreate()
   options.list(Controls Setting,Game Setting)
   if debug then
     options.list.add(Debug Setting)
   end
   if not debug then
     options.list.remove(Debug Setting)
   end
   
