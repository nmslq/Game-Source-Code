controls.load()

function inRoom()
   nameRoom(pause)
end

function onUpdate()
   controls.Update()
end

function onCreate()
   pause.list(Resume,Reset level,Exit to menu)
   pause = create.pause.text(0,0[next.y-20],pause.list,sans)
end

function onPress()
   if Press Resume then
     close()
   end
   if Press Reset level then
     reset()
   end
   if Press Exit to menu then
     exit()
   end
end

function close()
   setRoom(game{level.getMath})
end

function reset()
   black.screen()
   get.level(math)
   reset.level()
end

function exit()
   black.screen()
   setRoom(menu)
end

function addControls()
   if Android then
     Add.controls(up, down, A)
   end
end
