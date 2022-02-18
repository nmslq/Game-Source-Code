function inRoom()
set(menuRoom0)
end

function onCreate(text)
start = create.start.text(0, 0, start, 30, sans)
exit = create.exit.text(0, 0, exit, 30, sans)
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