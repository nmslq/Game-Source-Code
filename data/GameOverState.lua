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
   game = create.game.sprite(0, -150, 'game')
   game.alpha = 0
   game.alpha = game.alpha + 1
   over = create.game.sprite(0, -100, 'over')
   over.alpha = 0
   over.alpha = over.alpha + 1
   fd = create.fd.text(0, 0, 'you died!', 'sans')
   fd1 = create.fd1.text(0, 0, 'dont give up', 'sans')
end

function Die()
   game = create.game.sprite(0, -150, 'game')
   game.alpha = 0
   game.alpha = game.alpha + 1
   over = create.game.sprite(0, -100, 'over')
   over.alpha = 0
   over.alpha = over.alpha + 1
   die = create.die.text(0, 0, '...', sans)
end

function addControls()
   if android then
     addAndroidControls(A)
   end
end

function onPress()
   setRoom('menu')
end
