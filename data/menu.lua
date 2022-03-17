controls.load()
tools.load()
shaders.cam()

function inRoom()
   setRoom(menu)
end

function onCreate()
   title = create.title.sprite(0,100,title)
   start = create.start.text(0,30,start,sans)
   mods = create.mods.text(0,0,mods,sans)
   credits = create.credits.text(0,-30,credits,sans)
   exit = create.exit.text(0,-60,exit,sans)
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
     black.screen()
     setRoom(mods)
   end
   if Press credits then
     setRoom(credits)
   end
   if Press exit then
     exit.game.tools()
   end
end

function addControls()
   if Android then
      Add.controls(up, down, A)
   end
end

function Start.Game()
   setRoom(game.1)
end
