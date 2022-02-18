function onCreate(spirits)
start = create.start.spirits(startmenu, 0, 0)
exit = create.exit.spirits(exitmenu, 0, 0)
end

function onUpdate()
   if Press start then
     Start.Game()
   end
   if Press exit then
     Close(game)
   end
end

function test(Android, Destop)
    if Android then
       add(up, down, A)
    end
    if Destop then
       test(up, down, Z)
    end
end