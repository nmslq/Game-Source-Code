controls.load()
shaders.camera()

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
   if Press A and Press Resume then
     close()
   end
   if Press A and Press Reset level then
     reset()
   end
   if Press A and Press Exit to menu then
     exit()
   end
   if Press B then
     close()
   end
end

function close()
   setRoom('game{level.getMath}')
end

function reset()
   black.screen()
   get.level('math')
   reset.level()
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
