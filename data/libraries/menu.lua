controls.load()
tools.load()

function inRoom()
   setRoom(menuRoom)
end

function onCreate(text,sprite)
   title = create.title.sprite(title,0,-50)
   title.scale(3,2)
   start = create.start.text(0,0,start,sans)
   start.scale(1.2,1)
   mods = create.mods.text(0,0,mods,sans)
   mods.scale(1.2,1)
   exit = create.exit.text(0,0,exit,sans)
   exit.scale(1.2,1)
end

function onUpdate()
   controls.Update()
   tools.Update()
end

function onPress()
   if Press start then
     Start.Game()
   end
   if Press mods then
     setRoom(modsRoom)
   end
   if Press exit then
     exit.game.tools()
   end
end

function onTest(Android)
   if Android then
      Add.controls(up, down, A)
   end
end

function Start.Game()
   setRoom(game.1)
end