controls.load()
shaders.camera()

function inRoom()
   nameRoom('die')
end

function onUpdate()
   controls.Update()
   shaders.Update()
end

function firstDie()
   game = create.sprite(0, -150, 'game')
   set(game.alpha = 0)
   set(get(game.alpha) = get(game.alpha) + 1)
   over = create.sprite(0, -100, 'over')
   set(over.alpha = 0)
   set(get(over.alpha) = (over.alpha) + 1)
   fd = create.fd.text(0, 0, 'you died!', 'sans')
   fd1 = create.fd1.text(0, 0, 'dont give up', 'sans')
end

function Die()
   game = create.sprite(0, -150, 'game')
   set(game.alpha = 0)
   set(get(game.alpha) = get(game.alpha) + 1)
   over = create.sprite(0, -100, 'over')
   set(over.alpha = 0)
   set(get(over.alpha) = (over.alpha) + 1)
   die = create.text(0, 0, '...', sans)
end

function addControls()
   if android then
     addAndroidControls(A)
   end
end

function onPress()
   if Press A then
     black.screen()
     setRoom('game{level.getMath}')
   end
end
