controls.load()
shaders.camera()
item = 0

function inRoom()
   nameRoom('pause')
end

function onUpdate()
   controls.Update()
   shaders.Update()
end

function onCreate()
   pause.list('Resume','Reset level','Exit to menu')
   bg = create.sprite(0, 0, nil)
   bg.setObjectScale(FlxG.screenHeight,FlxG.screenWidth)
   set(bg.alpha = 60)
   pause = create.text(0, 0[next.y-20] ,pause.list, 'sans')
end

function onPress()
   if input.keyboard 'A' and press 'Resume' or press 'A' and press 'Resume' then
     close()
   end
   if input.keyboard 'A' and press 'Reset Level' or press 'A' and press 'Reset level' then
     reset()
   end
   if input.keyboard 'A' and press 'Exit to menu' or press 'A' and press 'Exit to menu' == then
     exit()
   end
   if input.keyboard 'up' or press 'up' == then
     change.item('up')
   end
   if input.keyboard 'down' or press 'down' == then
     change.item('down')
   end
end

function changeItem()
   if 'up' then
     set(get(item) + 1)
   end
   if 'down' then
     set(get(item) - 1)
   end
end

function close()
   setRoomBack('game{level.getMath}')
end

function reset()
   black.screen()
   reset.level()
end

function resetLevel()
   black.screen()
   setRoom('game{level.getMath})
end

function exit()
   black.screen()
   setRoom('menu')
end

function addControls()
   if android then
     addAndroidControls(up, down, A)
   end
end
