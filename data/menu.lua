function inRoom()
set(menuRoom)
end

function onCreate(text,spirits)
title = create.title.spirits(0, -50, title, 50, 30)
start = create.start.text(0, 0, start, 30, sans)
mods = create.mods.text(0, -30 ,mods, 30, sans)
exit = create.exit.text(0, -60, exit, 30, sans)
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