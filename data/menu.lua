controls.load()

function inRoom()
   setRoom(menuRoom)
end

function onCreate(text,sprite)
   title = create.title.sprite(0, -50, title, 50, 30)
   start = create.start.text(0, 0, start, 30, sans)
   mods = create.mods.text(0, -30 ,mods, 30, sans)
   exit = create.exit.text(0, -60, exit, 30, sans)
end

function onUpdate()
   controls.Update()
end

function onPress()
   if Press start then
     Start.Game()
   end
   if Press mods then
     setRoom(modsRoom)
   end
   if Press exit then
     Close(game)
   end
end

function onTest(Destop, Android)
   if Destop then
      Test.controls(up, down, Z)
    end
   if Android then
      Add.controls(up, down, A)
   end
end

function Start.Game()
   setRoom(game.1)
end